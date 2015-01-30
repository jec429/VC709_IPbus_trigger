g-2 (E989) Waveform Digitizer Master FPGA Firmware
==================================================

This repository contains the firmware for the Master FPGA on the New g-2
Experiment (E989) Waveform Digitizer (WFD). This firmware performs several
tasks:

1. Decode TTC signals coming from the AMC13 and handle triggering.
2. Keep track of fill numbers
3. Talk to all channel FPGAs over serial links. Coordinate data transfer from
these FPGAs to the AMC13. This includes multiplexing the different channels and
constructing the proper data format for the AMC13.

Versions
--------

This firmware was developed and tested with Vivado 2013.4.


Synthesizing and Implementing the Firmware
------------------------------------------

This repository is intended to be run in Vivado's non-project mode. To perform
the implementation, first edit `scripts/setup.tcl` so that the `ROOT` variable
points to the base directory of this firmware. Then change to the `scripts`
directory and run

	vivado -mode batch -source implement.tcl

This will open the Vivado GUI when finished so that the implemented design can
be inspected.

You will find several other scripts in this directory. Probably the most
important is `synthesize.tcl`, which performs only the synthesis step, then
opens the Vivado GUI. The other scripts are called by these two scripts, and are
generally well-commented.


Firmware Structure
------------------

Currently (June 2014), not all of this is implemented, and things are subject
to change. But this is my best guess at the layout of the firmware.

There are two major portions of the firmware. One half is synchonous with
data-taking, and is responsible for tasks like extracting triggers from the TTC
stream, keeping track of fill numbers, and sending fill configurations to the
channel FPGAs. The other half is asynchronous from data-taking, and is
primarily responsible for transferring data off of the channel FPGAs and
forwarding it to the AMC13.

There are also a few miscellaneous pieces of functionality that don't fit
neatly into either of these categories.

### Synchronous Portion

#### TTC Decoder

This module was written by the Boston University EDF, and serves to decode the
TTC bitstream that comes into the FPGA. It outputs triggers, trigger counter
resets, and broadcast signals. The current plan is to use the broadcast signals
to change the fill type configuration (i.e. Data, Pedestal, Laser, Cosmic, etc.).

Of note, this block runs on the 40 MHz TTC clock. To use the signals in the
rest of the design, they need to be synchronized into the clock domain used by
the rest of the design.

As of June 2014, this has not been implemented.

#### Trigger Manager

This module will monitor the output of the TTC decoder for trigger signals. It
also keeps a counter that keeps track of the current fill number. This counter
is reset by the TTC trigger counter reset signal.

When it recieves a trigger, the module will increment the fill number counter and
signal the channel FPGAs using the `acq_trig` lines. It will then wait for all
channels to indicate on the `acq_done` lines that they have completed recording
the fill. It then adds the fill number to a FIFO. This FIFO is the main means
of communicatation between the synchronous and asynchronous sides of the
firmware.

This module should also handle changes to the fill type coming over the TTC
broadcast path. It should then send this information to the channel FPGAs. My
current thinking is that this should go over the Aurora "User Flow Control"
sideband.

As of June 2014, this has not been implemented.

### Asynchronous Portion

#### Channel Serial Links

This module handles communication with the channel FPGAs. There are separate
links to each channel FPGA. These links use the Xilinx Aurora 8b/10b serial
protocol at 5 Gbps. This module allows the rest of the design to communicate
with the serial links by exposing an AXI4-Stream interface to the transmit and
receive FIFOs of each serial link.

As of June 2014, this has been implemented for a single channel.

#### AMC13 DAQ Link

This module was written by the Boston University EDF. It is used to send data
across the uTCA backplane to the AMC13 using a 5 Gbps serial link. It can also
optionally send control signals using the TTS protocol, but this functionality
is not used in g-2.

As of June 2014, this has been implemented.

#### Data Transfer Manager

This module monitors the fill number FIFO that is filled by the trigger
manager. An item in this FIFO indicates fill data on the channel FPGAs that is
waiting to be read out. When an item is present in the FIFO, this module reads
it and begins to transfer the data for that event from the channel FPGAs to the
AMC13. It first constructs the AMC13 data link header. Then, for each
channel, it sends a data read request over the serial link, then accepts the
data from the channel and forwards it to the AMC13 data link. After all five
channels have been read out, it constructs the AMC13 trailer to finish the
event fragment.

As of June 2014, development of a simple, single-channel version of this module
is in progress.


### Miscellaneous

#### Clock Chip Controller

This module sends signals to configure the clock chip that generates the clock
for the ADCS. As of June 2014, some work has been done on it, but it has not
been integrated with the rest of the firmware


#### Channel FPGA Firmware Loader

This module will load the firmware for the channel FPGAs from the flash memory
and send it over a serial bus. As of June 2014, this has not been implemented.

#### IPbus

The IPbus block is forked from the reference design found at
https://svnweb.cern.ch/trac/cactus/wiki/IPbusFirmware. The major change is to
remove the for-pay Xilinx Ethernet MAC IP and replace it with a module written by Mr.
Wu at Boston. Several slaves have also been added, and the Ethernet PHY IP has
been updated to work with Vivado.

This block fills several roles. It is primarily used for reading and writing
configuration and status registers. In debugging, it has also been useful to
create adapters between the IPbus firmware and various modules, such as the
AMC13 DAQ link and the channel serial links.

This is fully implemented. More slaves and registers can be added as needed.


