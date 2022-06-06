// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Jun  6 20:14:52 2022
// Host        : fedora running 64-bit Fedora release 36 (Thirty Six)
// Command     : write_verilog -force -mode funcsim
//               /home/christophlehr/TUWien/studium/es_fpga/VU_ES_FPGA/Zynq/vivado_workspace/Task_1/Task_1.gen/sources_1/bd/Task_1_design/ip/Task_1_design_sync_0_0/Task_1_design_sync_0_0_sim_netlist.v
// Design      : Task_1_design_sync_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Task_1_design_sync_0_0,sync,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sync,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module Task_1_design_sync_0_0
   (clk,
    res_n,
    data_in,
    data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Task_1_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input res_n;
  input data_in;
  output data_out;

  wire clk;
  wire data_in;
  wire data_out;
  wire res_n;

  Task_1_design_sync_0_0_sync inst
       (.clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .res_n(res_n));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module Task_1_design_sync_0_0_sync
   (data_out,
    res_n,
    data_in,
    clk);
  output data_out;
  input res_n;
  input data_in;
  input clk;

  wire clk;
  wire data_in;
  wire data_out;
  wire data_out_i_1_n_0;
  wire \ffs_reg_n_0_[1] ;
  wire p_0_in;
  wire [3:0]p_0_in__0;
  wire p_1_in;
  wire res_n;
  wire \sync_proc.count[3]_i_1_n_0 ;
  wire \sync_proc.count[3]_i_2_n_0 ;
  wire [3:3]\sync_proc.count_reg ;
  wire \sync_proc.count_reg_n_0_[0] ;
  wire \sync_proc.count_reg_n_0_[1] ;
  wire \sync_proc.count_reg_n_0_[2] ;

  LUT5 #(
    .INIT(32'hFDFF8000)) 
    data_out_i_1
       (.I0(res_n),
        .I1(\ffs_reg_n_0_[1] ),
        .I2(p_1_in),
        .I3(\sync_proc.count_reg ),
        .I4(data_out),
        .O(data_out_i_1_n_0));
  FDRE data_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_out_i_1_n_0),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ffs[0]_i_1 
       (.I0(res_n),
        .O(p_0_in));
  FDPE \ffs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in),
        .PRE(p_0_in),
        .Q(p_1_in));
  FDPE \ffs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .PRE(p_0_in),
        .Q(\ffs_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sync_proc.count[0]_i_1 
       (.I0(\sync_proc.count_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_proc.count[1]_i_1 
       (.I0(\sync_proc.count_reg_n_0_[0] ),
        .I1(\sync_proc.count_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sync_proc.count[2]_i_1 
       (.I0(\sync_proc.count_reg_n_0_[0] ),
        .I1(\sync_proc.count_reg_n_0_[1] ),
        .I2(\sync_proc.count_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'h28)) 
    \sync_proc.count[3]_i_1 
       (.I0(res_n),
        .I1(p_1_in),
        .I2(\ffs_reg_n_0_[1] ),
        .O(\sync_proc.count[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sync_proc.count[3]_i_2 
       (.I0(res_n),
        .I1(\sync_proc.count_reg ),
        .O(\sync_proc.count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \sync_proc.count[3]_i_3 
       (.I0(\sync_proc.count_reg_n_0_[1] ),
        .I1(\sync_proc.count_reg_n_0_[0] ),
        .I2(\sync_proc.count_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  FDRE \sync_proc.count_reg[0] 
       (.C(clk),
        .CE(\sync_proc.count[3]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\sync_proc.count_reg_n_0_[0] ),
        .R(\sync_proc.count[3]_i_1_n_0 ));
  FDRE \sync_proc.count_reg[1] 
       (.C(clk),
        .CE(\sync_proc.count[3]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\sync_proc.count_reg_n_0_[1] ),
        .R(\sync_proc.count[3]_i_1_n_0 ));
  FDRE \sync_proc.count_reg[2] 
       (.C(clk),
        .CE(\sync_proc.count[3]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\sync_proc.count_reg_n_0_[2] ),
        .R(\sync_proc.count[3]_i_1_n_0 ));
  FDRE \sync_proc.count_reg[3] 
       (.C(clk),
        .CE(\sync_proc.count[3]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\sync_proc.count_reg ),
        .R(\sync_proc.count[3]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
