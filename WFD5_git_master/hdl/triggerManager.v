
// Created by fizzim.pl version $Revision: 4.44 on 2014:07:07 at 14:03:10 (www.fizzim.com)

module triggerManager (
  output wire fifo_valid,
  output reg [23:0] fillNum,
  output wire [4:0] go,
  input wire clk,
  input wire [4:0] done,
  (* mark_debug = "true" *) input wire cm_busy,
  input wire fifo_ready,
  input wire reset,
  (* mark_debug = "true" *) input wire trigger 
);

  // state bits
  parameter 
  IDLE          = 6'b000000, // go[4:0]=00000 fifo_valid=0 
  FILL          = 6'b111110, // go[4:0]=11111 fifo_valid=0 
  STORE_FILLNUM = 6'b000001; // go[4:0]=00000 fifo_valid=1 

  (* mark_debug = "true" *) reg [5:0] state;
  (* mark_debug = "true" *) reg [5:0] nextstate;
  reg [23:0] next_fillNum;

  // comb always block
  always @* begin
    nextstate = state; // default to hold value because implied_loopback is set
    next_fillNum[23:0] = fillNum[23:0];
    case (state)
      IDLE         : begin
        if (trigger && !cm_busy) begin
          nextstate = FILL;
          next_fillNum[23:0] = fillNum[23:0]+1;
        end
      end
      FILL         : begin
        if (done[4:0]==5'b11111) begin
          nextstate = STORE_FILLNUM;
        end
      end
      STORE_FILLNUM: begin
        if (fifo_ready) begin
          nextstate = IDLE;
        end
      end
    endcase
  end

  // Assign reg'd outputs to state bits
  assign fifo_valid = state[0];
  assign go[4:0] = state[5:1];

  // sequential always block
  always @(posedge clk) begin
    if (reset) begin
      state <= IDLE;
      fillNum[23:0] <= 0;
      end
    else begin
      state <= nextstate;
      fillNum[23:0] <= next_fillNum[23:0];
      end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [103:0] statename;
  always @* begin
    case (state)
      IDLE         :
        statename = "IDLE";
      FILL         :
        statename = "FILL";
      STORE_FILLNUM:
        statename = "STORE_FILLNUM";
      default      :
        statename = "XXXXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

