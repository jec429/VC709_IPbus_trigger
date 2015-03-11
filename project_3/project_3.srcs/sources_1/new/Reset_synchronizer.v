//Two stage reset synchronizer
module Reset_synchronizer(
	//input wire clk1,
	input wire reset_in,
	input wire clk2,
	output reg reset_o
	);
    
    reg reset_i;

    always @ (posedge clk2) begin
        reset_i <= reset_in;
        reset_o <= reset_i;
    end

endmodule
