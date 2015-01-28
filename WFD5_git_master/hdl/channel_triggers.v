// Simple module to fan out a single trigger line to all five channels


module channel_triggers(
    input wire ipb_clk,
	input wire trigger_in,
	output reg[4:0] chan_trigger_out
	);

always @(posedge ipb_clk)
begin
    chan_trigger_out[0] <= trigger_in;
    chan_trigger_out[1] <= trigger_in;
    chan_trigger_out[2] <= trigger_in;
    chan_trigger_out[3] <= trigger_in;
    chan_trigger_out[4] <= trigger_in;
end

endmodule