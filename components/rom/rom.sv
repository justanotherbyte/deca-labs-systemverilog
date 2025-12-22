module rom #(
  parameter int ADDR_WIDTH = 4,
  parameter int DATA_WIDTH = 8,
  parameter logic [DATA_WIDTH-1:0] INIT_DATA [2**ADDR_WIDTH] = '{default: 0}
)(
  input logic clk,
  input logic [ADDR_WIDTH-1:0] ADDR,
  output logic [DATA_WIDTH-1:0] DOUT
);
  logic [DATA_WIDTH-1:0] storage [2**ADDR_WIDTH];

  initial begin
    storage = INIT_DATA;
  end

  always_ff @(posedge clk) begin : readout
    DOUT <= INIT_DATA[ADDR];
  end
endmodule: rom
