/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Oct 15 01:44:08 2026
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module regfile_ADDR_WIDTH4_MEM_DEPTH16_MEM_WIDTH8_test_1 ( WrEn, RdEn, CLK, 
        RST, address, WrData, REG0, REG1, REG2, REG3, RdData, RdData_valid, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [3:0] address;
  input [7:0] WrData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  output [7:0] RdData;
  input WrEn, RdEn, CLK, RST, test_si2, test_si1, test_se;
  output RdData_valid, test_so2, test_so1;
  wire   N11, N12, N13, N14, \memory[15][7] , \memory[15][6] , \memory[15][5] ,
         \memory[15][4] , \memory[15][3] , \memory[15][2] , \memory[15][1] ,
         \memory[15][0] , \memory[14][7] , \memory[14][6] , \memory[14][5] ,
         \memory[14][4] , \memory[14][3] , \memory[14][2] , \memory[14][1] ,
         \memory[14][0] , \memory[13][7] , \memory[13][6] , \memory[13][5] ,
         \memory[13][4] , \memory[13][3] , \memory[13][2] , \memory[13][1] ,
         \memory[13][0] , \memory[12][7] , \memory[12][6] , \memory[12][5] ,
         \memory[12][4] , \memory[12][3] , \memory[12][2] , \memory[12][1] ,
         \memory[12][0] , \memory[11][7] , \memory[11][6] , \memory[11][5] ,
         \memory[11][4] , \memory[11][3] , \memory[11][2] , \memory[11][1] ,
         \memory[11][0] , \memory[10][7] , \memory[10][6] , \memory[10][5] ,
         \memory[10][4] , \memory[10][3] , \memory[10][2] , \memory[10][1] ,
         \memory[10][0] , \memory[9][7] , \memory[9][6] , \memory[9][5] ,
         \memory[9][4] , \memory[9][3] , \memory[9][2] , \memory[9][1] ,
         \memory[9][0] , \memory[8][7] , \memory[8][6] , \memory[8][5] ,
         \memory[8][4] , \memory[8][3] , \memory[8][2] , \memory[8][1] ,
         \memory[8][0] , \memory[7][7] , \memory[7][6] , \memory[7][5] ,
         \memory[7][4] , \memory[7][3] , \memory[7][2] , \memory[7][1] ,
         \memory[7][0] , \memory[6][7] , \memory[6][6] , \memory[6][5] ,
         \memory[6][4] , \memory[6][3] , \memory[6][2] , \memory[6][1] ,
         \memory[6][0] , \memory[5][7] , \memory[5][6] , \memory[5][5] ,
         \memory[5][4] , \memory[5][3] , \memory[5][2] , \memory[5][1] ,
         \memory[5][0] , \memory[4][7] , \memory[4][6] , \memory[4][5] ,
         \memory[4][4] , \memory[4][3] , \memory[4][2] , \memory[4][1] ,
         \memory[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n444, n445, n446, n447;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];
  assign test_so2 = \memory[15][7] ;
  assign test_so1 = \memory[5][6] ;

  SDFFRQX2M \memory_reg[15][7]  ( .D(n312), .SI(\memory[15][6] ), .SE(n446), 
        .CK(CLK), .RN(n417), .Q(\memory[15][7] ) );
  SDFFRQX2M \memory_reg[15][6]  ( .D(n311), .SI(\memory[15][5] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\memory[15][6] ) );
  SDFFRQX2M \memory_reg[15][5]  ( .D(n310), .SI(\memory[15][4] ), .SE(n444), 
        .CK(CLK), .RN(n416), .Q(\memory[15][5] ) );
  SDFFRQX2M \memory_reg[15][4]  ( .D(n309), .SI(\memory[15][3] ), .SE(n447), 
        .CK(CLK), .RN(n416), .Q(\memory[15][4] ) );
  SDFFRQX2M \memory_reg[15][3]  ( .D(n308), .SI(\memory[15][2] ), .SE(n446), 
        .CK(CLK), .RN(n416), .Q(\memory[15][3] ) );
  SDFFRQX2M \memory_reg[15][2]  ( .D(n307), .SI(\memory[15][1] ), .SE(n445), 
        .CK(CLK), .RN(n416), .Q(\memory[15][2] ) );
  SDFFRQX2M \memory_reg[15][1]  ( .D(n306), .SI(\memory[15][0] ), .SE(n444), 
        .CK(CLK), .RN(n416), .Q(\memory[15][1] ) );
  SDFFRQX2M \memory_reg[15][0]  ( .D(n305), .SI(\memory[14][7] ), .SE(n447), 
        .CK(CLK), .RN(n416), .Q(\memory[15][0] ) );
  SDFFRQX2M \memory_reg[13][7]  ( .D(n296), .SI(\memory[13][6] ), .SE(n446), 
        .CK(CLK), .RN(n417), .Q(\memory[13][7] ) );
  SDFFRQX2M \memory_reg[13][6]  ( .D(n295), .SI(\memory[13][5] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\memory[13][6] ) );
  SDFFRQX2M \memory_reg[13][5]  ( .D(n294), .SI(\memory[13][4] ), .SE(n444), 
        .CK(CLK), .RN(n417), .Q(\memory[13][5] ) );
  SDFFRQX2M \memory_reg[13][4]  ( .D(n293), .SI(\memory[13][3] ), .SE(n447), 
        .CK(CLK), .RN(n417), .Q(\memory[13][4] ) );
  SDFFRQX2M \memory_reg[13][3]  ( .D(n292), .SI(\memory[13][2] ), .SE(n446), 
        .CK(CLK), .RN(n417), .Q(\memory[13][3] ) );
  SDFFRQX2M \memory_reg[13][2]  ( .D(n291), .SI(\memory[13][1] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\memory[13][2] ) );
  SDFFRQX2M \memory_reg[13][1]  ( .D(n290), .SI(\memory[13][0] ), .SE(n444), 
        .CK(CLK), .RN(n417), .Q(\memory[13][1] ) );
  SDFFRQX2M \memory_reg[13][0]  ( .D(n289), .SI(\memory[12][7] ), .SE(n447), 
        .CK(CLK), .RN(n417), .Q(\memory[13][0] ) );
  SDFFRQX2M \memory_reg[11][7]  ( .D(n280), .SI(\memory[11][6] ), .SE(n446), 
        .CK(CLK), .RN(n418), .Q(\memory[11][7] ) );
  SDFFRQX2M \memory_reg[11][6]  ( .D(n279), .SI(\memory[11][5] ), .SE(n445), 
        .CK(CLK), .RN(n418), .Q(\memory[11][6] ) );
  SDFFRQX2M \memory_reg[11][5]  ( .D(n278), .SI(\memory[11][4] ), .SE(n444), 
        .CK(CLK), .RN(n418), .Q(\memory[11][5] ) );
  SDFFRQX2M \memory_reg[11][4]  ( .D(n277), .SI(\memory[11][3] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\memory[11][4] ) );
  SDFFRQX2M \memory_reg[11][3]  ( .D(n276), .SI(\memory[11][2] ), .SE(n446), 
        .CK(CLK), .RN(n418), .Q(\memory[11][3] ) );
  SDFFRQX2M \memory_reg[11][2]  ( .D(n275), .SI(\memory[11][1] ), .SE(n445), 
        .CK(CLK), .RN(n418), .Q(\memory[11][2] ) );
  SDFFRQX2M \memory_reg[11][1]  ( .D(n274), .SI(\memory[11][0] ), .SE(n444), 
        .CK(CLK), .RN(n418), .Q(\memory[11][1] ) );
  SDFFRQX2M \memory_reg[11][0]  ( .D(n273), .SI(\memory[10][7] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\memory[11][0] ) );
  SDFFRQX2M \memory_reg[9][7]  ( .D(n264), .SI(\memory[9][6] ), .SE(n446), 
        .CK(CLK), .RN(n419), .Q(\memory[9][7] ) );
  SDFFRQX2M \memory_reg[9][6]  ( .D(n263), .SI(\memory[9][5] ), .SE(n445), 
        .CK(CLK), .RN(n419), .Q(\memory[9][6] ) );
  SDFFRQX2M \memory_reg[9][5]  ( .D(n262), .SI(\memory[9][4] ), .SE(n444), 
        .CK(CLK), .RN(n419), .Q(\memory[9][5] ) );
  SDFFRQX2M \memory_reg[9][4]  ( .D(n261), .SI(\memory[9][3] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\memory[9][4] ) );
  SDFFRQX2M \memory_reg[9][3]  ( .D(n260), .SI(\memory[9][2] ), .SE(n446), 
        .CK(CLK), .RN(n419), .Q(\memory[9][3] ) );
  SDFFRQX2M \memory_reg[9][2]  ( .D(n259), .SI(\memory[9][1] ), .SE(n445), 
        .CK(CLK), .RN(n419), .Q(\memory[9][2] ) );
  SDFFRQX2M \memory_reg[9][1]  ( .D(n258), .SI(\memory[9][0] ), .SE(n444), 
        .CK(CLK), .RN(n421), .Q(\memory[9][1] ) );
  SDFFRQX2M \memory_reg[9][0]  ( .D(n257), .SI(\memory[8][7] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\memory[9][0] ) );
  SDFFRQX2M \memory_reg[7][7]  ( .D(n248), .SI(\memory[7][6] ), .SE(n446), 
        .CK(CLK), .RN(n420), .Q(\memory[7][7] ) );
  SDFFRQX2M \memory_reg[7][6]  ( .D(n247), .SI(\memory[7][5] ), .SE(n445), 
        .CK(CLK), .RN(n420), .Q(\memory[7][6] ) );
  SDFFRQX2M \memory_reg[7][5]  ( .D(n246), .SI(\memory[7][4] ), .SE(n444), 
        .CK(CLK), .RN(n420), .Q(\memory[7][5] ) );
  SDFFRQX2M \memory_reg[7][4]  ( .D(n245), .SI(\memory[7][3] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\memory[7][4] ) );
  SDFFRQX2M \memory_reg[7][3]  ( .D(n244), .SI(\memory[7][2] ), .SE(n446), 
        .CK(CLK), .RN(n422), .Q(\memory[7][3] ) );
  SDFFRQX2M \memory_reg[7][2]  ( .D(n243), .SI(\memory[7][1] ), .SE(n445), 
        .CK(CLK), .RN(n422), .Q(\memory[7][2] ) );
  SDFFRQX2M \memory_reg[7][1]  ( .D(n242), .SI(\memory[7][0] ), .SE(n444), 
        .CK(CLK), .RN(n421), .Q(\memory[7][1] ) );
  SDFFRQX2M \memory_reg[7][0]  ( .D(n241), .SI(\memory[6][7] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\memory[7][0] ) );
  SDFFRQX2M \memory_reg[5][7]  ( .D(n232), .SI(test_si2), .SE(n446), .CK(CLK), 
        .RN(n421), .Q(\memory[5][7] ) );
  SDFFRQX2M \memory_reg[5][6]  ( .D(n231), .SI(\memory[5][5] ), .SE(n445), 
        .CK(CLK), .RN(n423), .Q(\memory[5][6] ) );
  SDFFRQX2M \memory_reg[5][5]  ( .D(n230), .SI(\memory[5][4] ), .SE(n444), 
        .CK(CLK), .RN(n423), .Q(\memory[5][5] ) );
  SDFFRQX2M \memory_reg[5][4]  ( .D(n229), .SI(\memory[5][3] ), .SE(n447), 
        .CK(CLK), .RN(n423), .Q(\memory[5][4] ) );
  SDFFRQX2M \memory_reg[5][3]  ( .D(n228), .SI(\memory[5][2] ), .SE(n446), 
        .CK(CLK), .RN(n422), .Q(\memory[5][3] ) );
  SDFFRQX2M \memory_reg[5][2]  ( .D(n227), .SI(\memory[5][1] ), .SE(n445), 
        .CK(CLK), .RN(n422), .Q(\memory[5][2] ) );
  SDFFRQX2M \memory_reg[5][1]  ( .D(n226), .SI(\memory[5][0] ), .SE(n444), 
        .CK(CLK), .RN(n422), .Q(\memory[5][1] ) );
  SDFFRQX2M \memory_reg[5][0]  ( .D(n225), .SI(\memory[4][7] ), .SE(n447), 
        .CK(CLK), .RN(n422), .Q(\memory[5][0] ) );
  SDFFRQX2M \memory_reg[14][7]  ( .D(n304), .SI(\memory[14][6] ), .SE(n446), 
        .CK(CLK), .RN(n416), .Q(\memory[14][7] ) );
  SDFFRQX2M \memory_reg[14][6]  ( .D(n303), .SI(\memory[14][5] ), .SE(n445), 
        .CK(CLK), .RN(n416), .Q(\memory[14][6] ) );
  SDFFRQX2M \memory_reg[14][5]  ( .D(n302), .SI(\memory[14][4] ), .SE(n444), 
        .CK(CLK), .RN(n416), .Q(\memory[14][5] ) );
  SDFFRQX2M \memory_reg[14][4]  ( .D(n301), .SI(\memory[14][3] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\memory[14][4] ) );
  SDFFRQX2M \memory_reg[14][3]  ( .D(n300), .SI(\memory[14][2] ), .SE(n446), 
        .CK(CLK), .RN(n418), .Q(\memory[14][3] ) );
  SDFFRQX2M \memory_reg[14][2]  ( .D(n299), .SI(\memory[14][1] ), .SE(n445), 
        .CK(CLK), .RN(n418), .Q(\memory[14][2] ) );
  SDFFRQX2M \memory_reg[14][1]  ( .D(n298), .SI(\memory[14][0] ), .SE(n444), 
        .CK(CLK), .RN(n417), .Q(\memory[14][1] ) );
  SDFFRQX2M \memory_reg[14][0]  ( .D(n297), .SI(\memory[13][7] ), .SE(n447), 
        .CK(CLK), .RN(n417), .Q(\memory[14][0] ) );
  SDFFRQX2M \memory_reg[12][7]  ( .D(n288), .SI(\memory[12][6] ), .SE(n446), 
        .CK(CLK), .RN(n417), .Q(\memory[12][7] ) );
  SDFFRQX2M \memory_reg[12][6]  ( .D(n287), .SI(\memory[12][5] ), .SE(n445), 
        .CK(CLK), .RN(n417), .Q(\memory[12][6] ) );
  SDFFRQX2M \memory_reg[12][5]  ( .D(n286), .SI(\memory[12][4] ), .SE(n444), 
        .CK(CLK), .RN(n419), .Q(\memory[12][5] ) );
  SDFFRQX2M \memory_reg[12][4]  ( .D(n285), .SI(\memory[12][3] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\memory[12][4] ) );
  SDFFRQX2M \memory_reg[12][3]  ( .D(n284), .SI(\memory[12][2] ), .SE(n446), 
        .CK(CLK), .RN(n418), .Q(\memory[12][3] ) );
  SDFFRQX2M \memory_reg[12][2]  ( .D(n283), .SI(\memory[12][1] ), .SE(n445), 
        .CK(CLK), .RN(n418), .Q(\memory[12][2] ) );
  SDFFRQX2M \memory_reg[12][1]  ( .D(n282), .SI(\memory[12][0] ), .SE(n444), 
        .CK(CLK), .RN(n418), .Q(\memory[12][1] ) );
  SDFFRQX2M \memory_reg[12][0]  ( .D(n281), .SI(\memory[11][7] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\memory[12][0] ) );
  SDFFRQX2M \memory_reg[10][7]  ( .D(n272), .SI(\memory[10][6] ), .SE(n446), 
        .CK(CLK), .RN(n420), .Q(\memory[10][7] ) );
  SDFFRQX2M \memory_reg[10][6]  ( .D(n271), .SI(\memory[10][5] ), .SE(n445), 
        .CK(CLK), .RN(n420), .Q(\memory[10][6] ) );
  SDFFRQX2M \memory_reg[10][5]  ( .D(n270), .SI(\memory[10][4] ), .SE(n444), 
        .CK(CLK), .RN(n419), .Q(\memory[10][5] ) );
  SDFFRQX2M \memory_reg[10][4]  ( .D(n269), .SI(\memory[10][3] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\memory[10][4] ) );
  SDFFRQX2M \memory_reg[10][3]  ( .D(n268), .SI(\memory[10][2] ), .SE(n446), 
        .CK(CLK), .RN(n419), .Q(\memory[10][3] ) );
  SDFFRQX2M \memory_reg[10][2]  ( .D(n267), .SI(\memory[10][1] ), .SE(n445), 
        .CK(CLK), .RN(n419), .Q(\memory[10][2] ) );
  SDFFRQX2M \memory_reg[10][1]  ( .D(n266), .SI(\memory[10][0] ), .SE(n444), 
        .CK(CLK), .RN(n419), .Q(\memory[10][1] ) );
  SDFFRQX2M \memory_reg[10][0]  ( .D(n265), .SI(\memory[9][7] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\memory[10][0] ) );
  SDFFRQX2M \memory_reg[8][7]  ( .D(n256), .SI(\memory[8][6] ), .SE(n446), 
        .CK(CLK), .RN(n420), .Q(\memory[8][7] ) );
  SDFFRQX2M \memory_reg[8][6]  ( .D(n255), .SI(\memory[8][5] ), .SE(n445), 
        .CK(CLK), .RN(n420), .Q(\memory[8][6] ) );
  SDFFRQX2M \memory_reg[8][5]  ( .D(n254), .SI(\memory[8][4] ), .SE(n444), 
        .CK(CLK), .RN(n420), .Q(\memory[8][5] ) );
  SDFFRQX2M \memory_reg[8][4]  ( .D(n253), .SI(\memory[8][3] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\memory[8][4] ) );
  SDFFRQX2M \memory_reg[8][3]  ( .D(n252), .SI(\memory[8][2] ), .SE(n446), 
        .CK(CLK), .RN(n420), .Q(\memory[8][3] ) );
  SDFFRQX2M \memory_reg[8][2]  ( .D(n251), .SI(\memory[8][1] ), .SE(n445), 
        .CK(CLK), .RN(n420), .Q(\memory[8][2] ) );
  SDFFRQX2M \memory_reg[8][1]  ( .D(n250), .SI(\memory[8][0] ), .SE(n444), 
        .CK(CLK), .RN(n420), .Q(\memory[8][1] ) );
  SDFFRQX2M \memory_reg[8][0]  ( .D(n249), .SI(\memory[7][7] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\memory[8][0] ) );
  SDFFRQX2M \memory_reg[6][7]  ( .D(n240), .SI(\memory[6][6] ), .SE(n446), 
        .CK(CLK), .RN(n421), .Q(\memory[6][7] ) );
  SDFFRQX2M \memory_reg[6][6]  ( .D(n239), .SI(\memory[6][5] ), .SE(n445), 
        .CK(CLK), .RN(n421), .Q(\memory[6][6] ) );
  SDFFRQX2M \memory_reg[6][5]  ( .D(n238), .SI(\memory[6][4] ), .SE(n444), 
        .CK(CLK), .RN(n421), .Q(\memory[6][5] ) );
  SDFFRQX2M \memory_reg[6][4]  ( .D(n237), .SI(\memory[6][3] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\memory[6][4] ) );
  SDFFRQX2M \memory_reg[6][3]  ( .D(n236), .SI(\memory[6][2] ), .SE(n446), 
        .CK(CLK), .RN(n421), .Q(\memory[6][3] ) );
  SDFFRQX2M \memory_reg[6][2]  ( .D(n235), .SI(\memory[6][1] ), .SE(n445), 
        .CK(CLK), .RN(n421), .Q(\memory[6][2] ) );
  SDFFRQX2M \memory_reg[6][1]  ( .D(n234), .SI(\memory[6][0] ), .SE(n444), 
        .CK(CLK), .RN(n421), .Q(\memory[6][1] ) );
  SDFFRQX2M \memory_reg[6][0]  ( .D(n233), .SI(\memory[5][7] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\memory[6][0] ) );
  SDFFRQX2M \memory_reg[4][7]  ( .D(n224), .SI(\memory[4][6] ), .SE(n446), 
        .CK(CLK), .RN(n422), .Q(\memory[4][7] ) );
  SDFFRQX2M \memory_reg[4][6]  ( .D(n223), .SI(\memory[4][5] ), .SE(n445), 
        .CK(CLK), .RN(n422), .Q(\memory[4][6] ) );
  SDFFRQX2M \memory_reg[4][5]  ( .D(n222), .SI(\memory[4][4] ), .SE(n444), 
        .CK(CLK), .RN(n422), .Q(\memory[4][5] ) );
  SDFFRQX2M \memory_reg[4][4]  ( .D(n221), .SI(\memory[4][3] ), .SE(n447), 
        .CK(CLK), .RN(n422), .Q(\memory[4][4] ) );
  SDFFRQX2M \memory_reg[4][3]  ( .D(n220), .SI(\memory[4][2] ), .SE(n446), 
        .CK(CLK), .RN(n422), .Q(\memory[4][3] ) );
  SDFFRQX2M \memory_reg[4][2]  ( .D(n219), .SI(\memory[4][1] ), .SE(n445), 
        .CK(CLK), .RN(n422), .Q(\memory[4][2] ) );
  SDFFRQX2M \memory_reg[4][1]  ( .D(n218), .SI(\memory[4][0] ), .SE(n444), 
        .CK(CLK), .RN(n422), .Q(\memory[4][1] ) );
  SDFFRQX2M \memory_reg[4][0]  ( .D(n217), .SI(REG3[7]), .SE(n447), .CK(CLK), 
        .RN(n424), .Q(\memory[4][0] ) );
  SDFFRQX2M \memory_reg[3][0]  ( .D(n209), .SI(REG2[7]), .SE(n446), .CK(CLK), 
        .RN(n423), .Q(REG3[0]) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(n445), .CK(CLK), 
        .RN(n423), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(n444), .CK(CLK), 
        .RN(n425), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(n447), .CK(CLK), 
        .RN(n425), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(n446), .CK(CLK), 
        .RN(n425), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(n445), .CK(CLK), 
        .RN(n425), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(n444), .CK(CLK), 
        .RN(n425), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(n447), .CK(CLK), 
        .RN(n425), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(test_si1), .SE(n446), .CK(CLK), 
        .RN(n422), .Q(RdData[0]) );
  SDFFRQX2M \memory_reg[2][1]  ( .D(n202), .SI(REG2[0]), .SE(n445), .CK(CLK), 
        .RN(n423), .Q(REG2[1]) );
  SDFFRQX2M \memory_reg[1][6]  ( .D(n199), .SI(REG1[5]), .SE(n444), .CK(CLK), 
        .RN(n424), .Q(REG1[6]) );
  SDFFRQX2M \memory_reg[0][7]  ( .D(n192), .SI(REG0[6]), .SE(n447), .CK(CLK), 
        .RN(n424), .Q(REG0[7]) );
  SDFFRQX2M \memory_reg[0][6]  ( .D(n191), .SI(REG0[5]), .SE(n446), .CK(CLK), 
        .RN(n424), .Q(REG0[6]) );
  SDFFRQX2M \memory_reg[0][5]  ( .D(n190), .SI(REG0[4]), .SE(n445), .CK(CLK), 
        .RN(n424), .Q(REG0[5]) );
  SDFFRQX2M \memory_reg[0][4]  ( .D(n189), .SI(REG0[3]), .SE(n444), .CK(CLK), 
        .RN(n424), .Q(REG0[4]) );
  SDFFRQX2M \memory_reg[0][3]  ( .D(n188), .SI(REG0[2]), .SE(n447), .CK(CLK), 
        .RN(n424), .Q(REG0[3]) );
  SDFFRQX2M \memory_reg[0][2]  ( .D(n187), .SI(REG0[1]), .SE(n446), .CK(CLK), 
        .RN(n425), .Q(REG0[2]) );
  SDFFRQX2M \memory_reg[0][1]  ( .D(n186), .SI(REG0[0]), .SE(n445), .CK(CLK), 
        .RN(n416), .Q(REG0[1]) );
  SDFFRQX2M \memory_reg[0][0]  ( .D(n185), .SI(RdData_valid), .SE(n444), .CK(
        CLK), .RN(n425), .Q(REG0[0]) );
  SDFFSQX2M \memory_reg[2][0]  ( .D(n201), .SI(REG1[7]), .SE(test_se), .CK(CLK), .SN(n416), .Q(REG2[0]) );
  SDFFRQX2M \memory_reg[1][1]  ( .D(n194), .SI(REG1[0]), .SE(n447), .CK(CLK), 
        .RN(n424), .Q(REG1[1]) );
  SDFFRQX2M \memory_reg[1][5]  ( .D(n198), .SI(REG1[4]), .SE(n446), .CK(CLK), 
        .RN(n425), .Q(REG1[5]) );
  SDFFRQX2M \memory_reg[1][4]  ( .D(n197), .SI(REG1[3]), .SE(n445), .CK(CLK), 
        .RN(n424), .Q(REG1[4]) );
  SDFFRQX2M \memory_reg[1][7]  ( .D(n200), .SI(REG1[6]), .SE(n444), .CK(CLK), 
        .RN(n425), .Q(REG1[7]) );
  SDFFRQX2M \memory_reg[1][3]  ( .D(n196), .SI(REG1[2]), .SE(n447), .CK(CLK), 
        .RN(n424), .Q(REG1[3]) );
  SDFFRQX2M \memory_reg[1][2]  ( .D(n195), .SI(REG1[1]), .SE(n446), .CK(CLK), 
        .RN(n424), .Q(REG1[2]) );
  SDFFRQX2M \memory_reg[1][0]  ( .D(n193), .SI(REG0[7]), .SE(n445), .CK(CLK), 
        .RN(n424), .Q(REG1[0]) );
  SDFFRQX2M \memory_reg[3][6]  ( .D(n215), .SI(REG3[5]), .SE(n444), .CK(CLK), 
        .RN(n424), .Q(REG3[6]) );
  SDFFRQX2M \memory_reg[3][7]  ( .D(n216), .SI(REG3[6]), .SE(n447), .CK(CLK), 
        .RN(n424), .Q(REG3[7]) );
  SDFFSQX2M \memory_reg[3][5]  ( .D(n214), .SI(REG3[4]), .SE(n444), .CK(CLK), 
        .SN(n416), .Q(REG3[5]) );
  SDFFRQX2M RdData_valid_reg ( .D(n313), .SI(RdData[7]), .SE(n446), .CK(CLK), 
        .RN(n425), .Q(RdData_valid) );
  SDFFRQX2M \memory_reg[3][4]  ( .D(n213), .SI(REG3[3]), .SE(n445), .CK(CLK), 
        .RN(n423), .Q(REG3[4]) );
  SDFFRQX2M \memory_reg[3][2]  ( .D(n211), .SI(REG3[1]), .SE(n444), .CK(CLK), 
        .RN(n423), .Q(REG3[2]) );
  SDFFRQX2M \memory_reg[3][3]  ( .D(n212), .SI(REG3[2]), .SE(n447), .CK(CLK), 
        .RN(n423), .Q(REG3[3]) );
  SDFFRQX2M \memory_reg[3][1]  ( .D(n210), .SI(REG3[0]), .SE(n446), .CK(CLK), 
        .RN(n423), .Q(REG3[1]) );
  SDFFRQX2M \memory_reg[2][2]  ( .D(n203), .SI(REG2[1]), .SE(n445), .CK(CLK), 
        .RN(n425), .Q(REG2[2]) );
  SDFFRQX2M \memory_reg[2][4]  ( .D(n205), .SI(REG2[3]), .SE(n444), .CK(CLK), 
        .RN(n423), .Q(REG2[4]) );
  SDFFRQX2M \memory_reg[2][3]  ( .D(n204), .SI(REG2[2]), .SE(n447), .CK(CLK), 
        .RN(n423), .Q(REG2[3]) );
  SDFFSQX2M \memory_reg[2][7]  ( .D(n208), .SI(REG2[6]), .SE(n447), .CK(CLK), 
        .SN(n416), .Q(REG2[7]) );
  SDFFRQX2M \memory_reg[2][6]  ( .D(n207), .SI(REG2[5]), .SE(n446), .CK(CLK), 
        .RN(n423), .Q(REG2[6]) );
  SDFFRQX2M \memory_reg[2][5]  ( .D(n206), .SI(REG2[4]), .SE(n445), .CK(CLK), 
        .RN(n423), .Q(REG2[5]) );
  NOR2BX2M U140 ( .AN(n175), .B(N11), .Y(n167) );
  NOR2BX2M U141 ( .AN(N13), .B(N12), .Y(n159) );
  NOR2BX2M U142 ( .AN(N13), .B(n409), .Y(n162) );
  NOR2BX2M U143 ( .AN(n163), .B(N11), .Y(n152) );
  NOR2X2M U144 ( .A(n409), .B(N13), .Y(n156) );
  NOR2X2M U145 ( .A(N12), .B(N13), .Y(n151) );
  INVX2M U146 ( .A(WrData[5]), .Y(n438) );
  INVX2M U147 ( .A(WrData[6]), .Y(n437) );
  INVX2M U148 ( .A(n411), .Y(n412) );
  INVX2M U149 ( .A(n413), .Y(n414) );
  INVX2M U150 ( .A(n138), .Y(n410) );
  OR2X2M U151 ( .A(n409), .B(n440), .Y(n138) );
  BUFX2M U152 ( .A(n140), .Y(n411) );
  BUFX2M U153 ( .A(n139), .Y(n413) );
  INVX2M U154 ( .A(n141), .Y(n415) );
  NOR2BX2M U155 ( .AN(n163), .B(n440), .Y(n154) );
  NOR2BX2M U156 ( .AN(n175), .B(n440), .Y(n169) );
  NAND2X2M U157 ( .A(n156), .B(n152), .Y(n155) );
  NAND2X2M U158 ( .A(n159), .B(n152), .Y(n158) );
  NAND2X2M U159 ( .A(n162), .B(n152), .Y(n161) );
  NAND2X2M U160 ( .A(n154), .B(n151), .Y(n153) );
  NAND2X2M U161 ( .A(n156), .B(n154), .Y(n157) );
  NAND2X2M U162 ( .A(n159), .B(n154), .Y(n160) );
  NAND2X2M U163 ( .A(n162), .B(n154), .Y(n164) );
  NAND2X2M U164 ( .A(n167), .B(n151), .Y(n166) );
  NAND2X2M U165 ( .A(n169), .B(n151), .Y(n168) );
  NAND2X2M U166 ( .A(n167), .B(n156), .Y(n170) );
  NAND2X2M U167 ( .A(n169), .B(n156), .Y(n171) );
  NAND2X2M U168 ( .A(n167), .B(n159), .Y(n172) );
  NAND2X2M U169 ( .A(n169), .B(n159), .Y(n173) );
  NAND2X2M U170 ( .A(n167), .B(n162), .Y(n174) );
  NAND2X2M U171 ( .A(n169), .B(n162), .Y(n176) );
  NAND2X2M U172 ( .A(n151), .B(n152), .Y(n150) );
  INVX2M U173 ( .A(n149), .Y(n431) );
  OR2X2M U174 ( .A(n440), .B(N12), .Y(n139) );
  OR2X2M U175 ( .A(n409), .B(N11), .Y(n140) );
  OR2X2M U176 ( .A(N11), .B(N12), .Y(n141) );
  INVX2M U177 ( .A(N12), .Y(n409) );
  INVX2M U178 ( .A(N11), .Y(n440) );
  NOR2BX2M U179 ( .AN(n165), .B(N14), .Y(n163) );
  INVX2M U180 ( .A(N13), .Y(n408) );
  INVX2M U181 ( .A(N14), .Y(n407) );
  AND2X2M U182 ( .A(N14), .B(n165), .Y(n175) );
  NAND2BX2M U183 ( .AN(WrEn), .B(RdEn), .Y(n149) );
  NOR2BX2M U184 ( .AN(WrEn), .B(RdEn), .Y(n165) );
  BUFX2M U185 ( .A(n426), .Y(n424) );
  BUFX2M U186 ( .A(n427), .Y(n423) );
  BUFX2M U187 ( .A(n427), .Y(n422) );
  BUFX2M U188 ( .A(n428), .Y(n420) );
  BUFX2M U189 ( .A(n429), .Y(n419) );
  BUFX2M U190 ( .A(n429), .Y(n418) );
  BUFX2M U191 ( .A(n428), .Y(n421) );
  BUFX2M U192 ( .A(n430), .Y(n417) );
  BUFX2M U193 ( .A(n430), .Y(n416) );
  BUFX2M U194 ( .A(n426), .Y(n425) );
  INVX2M U195 ( .A(WrData[0]), .Y(n436) );
  INVX2M U196 ( .A(WrData[1]), .Y(n435) );
  INVX2M U197 ( .A(WrData[2]), .Y(n434) );
  INVX2M U198 ( .A(WrData[4]), .Y(n433) );
  INVX2M U199 ( .A(WrData[7]), .Y(n432) );
  INVX2M U200 ( .A(WrData[3]), .Y(n439) );
  BUFX2M U201 ( .A(RST), .Y(n427) );
  BUFX2M U202 ( .A(RST), .Y(n429) );
  BUFX2M U203 ( .A(RST), .Y(n428) );
  BUFX2M U204 ( .A(RST), .Y(n430) );
  BUFX2M U205 ( .A(RST), .Y(n426) );
  AO22X1M U206 ( .A0(N43), .A1(n431), .B0(RdData[0]), .B1(n149), .Y(n177) );
  AO22X1M U207 ( .A0(N42), .A1(n431), .B0(RdData[1]), .B1(n149), .Y(n178) );
  AO22X1M U208 ( .A0(N41), .A1(n431), .B0(RdData[2]), .B1(n149), .Y(n179) );
  AO22X1M U209 ( .A0(N40), .A1(n431), .B0(RdData[3]), .B1(n149), .Y(n180) );
  AO22X1M U210 ( .A0(N39), .A1(n431), .B0(RdData[4]), .B1(n149), .Y(n181) );
  AO22X1M U211 ( .A0(N38), .A1(n431), .B0(RdData[5]), .B1(n149), .Y(n182) );
  AO22X1M U212 ( .A0(N37), .A1(n431), .B0(RdData[6]), .B1(n149), .Y(n183) );
  AO22X1M U213 ( .A0(N36), .A1(n431), .B0(RdData[7]), .B1(n149), .Y(n184) );
  OAI2BB2X1M U214 ( .B0(n436), .B1(n166), .A0N(\memory[8][0] ), .A1N(n166), 
        .Y(n249) );
  OAI2BB2X1M U215 ( .B0(n435), .B1(n166), .A0N(\memory[8][1] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U216 ( .B0(n434), .B1(n166), .A0N(\memory[8][2] ), .A1N(n166), 
        .Y(n251) );
  OAI2BB2X1M U217 ( .B0(n439), .B1(n166), .A0N(\memory[8][3] ), .A1N(n166), 
        .Y(n252) );
  OAI2BB2X1M U218 ( .B0(n433), .B1(n166), .A0N(\memory[8][4] ), .A1N(n166), 
        .Y(n253) );
  OAI2BB2X1M U219 ( .B0(n438), .B1(n166), .A0N(\memory[8][5] ), .A1N(n166), 
        .Y(n254) );
  OAI2BB2X1M U220 ( .B0(n437), .B1(n166), .A0N(\memory[8][6] ), .A1N(n166), 
        .Y(n255) );
  OAI2BB2X1M U221 ( .B0(n432), .B1(n166), .A0N(\memory[8][7] ), .A1N(n166), 
        .Y(n256) );
  OAI2BB2X1M U222 ( .B0(n436), .B1(n170), .A0N(\memory[10][0] ), .A1N(n170), 
        .Y(n265) );
  OAI2BB2X1M U223 ( .B0(n435), .B1(n170), .A0N(\memory[10][1] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U224 ( .B0(n434), .B1(n170), .A0N(\memory[10][2] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U225 ( .B0(n439), .B1(n170), .A0N(\memory[10][3] ), .A1N(n170), 
        .Y(n268) );
  OAI2BB2X1M U226 ( .B0(n433), .B1(n170), .A0N(\memory[10][4] ), .A1N(n170), 
        .Y(n269) );
  OAI2BB2X1M U227 ( .B0(n438), .B1(n170), .A0N(\memory[10][5] ), .A1N(n170), 
        .Y(n270) );
  OAI2BB2X1M U228 ( .B0(n437), .B1(n170), .A0N(\memory[10][6] ), .A1N(n170), 
        .Y(n271) );
  OAI2BB2X1M U229 ( .B0(n432), .B1(n170), .A0N(\memory[10][7] ), .A1N(n170), 
        .Y(n272) );
  OAI2BB2X1M U230 ( .B0(n436), .B1(n172), .A0N(\memory[12][0] ), .A1N(n172), 
        .Y(n281) );
  OAI2BB2X1M U231 ( .B0(n435), .B1(n172), .A0N(\memory[12][1] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U232 ( .B0(n434), .B1(n172), .A0N(\memory[12][2] ), .A1N(n172), 
        .Y(n283) );
  OAI2BB2X1M U233 ( .B0(n439), .B1(n172), .A0N(\memory[12][3] ), .A1N(n172), 
        .Y(n284) );
  OAI2BB2X1M U234 ( .B0(n433), .B1(n172), .A0N(\memory[12][4] ), .A1N(n172), 
        .Y(n285) );
  OAI2BB2X1M U235 ( .B0(n438), .B1(n172), .A0N(\memory[12][5] ), .A1N(n172), 
        .Y(n286) );
  OAI2BB2X1M U236 ( .B0(n437), .B1(n172), .A0N(\memory[12][6] ), .A1N(n172), 
        .Y(n287) );
  OAI2BB2X1M U237 ( .B0(n432), .B1(n172), .A0N(\memory[12][7] ), .A1N(n172), 
        .Y(n288) );
  OAI2BB2X1M U238 ( .B0(n436), .B1(n174), .A0N(\memory[14][0] ), .A1N(n174), 
        .Y(n297) );
  OAI2BB2X1M U239 ( .B0(n435), .B1(n174), .A0N(\memory[14][1] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U240 ( .B0(n434), .B1(n174), .A0N(\memory[14][2] ), .A1N(n174), 
        .Y(n299) );
  OAI2BB2X1M U241 ( .B0(n439), .B1(n174), .A0N(\memory[14][3] ), .A1N(n174), 
        .Y(n300) );
  OAI2BB2X1M U242 ( .B0(n433), .B1(n174), .A0N(\memory[14][4] ), .A1N(n174), 
        .Y(n301) );
  OAI2BB2X1M U243 ( .B0(n438), .B1(n174), .A0N(\memory[14][5] ), .A1N(n174), 
        .Y(n302) );
  OAI2BB2X1M U244 ( .B0(n437), .B1(n174), .A0N(\memory[14][6] ), .A1N(n174), 
        .Y(n303) );
  OAI2BB2X1M U245 ( .B0(n432), .B1(n174), .A0N(\memory[14][7] ), .A1N(n174), 
        .Y(n304) );
  OAI2BB2X1M U246 ( .B0(n150), .B1(n436), .A0N(REG0[0]), .A1N(n150), .Y(n185)
         );
  OAI2BB2X1M U247 ( .B0(n150), .B1(n435), .A0N(REG0[1]), .A1N(n150), .Y(n186)
         );
  OAI2BB2X1M U248 ( .B0(n150), .B1(n434), .A0N(REG0[2]), .A1N(n150), .Y(n187)
         );
  OAI2BB2X1M U249 ( .B0(n150), .B1(n439), .A0N(REG0[3]), .A1N(n150), .Y(n188)
         );
  OAI2BB2X1M U250 ( .B0(n150), .B1(n433), .A0N(REG0[4]), .A1N(n150), .Y(n189)
         );
  OAI2BB2X1M U251 ( .B0(n150), .B1(n438), .A0N(REG0[5]), .A1N(n150), .Y(n190)
         );
  OAI2BB2X1M U252 ( .B0(n150), .B1(n437), .A0N(REG0[6]), .A1N(n150), .Y(n191)
         );
  OAI2BB2X1M U253 ( .B0(n150), .B1(n432), .A0N(REG0[7]), .A1N(n150), .Y(n192)
         );
  OAI2BB2X1M U254 ( .B0(n436), .B1(n153), .A0N(REG1[0]), .A1N(n153), .Y(n193)
         );
  OAI2BB2X1M U255 ( .B0(n435), .B1(n153), .A0N(REG1[1]), .A1N(n153), .Y(n194)
         );
  OAI2BB2X1M U256 ( .B0(n434), .B1(n153), .A0N(REG1[2]), .A1N(n153), .Y(n195)
         );
  OAI2BB2X1M U257 ( .B0(n439), .B1(n153), .A0N(REG1[3]), .A1N(n153), .Y(n196)
         );
  OAI2BB2X1M U258 ( .B0(n433), .B1(n153), .A0N(REG1[4]), .A1N(n153), .Y(n197)
         );
  OAI2BB2X1M U259 ( .B0(n438), .B1(n153), .A0N(REG1[5]), .A1N(n153), .Y(n198)
         );
  OAI2BB2X1M U260 ( .B0(n437), .B1(n153), .A0N(REG1[6]), .A1N(n153), .Y(n199)
         );
  OAI2BB2X1M U261 ( .B0(n432), .B1(n153), .A0N(REG1[7]), .A1N(n153), .Y(n200)
         );
  OAI2BB2X1M U262 ( .B0(n436), .B1(n158), .A0N(\memory[4][0] ), .A1N(n158), 
        .Y(n217) );
  OAI2BB2X1M U263 ( .B0(n435), .B1(n158), .A0N(\memory[4][1] ), .A1N(n158), 
        .Y(n218) );
  OAI2BB2X1M U264 ( .B0(n434), .B1(n158), .A0N(\memory[4][2] ), .A1N(n158), 
        .Y(n219) );
  OAI2BB2X1M U265 ( .B0(n439), .B1(n158), .A0N(\memory[4][3] ), .A1N(n158), 
        .Y(n220) );
  OAI2BB2X1M U266 ( .B0(n433), .B1(n158), .A0N(\memory[4][4] ), .A1N(n158), 
        .Y(n221) );
  OAI2BB2X1M U267 ( .B0(n438), .B1(n158), .A0N(\memory[4][5] ), .A1N(n158), 
        .Y(n222) );
  OAI2BB2X1M U268 ( .B0(n437), .B1(n158), .A0N(\memory[4][6] ), .A1N(n158), 
        .Y(n223) );
  OAI2BB2X1M U269 ( .B0(n432), .B1(n158), .A0N(\memory[4][7] ), .A1N(n158), 
        .Y(n224) );
  OAI2BB2X1M U270 ( .B0(n436), .B1(n160), .A0N(\memory[5][0] ), .A1N(n160), 
        .Y(n225) );
  OAI2BB2X1M U271 ( .B0(n435), .B1(n160), .A0N(\memory[5][1] ), .A1N(n160), 
        .Y(n226) );
  OAI2BB2X1M U272 ( .B0(n434), .B1(n160), .A0N(\memory[5][2] ), .A1N(n160), 
        .Y(n227) );
  OAI2BB2X1M U273 ( .B0(n439), .B1(n160), .A0N(\memory[5][3] ), .A1N(n160), 
        .Y(n228) );
  OAI2BB2X1M U274 ( .B0(n433), .B1(n160), .A0N(\memory[5][4] ), .A1N(n160), 
        .Y(n229) );
  OAI2BB2X1M U275 ( .B0(n438), .B1(n160), .A0N(\memory[5][5] ), .A1N(n160), 
        .Y(n230) );
  OAI2BB2X1M U276 ( .B0(n437), .B1(n160), .A0N(\memory[5][6] ), .A1N(n160), 
        .Y(n231) );
  OAI2BB2X1M U277 ( .B0(n432), .B1(n160), .A0N(\memory[5][7] ), .A1N(n160), 
        .Y(n232) );
  OAI2BB2X1M U278 ( .B0(n436), .B1(n161), .A0N(\memory[6][0] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U279 ( .B0(n435), .B1(n161), .A0N(\memory[6][1] ), .A1N(n161), 
        .Y(n234) );
  OAI2BB2X1M U280 ( .B0(n434), .B1(n161), .A0N(\memory[6][2] ), .A1N(n161), 
        .Y(n235) );
  OAI2BB2X1M U281 ( .B0(n439), .B1(n161), .A0N(\memory[6][3] ), .A1N(n161), 
        .Y(n236) );
  OAI2BB2X1M U282 ( .B0(n433), .B1(n161), .A0N(\memory[6][4] ), .A1N(n161), 
        .Y(n237) );
  OAI2BB2X1M U283 ( .B0(n438), .B1(n161), .A0N(\memory[6][5] ), .A1N(n161), 
        .Y(n238) );
  OAI2BB2X1M U284 ( .B0(n437), .B1(n161), .A0N(\memory[6][6] ), .A1N(n161), 
        .Y(n239) );
  OAI2BB2X1M U285 ( .B0(n432), .B1(n161), .A0N(\memory[6][7] ), .A1N(n161), 
        .Y(n240) );
  OAI2BB2X1M U286 ( .B0(n436), .B1(n164), .A0N(\memory[7][0] ), .A1N(n164), 
        .Y(n241) );
  OAI2BB2X1M U287 ( .B0(n435), .B1(n164), .A0N(\memory[7][1] ), .A1N(n164), 
        .Y(n242) );
  OAI2BB2X1M U288 ( .B0(n434), .B1(n164), .A0N(\memory[7][2] ), .A1N(n164), 
        .Y(n243) );
  OAI2BB2X1M U289 ( .B0(n439), .B1(n164), .A0N(\memory[7][3] ), .A1N(n164), 
        .Y(n244) );
  OAI2BB2X1M U290 ( .B0(n433), .B1(n164), .A0N(\memory[7][4] ), .A1N(n164), 
        .Y(n245) );
  OAI2BB2X1M U291 ( .B0(n438), .B1(n164), .A0N(\memory[7][5] ), .A1N(n164), 
        .Y(n246) );
  OAI2BB2X1M U292 ( .B0(n437), .B1(n164), .A0N(\memory[7][6] ), .A1N(n164), 
        .Y(n247) );
  OAI2BB2X1M U293 ( .B0(n432), .B1(n164), .A0N(\memory[7][7] ), .A1N(n164), 
        .Y(n248) );
  OAI2BB2X1M U294 ( .B0(n436), .B1(n168), .A0N(\memory[9][0] ), .A1N(n168), 
        .Y(n257) );
  OAI2BB2X1M U295 ( .B0(n435), .B1(n168), .A0N(\memory[9][1] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U296 ( .B0(n434), .B1(n168), .A0N(\memory[9][2] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U297 ( .B0(n439), .B1(n168), .A0N(\memory[9][3] ), .A1N(n168), 
        .Y(n260) );
  OAI2BB2X1M U298 ( .B0(n433), .B1(n168), .A0N(\memory[9][4] ), .A1N(n168), 
        .Y(n261) );
  OAI2BB2X1M U299 ( .B0(n438), .B1(n168), .A0N(\memory[9][5] ), .A1N(n168), 
        .Y(n262) );
  OAI2BB2X1M U300 ( .B0(n437), .B1(n168), .A0N(\memory[9][6] ), .A1N(n168), 
        .Y(n263) );
  OAI2BB2X1M U301 ( .B0(n432), .B1(n168), .A0N(\memory[9][7] ), .A1N(n168), 
        .Y(n264) );
  OAI2BB2X1M U302 ( .B0(n436), .B1(n171), .A0N(\memory[11][0] ), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U303 ( .B0(n435), .B1(n171), .A0N(\memory[11][1] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U304 ( .B0(n434), .B1(n171), .A0N(\memory[11][2] ), .A1N(n171), 
        .Y(n275) );
  OAI2BB2X1M U305 ( .B0(n439), .B1(n171), .A0N(\memory[11][3] ), .A1N(n171), 
        .Y(n276) );
  OAI2BB2X1M U306 ( .B0(n433), .B1(n171), .A0N(\memory[11][4] ), .A1N(n171), 
        .Y(n277) );
  OAI2BB2X1M U307 ( .B0(n438), .B1(n171), .A0N(\memory[11][5] ), .A1N(n171), 
        .Y(n278) );
  OAI2BB2X1M U308 ( .B0(n437), .B1(n171), .A0N(\memory[11][6] ), .A1N(n171), 
        .Y(n279) );
  OAI2BB2X1M U309 ( .B0(n432), .B1(n171), .A0N(\memory[11][7] ), .A1N(n171), 
        .Y(n280) );
  OAI2BB2X1M U310 ( .B0(n436), .B1(n173), .A0N(\memory[13][0] ), .A1N(n173), 
        .Y(n289) );
  OAI2BB2X1M U311 ( .B0(n435), .B1(n173), .A0N(\memory[13][1] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U312 ( .B0(n434), .B1(n173), .A0N(\memory[13][2] ), .A1N(n173), 
        .Y(n291) );
  OAI2BB2X1M U313 ( .B0(n439), .B1(n173), .A0N(\memory[13][3] ), .A1N(n173), 
        .Y(n292) );
  OAI2BB2X1M U314 ( .B0(n433), .B1(n173), .A0N(\memory[13][4] ), .A1N(n173), 
        .Y(n293) );
  OAI2BB2X1M U315 ( .B0(n438), .B1(n173), .A0N(\memory[13][5] ), .A1N(n173), 
        .Y(n294) );
  OAI2BB2X1M U316 ( .B0(n437), .B1(n173), .A0N(\memory[13][6] ), .A1N(n173), 
        .Y(n295) );
  OAI2BB2X1M U317 ( .B0(n432), .B1(n173), .A0N(\memory[13][7] ), .A1N(n173), 
        .Y(n296) );
  OAI2BB2X1M U318 ( .B0(n436), .B1(n176), .A0N(\memory[15][0] ), .A1N(n176), 
        .Y(n305) );
  OAI2BB2X1M U319 ( .B0(n435), .B1(n176), .A0N(\memory[15][1] ), .A1N(n176), 
        .Y(n306) );
  OAI2BB2X1M U320 ( .B0(n434), .B1(n176), .A0N(\memory[15][2] ), .A1N(n176), 
        .Y(n307) );
  OAI2BB2X1M U321 ( .B0(n439), .B1(n176), .A0N(\memory[15][3] ), .A1N(n176), 
        .Y(n308) );
  OAI2BB2X1M U322 ( .B0(n433), .B1(n176), .A0N(\memory[15][4] ), .A1N(n176), 
        .Y(n309) );
  OAI2BB2X1M U323 ( .B0(n438), .B1(n176), .A0N(\memory[15][5] ), .A1N(n176), 
        .Y(n310) );
  OAI2BB2X1M U324 ( .B0(n437), .B1(n176), .A0N(\memory[15][6] ), .A1N(n176), 
        .Y(n311) );
  OAI2BB2X1M U325 ( .B0(n432), .B1(n176), .A0N(\memory[15][7] ), .A1N(n176), 
        .Y(n312) );
  OAI2BB2X1M U326 ( .B0(n435), .B1(n155), .A0N(REG2[1]), .A1N(n155), .Y(n202)
         );
  OAI2BB2X1M U327 ( .B0(n434), .B1(n155), .A0N(REG2[2]), .A1N(n155), .Y(n203)
         );
  OAI2BB2X1M U328 ( .B0(n439), .B1(n155), .A0N(REG2[3]), .A1N(n155), .Y(n204)
         );
  OAI2BB2X1M U329 ( .B0(n433), .B1(n155), .A0N(REG2[4]), .A1N(n155), .Y(n205)
         );
  OAI2BB2X1M U330 ( .B0(n438), .B1(n155), .A0N(REG2[5]), .A1N(n155), .Y(n206)
         );
  OAI2BB2X1M U331 ( .B0(n437), .B1(n155), .A0N(REG2[6]), .A1N(n155), .Y(n207)
         );
  OAI2BB2X1M U332 ( .B0(n436), .B1(n157), .A0N(REG3[0]), .A1N(n157), .Y(n209)
         );
  OAI2BB2X1M U333 ( .B0(n435), .B1(n157), .A0N(REG3[1]), .A1N(n157), .Y(n210)
         );
  OAI2BB2X1M U334 ( .B0(n434), .B1(n157), .A0N(REG3[2]), .A1N(n157), .Y(n211)
         );
  OAI2BB2X1M U335 ( .B0(n439), .B1(n157), .A0N(REG3[3]), .A1N(n157), .Y(n212)
         );
  OAI2BB2X1M U336 ( .B0(n433), .B1(n157), .A0N(REG3[4]), .A1N(n157), .Y(n213)
         );
  OAI2BB2X1M U337 ( .B0(n437), .B1(n157), .A0N(REG3[6]), .A1N(n157), .Y(n215)
         );
  OAI2BB2X1M U338 ( .B0(n432), .B1(n157), .A0N(REG3[7]), .A1N(n157), .Y(n216)
         );
  OAI2BB2X1M U339 ( .B0(n436), .B1(n155), .A0N(REG2[0]), .A1N(n155), .Y(n201)
         );
  OAI2BB2X1M U340 ( .B0(n432), .B1(n155), .A0N(REG2[7]), .A1N(n155), .Y(n208)
         );
  OAI2BB2X1M U341 ( .B0(n438), .B1(n157), .A0N(REG3[5]), .A1N(n157), .Y(n214)
         );
  OAI2BB1X2M U342 ( .A0N(RdData_valid), .A1N(n165), .B0(n149), .Y(n313) );
  AOI22X1M U343 ( .A0(\memory[10][0] ), .A1(n412), .B0(\memory[11][0] ), .B1(
        n410), .Y(n143) );
  AOI22X1M U344 ( .A0(\memory[8][0] ), .A1(n415), .B0(\memory[9][0] ), .B1(
        n414), .Y(n142) );
  CLKNAND2X2M U345 ( .A(N14), .B(n408), .Y(n391) );
  AOI21X1M U346 ( .A0(n143), .A1(n142), .B0(n391), .Y(n318) );
  AOI22X1M U347 ( .A0(\memory[14][0] ), .A1(n412), .B0(\memory[15][0] ), .B1(
        n410), .Y(n145) );
  AOI22X1M U348 ( .A0(\memory[12][0] ), .A1(n415), .B0(\memory[13][0] ), .B1(
        n414), .Y(n144) );
  CLKNAND2X2M U349 ( .A(N14), .B(N13), .Y(n394) );
  AOI21X1M U350 ( .A0(n145), .A1(n144), .B0(n394), .Y(n317) );
  AOI22X1M U351 ( .A0(REG2[0]), .A1(n412), .B0(REG3[0]), .B1(n410), .Y(n147)
         );
  AOI22X1M U352 ( .A0(REG0[0]), .A1(n415), .B0(REG1[0]), .B1(n414), .Y(n146)
         );
  CLKNAND2X2M U353 ( .A(n408), .B(n407), .Y(n397) );
  AOI21X1M U354 ( .A0(n147), .A1(n146), .B0(n397), .Y(n316) );
  AOI22X1M U355 ( .A0(\memory[6][0] ), .A1(n412), .B0(\memory[7][0] ), .B1(
        n410), .Y(n314) );
  AOI22X1M U356 ( .A0(\memory[4][0] ), .A1(n415), .B0(\memory[5][0] ), .B1(
        n414), .Y(n148) );
  CLKNAND2X2M U357 ( .A(N13), .B(n407), .Y(n400) );
  AOI21X1M U358 ( .A0(n314), .A1(n148), .B0(n400), .Y(n315) );
  OR4X1M U359 ( .A(n318), .B(n317), .C(n316), .D(n315), .Y(N43) );
  AOI22X1M U360 ( .A0(\memory[10][1] ), .A1(n412), .B0(\memory[11][1] ), .B1(
        n410), .Y(n320) );
  AOI22X1M U361 ( .A0(\memory[8][1] ), .A1(n415), .B0(\memory[9][1] ), .B1(
        n414), .Y(n319) );
  AOI21X1M U362 ( .A0(n320), .A1(n319), .B0(n391), .Y(n330) );
  AOI22X1M U363 ( .A0(\memory[14][1] ), .A1(n412), .B0(\memory[15][1] ), .B1(
        n410), .Y(n322) );
  AOI22X1M U364 ( .A0(\memory[12][1] ), .A1(n415), .B0(\memory[13][1] ), .B1(
        n414), .Y(n321) );
  AOI21X1M U365 ( .A0(n322), .A1(n321), .B0(n394), .Y(n329) );
  AOI22X1M U366 ( .A0(REG2[1]), .A1(n412), .B0(REG3[1]), .B1(n410), .Y(n324)
         );
  AOI22X1M U367 ( .A0(REG0[1]), .A1(n415), .B0(REG1[1]), .B1(n414), .Y(n323)
         );
  AOI21X1M U368 ( .A0(n324), .A1(n323), .B0(n397), .Y(n328) );
  AOI22X1M U369 ( .A0(\memory[6][1] ), .A1(n412), .B0(\memory[7][1] ), .B1(
        n410), .Y(n326) );
  AOI22X1M U370 ( .A0(\memory[4][1] ), .A1(n415), .B0(\memory[5][1] ), .B1(
        n414), .Y(n325) );
  AOI21X1M U371 ( .A0(n326), .A1(n325), .B0(n400), .Y(n327) );
  OR4X1M U372 ( .A(n330), .B(n329), .C(n328), .D(n327), .Y(N42) );
  AOI22X1M U373 ( .A0(\memory[10][2] ), .A1(n412), .B0(\memory[11][2] ), .B1(
        n410), .Y(n332) );
  AOI22X1M U374 ( .A0(\memory[8][2] ), .A1(n415), .B0(\memory[9][2] ), .B1(
        n414), .Y(n331) );
  AOI21X1M U375 ( .A0(n332), .A1(n331), .B0(n391), .Y(n342) );
  AOI22X1M U376 ( .A0(\memory[14][2] ), .A1(n412), .B0(\memory[15][2] ), .B1(
        n410), .Y(n334) );
  AOI22X1M U377 ( .A0(\memory[12][2] ), .A1(n415), .B0(\memory[13][2] ), .B1(
        n414), .Y(n333) );
  AOI21X1M U378 ( .A0(n334), .A1(n333), .B0(n394), .Y(n341) );
  AOI22X1M U379 ( .A0(REG2[2]), .A1(n412), .B0(REG3[2]), .B1(n410), .Y(n336)
         );
  AOI22X1M U380 ( .A0(REG0[2]), .A1(n415), .B0(REG1[2]), .B1(n414), .Y(n335)
         );
  AOI21X1M U381 ( .A0(n336), .A1(n335), .B0(n397), .Y(n340) );
  AOI22X1M U382 ( .A0(\memory[6][2] ), .A1(n412), .B0(\memory[7][2] ), .B1(
        n410), .Y(n338) );
  AOI22X1M U383 ( .A0(\memory[4][2] ), .A1(n415), .B0(\memory[5][2] ), .B1(
        n414), .Y(n337) );
  AOI21X1M U384 ( .A0(n338), .A1(n337), .B0(n400), .Y(n339) );
  OR4X1M U385 ( .A(n342), .B(n341), .C(n340), .D(n339), .Y(N41) );
  AOI22X1M U386 ( .A0(\memory[10][3] ), .A1(n412), .B0(\memory[11][3] ), .B1(
        n410), .Y(n344) );
  AOI22X1M U387 ( .A0(\memory[8][3] ), .A1(n415), .B0(\memory[9][3] ), .B1(
        n414), .Y(n343) );
  AOI21X1M U388 ( .A0(n344), .A1(n343), .B0(n391), .Y(n354) );
  AOI22X1M U389 ( .A0(\memory[14][3] ), .A1(n412), .B0(\memory[15][3] ), .B1(
        n410), .Y(n346) );
  AOI22X1M U390 ( .A0(\memory[12][3] ), .A1(n415), .B0(\memory[13][3] ), .B1(
        n414), .Y(n345) );
  AOI21X1M U391 ( .A0(n346), .A1(n345), .B0(n394), .Y(n353) );
  AOI22X1M U392 ( .A0(REG2[3]), .A1(n412), .B0(REG3[3]), .B1(n410), .Y(n348)
         );
  AOI22X1M U393 ( .A0(REG0[3]), .A1(n415), .B0(REG1[3]), .B1(n414), .Y(n347)
         );
  AOI21X1M U394 ( .A0(n348), .A1(n347), .B0(n397), .Y(n352) );
  AOI22X1M U395 ( .A0(\memory[6][3] ), .A1(n412), .B0(\memory[7][3] ), .B1(
        n410), .Y(n350) );
  AOI22X1M U396 ( .A0(\memory[4][3] ), .A1(n415), .B0(\memory[5][3] ), .B1(
        n414), .Y(n349) );
  AOI21X1M U397 ( .A0(n350), .A1(n349), .B0(n400), .Y(n351) );
  OR4X1M U398 ( .A(n354), .B(n353), .C(n352), .D(n351), .Y(N40) );
  AOI22X1M U399 ( .A0(\memory[10][4] ), .A1(n412), .B0(\memory[11][4] ), .B1(
        n410), .Y(n356) );
  AOI22X1M U400 ( .A0(\memory[8][4] ), .A1(n415), .B0(\memory[9][4] ), .B1(
        n414), .Y(n355) );
  AOI21X1M U401 ( .A0(n356), .A1(n355), .B0(n391), .Y(n366) );
  AOI22X1M U402 ( .A0(\memory[14][4] ), .A1(n412), .B0(\memory[15][4] ), .B1(
        n410), .Y(n358) );
  AOI22X1M U403 ( .A0(\memory[12][4] ), .A1(n415), .B0(\memory[13][4] ), .B1(
        n414), .Y(n357) );
  AOI21X1M U404 ( .A0(n358), .A1(n357), .B0(n394), .Y(n365) );
  AOI22X1M U405 ( .A0(REG2[4]), .A1(n412), .B0(REG3[4]), .B1(n410), .Y(n360)
         );
  AOI22X1M U406 ( .A0(REG0[4]), .A1(n415), .B0(REG1[4]), .B1(n414), .Y(n359)
         );
  AOI21X1M U407 ( .A0(n360), .A1(n359), .B0(n397), .Y(n364) );
  AOI22X1M U408 ( .A0(\memory[6][4] ), .A1(n412), .B0(\memory[7][4] ), .B1(
        n410), .Y(n362) );
  AOI22X1M U409 ( .A0(\memory[4][4] ), .A1(n415), .B0(\memory[5][4] ), .B1(
        n414), .Y(n361) );
  AOI21X1M U410 ( .A0(n362), .A1(n361), .B0(n400), .Y(n363) );
  OR4X1M U411 ( .A(n366), .B(n365), .C(n364), .D(n363), .Y(N39) );
  AOI22X1M U412 ( .A0(\memory[10][5] ), .A1(n412), .B0(\memory[11][5] ), .B1(
        n410), .Y(n368) );
  AOI22X1M U413 ( .A0(\memory[8][5] ), .A1(n415), .B0(\memory[9][5] ), .B1(
        n414), .Y(n367) );
  AOI21X1M U414 ( .A0(n368), .A1(n367), .B0(n391), .Y(n378) );
  AOI22X1M U415 ( .A0(\memory[14][5] ), .A1(n412), .B0(\memory[15][5] ), .B1(
        n410), .Y(n370) );
  AOI22X1M U416 ( .A0(\memory[12][5] ), .A1(n415), .B0(\memory[13][5] ), .B1(
        n414), .Y(n369) );
  AOI21X1M U417 ( .A0(n370), .A1(n369), .B0(n394), .Y(n377) );
  AOI22X1M U418 ( .A0(REG2[5]), .A1(n412), .B0(REG3[5]), .B1(n410), .Y(n372)
         );
  AOI22X1M U419 ( .A0(REG0[5]), .A1(n415), .B0(REG1[5]), .B1(n414), .Y(n371)
         );
  AOI21X1M U420 ( .A0(n372), .A1(n371), .B0(n397), .Y(n376) );
  AOI22X1M U421 ( .A0(\memory[6][5] ), .A1(n412), .B0(\memory[7][5] ), .B1(
        n410), .Y(n374) );
  AOI22X1M U422 ( .A0(\memory[4][5] ), .A1(n415), .B0(\memory[5][5] ), .B1(
        n414), .Y(n373) );
  AOI21X1M U423 ( .A0(n374), .A1(n373), .B0(n400), .Y(n375) );
  OR4X1M U424 ( .A(n378), .B(n377), .C(n376), .D(n375), .Y(N38) );
  AOI22X1M U425 ( .A0(\memory[10][6] ), .A1(n412), .B0(\memory[11][6] ), .B1(
        n410), .Y(n380) );
  AOI22X1M U426 ( .A0(\memory[8][6] ), .A1(n415), .B0(\memory[9][6] ), .B1(
        n414), .Y(n379) );
  AOI21X1M U427 ( .A0(n380), .A1(n379), .B0(n391), .Y(n390) );
  AOI22X1M U428 ( .A0(\memory[14][6] ), .A1(n412), .B0(\memory[15][6] ), .B1(
        n410), .Y(n382) );
  AOI22X1M U429 ( .A0(\memory[12][6] ), .A1(n415), .B0(\memory[13][6] ), .B1(
        n414), .Y(n381) );
  AOI21X1M U430 ( .A0(n382), .A1(n381), .B0(n394), .Y(n389) );
  AOI22X1M U431 ( .A0(REG2[6]), .A1(n412), .B0(REG3[6]), .B1(n410), .Y(n384)
         );
  AOI22X1M U432 ( .A0(REG0[6]), .A1(n415), .B0(REG1[6]), .B1(n414), .Y(n383)
         );
  AOI21X1M U433 ( .A0(n384), .A1(n383), .B0(n397), .Y(n388) );
  AOI22X1M U434 ( .A0(\memory[6][6] ), .A1(n412), .B0(\memory[7][6] ), .B1(
        n410), .Y(n386) );
  AOI22X1M U435 ( .A0(\memory[4][6] ), .A1(n415), .B0(\memory[5][6] ), .B1(
        n414), .Y(n385) );
  AOI21X1M U436 ( .A0(n386), .A1(n385), .B0(n400), .Y(n387) );
  OR4X1M U437 ( .A(n390), .B(n389), .C(n388), .D(n387), .Y(N37) );
  AOI22X1M U438 ( .A0(\memory[10][7] ), .A1(n412), .B0(\memory[11][7] ), .B1(
        n410), .Y(n393) );
  AOI22X1M U439 ( .A0(\memory[8][7] ), .A1(n415), .B0(\memory[9][7] ), .B1(
        n414), .Y(n392) );
  AOI21X1M U440 ( .A0(n393), .A1(n392), .B0(n391), .Y(n406) );
  AOI22X1M U441 ( .A0(\memory[14][7] ), .A1(n412), .B0(\memory[15][7] ), .B1(
        n410), .Y(n396) );
  AOI22X1M U442 ( .A0(\memory[12][7] ), .A1(n415), .B0(\memory[13][7] ), .B1(
        n414), .Y(n395) );
  AOI21X1M U443 ( .A0(n396), .A1(n395), .B0(n394), .Y(n405) );
  AOI22X1M U444 ( .A0(REG2[7]), .A1(n412), .B0(REG3[7]), .B1(n410), .Y(n399)
         );
  AOI22X1M U445 ( .A0(REG0[7]), .A1(n415), .B0(REG1[7]), .B1(n414), .Y(n398)
         );
  AOI21X1M U446 ( .A0(n399), .A1(n398), .B0(n397), .Y(n404) );
  AOI22X1M U447 ( .A0(\memory[6][7] ), .A1(n412), .B0(\memory[7][7] ), .B1(
        n410), .Y(n402) );
  AOI22X1M U448 ( .A0(\memory[4][7] ), .A1(n415), .B0(\memory[5][7] ), .B1(
        n414), .Y(n401) );
  AOI21X1M U449 ( .A0(n402), .A1(n401), .B0(n400), .Y(n403) );
  OR4X1M U450 ( .A(n406), .B(n405), .C(n404), .D(n403), .Y(N36) );
  DLY1X1M U451 ( .A(test_se), .Y(n444) );
  DLY1X1M U452 ( .A(test_se), .Y(n445) );
  DLY1X1M U453 ( .A(test_se), .Y(n446) );
  DLY1X1M U454 ( .A(test_se), .Y(n447) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_mem_depth8_test_1 ( WR_DATA_mem, W_CLK, 
        W_RST, wfull, winc, w_mem_addr, r_mem_addr, RD_DATA_mem, test_si2, 
        test_si1, test_so2, test_so1, test_se );
  input [7:0] WR_DATA_mem;
  input [3:0] w_mem_addr;
  input [3:0] r_mem_addr;
  output [7:0] RD_DATA_mem;
  input W_CLK, W_RST, wfull, winc, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \memory[7][7] , \memory[7][6] , \memory[7][5] ,
         \memory[7][4] , \memory[7][3] , \memory[7][2] , \memory[7][1] ,
         \memory[7][0] , \memory[6][7] , \memory[6][6] , \memory[6][5] ,
         \memory[6][4] , \memory[6][3] , \memory[6][2] , \memory[6][1] ,
         \memory[6][0] , \memory[5][7] , \memory[5][6] , \memory[5][5] ,
         \memory[5][4] , \memory[5][3] , \memory[5][2] , \memory[5][1] ,
         \memory[5][0] , \memory[4][7] , \memory[4][6] , \memory[4][5] ,
         \memory[4][4] , \memory[4][3] , \memory[4][2] , \memory[4][1] ,
         \memory[4][0] , \memory[3][7] , \memory[3][6] , \memory[3][5] ,
         \memory[3][4] , \memory[3][3] , \memory[3][2] , \memory[3][1] ,
         \memory[3][0] , \memory[2][7] , \memory[2][6] , \memory[2][5] ,
         \memory[2][4] , \memory[2][3] , \memory[2][2] , \memory[2][1] ,
         \memory[2][0] , \memory[1][7] , \memory[1][6] , \memory[1][5] ,
         \memory[1][4] , \memory[1][3] , \memory[1][2] , \memory[1][1] ,
         \memory[1][0] , \memory[0][7] , \memory[0][6] , \memory[0][5] ,
         \memory[0][4] , \memory[0][3] , \memory[0][2] , \memory[0][1] ,
         \memory[0][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n206, n207, n208, n209, n210;
  assign N10 = r_mem_addr[0];
  assign N11 = r_mem_addr[1];
  assign N12 = r_mem_addr[2];
  assign test_so2 = \memory[7][7] ;
  assign test_so1 = \memory[4][4] ;

  SDFFRQX2M \memory_reg[1][7]  ( .D(n101), .SI(\memory[1][6] ), .SE(n210), 
        .CK(W_CLK), .RN(n182), .Q(\memory[1][7] ) );
  SDFFRQX2M \memory_reg[1][6]  ( .D(n100), .SI(\memory[1][5] ), .SE(n209), 
        .CK(W_CLK), .RN(n182), .Q(\memory[1][6] ) );
  SDFFRQX2M \memory_reg[1][5]  ( .D(n99), .SI(\memory[1][4] ), .SE(n208), .CK(
        W_CLK), .RN(n182), .Q(\memory[1][5] ) );
  SDFFRQX2M \memory_reg[1][4]  ( .D(n98), .SI(\memory[1][3] ), .SE(n207), .CK(
        W_CLK), .RN(n182), .Q(\memory[1][4] ) );
  SDFFRQX2M \memory_reg[1][3]  ( .D(n97), .SI(\memory[1][2] ), .SE(n210), .CK(
        W_CLK), .RN(n181), .Q(\memory[1][3] ) );
  SDFFRQX2M \memory_reg[1][2]  ( .D(n96), .SI(\memory[1][1] ), .SE(n209), .CK(
        W_CLK), .RN(n181), .Q(\memory[1][2] ) );
  SDFFRQX2M \memory_reg[1][1]  ( .D(n95), .SI(\memory[1][0] ), .SE(n208), .CK(
        W_CLK), .RN(n181), .Q(\memory[1][1] ) );
  SDFFRQX2M \memory_reg[1][0]  ( .D(n94), .SI(\memory[0][7] ), .SE(n207), .CK(
        W_CLK), .RN(n181), .Q(\memory[1][0] ) );
  SDFFRQX2M \memory_reg[0][7]  ( .D(n93), .SI(\memory[0][6] ), .SE(n210), .CK(
        W_CLK), .RN(n181), .Q(\memory[0][7] ) );
  SDFFRQX2M \memory_reg[0][6]  ( .D(n92), .SI(\memory[0][5] ), .SE(n209), .CK(
        W_CLK), .RN(n181), .Q(\memory[0][6] ) );
  SDFFRQX2M \memory_reg[0][5]  ( .D(n91), .SI(\memory[0][4] ), .SE(n208), .CK(
        W_CLK), .RN(n181), .Q(\memory[0][5] ) );
  SDFFRQX2M \memory_reg[0][4]  ( .D(n90), .SI(\memory[0][3] ), .SE(n207), .CK(
        W_CLK), .RN(n181), .Q(\memory[0][4] ) );
  SDFFRQX2M \memory_reg[0][3]  ( .D(n89), .SI(\memory[0][2] ), .SE(n210), .CK(
        W_CLK), .RN(n181), .Q(\memory[0][3] ) );
  SDFFRQX2M \memory_reg[0][2]  ( .D(n88), .SI(\memory[0][1] ), .SE(n209), .CK(
        W_CLK), .RN(n181), .Q(\memory[0][2] ) );
  SDFFRQX2M \memory_reg[0][1]  ( .D(n87), .SI(\memory[0][0] ), .SE(n208), .CK(
        W_CLK), .RN(n181), .Q(\memory[0][1] ) );
  SDFFRQX2M \memory_reg[0][0]  ( .D(n86), .SI(test_si1), .SE(n207), .CK(W_CLK), 
        .RN(n181), .Q(\memory[0][0] ) );
  SDFFRQX2M \memory_reg[5][7]  ( .D(n133), .SI(\memory[5][6] ), .SE(n210), 
        .CK(W_CLK), .RN(n184), .Q(\memory[5][7] ) );
  SDFFRQX2M \memory_reg[5][6]  ( .D(n132), .SI(\memory[5][5] ), .SE(n209), 
        .CK(W_CLK), .RN(n184), .Q(\memory[5][6] ) );
  SDFFRQX2M \memory_reg[5][5]  ( .D(n131), .SI(\memory[5][4] ), .SE(n208), 
        .CK(W_CLK), .RN(n184), .Q(\memory[5][5] ) );
  SDFFRQX2M \memory_reg[5][4]  ( .D(n130), .SI(\memory[5][3] ), .SE(n207), 
        .CK(W_CLK), .RN(n184), .Q(\memory[5][4] ) );
  SDFFRQX2M \memory_reg[5][3]  ( .D(n129), .SI(\memory[5][2] ), .SE(n210), 
        .CK(W_CLK), .RN(n184), .Q(\memory[5][3] ) );
  SDFFRQX2M \memory_reg[5][2]  ( .D(n128), .SI(\memory[5][1] ), .SE(n209), 
        .CK(W_CLK), .RN(n184), .Q(\memory[5][2] ) );
  SDFFRQX2M \memory_reg[5][1]  ( .D(n127), .SI(\memory[5][0] ), .SE(n208), 
        .CK(W_CLK), .RN(n184), .Q(\memory[5][1] ) );
  SDFFRQX2M \memory_reg[5][0]  ( .D(n126), .SI(\memory[4][7] ), .SE(n207), 
        .CK(W_CLK), .RN(n184), .Q(\memory[5][0] ) );
  SDFFRQX2M \memory_reg[4][7]  ( .D(n125), .SI(\memory[4][6] ), .SE(n210), 
        .CK(W_CLK), .RN(n184), .Q(\memory[4][7] ) );
  SDFFRQX2M \memory_reg[4][6]  ( .D(n124), .SI(\memory[4][5] ), .SE(n209), 
        .CK(W_CLK), .RN(n184), .Q(\memory[4][6] ) );
  SDFFRQX2M \memory_reg[4][5]  ( .D(n123), .SI(test_si2), .SE(n208), .CK(W_CLK), .RN(n184), .Q(\memory[4][5] ) );
  SDFFRQX2M \memory_reg[4][4]  ( .D(n122), .SI(\memory[4][3] ), .SE(n207), 
        .CK(W_CLK), .RN(n184), .Q(\memory[4][4] ) );
  SDFFRQX2M \memory_reg[4][3]  ( .D(n121), .SI(\memory[4][2] ), .SE(n210), 
        .CK(W_CLK), .RN(n183), .Q(\memory[4][3] ) );
  SDFFRQX2M \memory_reg[4][2]  ( .D(n120), .SI(\memory[4][1] ), .SE(n209), 
        .CK(W_CLK), .RN(n183), .Q(\memory[4][2] ) );
  SDFFRQX2M \memory_reg[4][1]  ( .D(n119), .SI(\memory[4][0] ), .SE(n208), 
        .CK(W_CLK), .RN(n183), .Q(\memory[4][1] ) );
  SDFFRQX2M \memory_reg[4][0]  ( .D(n118), .SI(\memory[3][7] ), .SE(n207), 
        .CK(W_CLK), .RN(n183), .Q(\memory[4][0] ) );
  SDFFRQX2M \memory_reg[7][7]  ( .D(n149), .SI(\memory[7][6] ), .SE(n210), 
        .CK(W_CLK), .RN(n186), .Q(\memory[7][7] ) );
  SDFFRQX2M \memory_reg[7][6]  ( .D(n148), .SI(\memory[7][5] ), .SE(n209), 
        .CK(W_CLK), .RN(n186), .Q(\memory[7][6] ) );
  SDFFRQX2M \memory_reg[7][5]  ( .D(n147), .SI(\memory[7][4] ), .SE(n208), 
        .CK(W_CLK), .RN(n186), .Q(\memory[7][5] ) );
  SDFFRQX2M \memory_reg[7][4]  ( .D(n146), .SI(\memory[7][3] ), .SE(n207), 
        .CK(W_CLK), .RN(n186), .Q(\memory[7][4] ) );
  SDFFRQX2M \memory_reg[7][3]  ( .D(n145), .SI(\memory[7][2] ), .SE(n210), 
        .CK(W_CLK), .RN(n185), .Q(\memory[7][3] ) );
  SDFFRQX2M \memory_reg[7][2]  ( .D(n144), .SI(\memory[7][1] ), .SE(n209), 
        .CK(W_CLK), .RN(n185), .Q(\memory[7][2] ) );
  SDFFRQX2M \memory_reg[7][1]  ( .D(n143), .SI(\memory[7][0] ), .SE(n208), 
        .CK(W_CLK), .RN(n185), .Q(\memory[7][1] ) );
  SDFFRQX2M \memory_reg[7][0]  ( .D(n142), .SI(\memory[6][7] ), .SE(n207), 
        .CK(W_CLK), .RN(n185), .Q(\memory[7][0] ) );
  SDFFRQX2M \memory_reg[6][7]  ( .D(n141), .SI(\memory[6][6] ), .SE(n210), 
        .CK(W_CLK), .RN(n185), .Q(\memory[6][7] ) );
  SDFFRQX2M \memory_reg[6][6]  ( .D(n140), .SI(\memory[6][5] ), .SE(n209), 
        .CK(W_CLK), .RN(n185), .Q(\memory[6][6] ) );
  SDFFRQX2M \memory_reg[6][5]  ( .D(n139), .SI(\memory[6][4] ), .SE(n208), 
        .CK(W_CLK), .RN(n185), .Q(\memory[6][5] ) );
  SDFFRQX2M \memory_reg[6][4]  ( .D(n138), .SI(\memory[6][3] ), .SE(n207), 
        .CK(W_CLK), .RN(n185), .Q(\memory[6][4] ) );
  SDFFRQX2M \memory_reg[6][3]  ( .D(n137), .SI(\memory[6][2] ), .SE(n210), 
        .CK(W_CLK), .RN(n185), .Q(\memory[6][3] ) );
  SDFFRQX2M \memory_reg[6][2]  ( .D(n136), .SI(\memory[6][1] ), .SE(n209), 
        .CK(W_CLK), .RN(n185), .Q(\memory[6][2] ) );
  SDFFRQX2M \memory_reg[6][1]  ( .D(n135), .SI(\memory[6][0] ), .SE(n208), 
        .CK(W_CLK), .RN(n185), .Q(\memory[6][1] ) );
  SDFFRQX2M \memory_reg[6][0]  ( .D(n134), .SI(\memory[5][7] ), .SE(n207), 
        .CK(W_CLK), .RN(n185), .Q(\memory[6][0] ) );
  SDFFRQX2M \memory_reg[3][7]  ( .D(n117), .SI(\memory[3][6] ), .SE(n210), 
        .CK(W_CLK), .RN(n183), .Q(\memory[3][7] ) );
  SDFFRQX2M \memory_reg[3][6]  ( .D(n116), .SI(\memory[3][5] ), .SE(n209), 
        .CK(W_CLK), .RN(n183), .Q(\memory[3][6] ) );
  SDFFRQX2M \memory_reg[3][5]  ( .D(n115), .SI(\memory[3][4] ), .SE(n208), 
        .CK(W_CLK), .RN(n183), .Q(\memory[3][5] ) );
  SDFFRQX2M \memory_reg[3][4]  ( .D(n114), .SI(\memory[3][3] ), .SE(n207), 
        .CK(W_CLK), .RN(n183), .Q(\memory[3][4] ) );
  SDFFRQX2M \memory_reg[3][3]  ( .D(n113), .SI(\memory[3][2] ), .SE(n210), 
        .CK(W_CLK), .RN(n183), .Q(\memory[3][3] ) );
  SDFFRQX2M \memory_reg[3][2]  ( .D(n112), .SI(\memory[3][1] ), .SE(n209), 
        .CK(W_CLK), .RN(n183), .Q(\memory[3][2] ) );
  SDFFRQX2M \memory_reg[3][1]  ( .D(n111), .SI(\memory[3][0] ), .SE(n208), 
        .CK(W_CLK), .RN(n183), .Q(\memory[3][1] ) );
  SDFFRQX2M \memory_reg[3][0]  ( .D(n110), .SI(\memory[2][7] ), .SE(n207), 
        .CK(W_CLK), .RN(n183), .Q(\memory[3][0] ) );
  SDFFRQX2M \memory_reg[2][7]  ( .D(n109), .SI(\memory[2][6] ), .SE(n210), 
        .CK(W_CLK), .RN(n182), .Q(\memory[2][7] ) );
  SDFFRQX2M \memory_reg[2][6]  ( .D(n108), .SI(\memory[2][5] ), .SE(n209), 
        .CK(W_CLK), .RN(n182), .Q(\memory[2][6] ) );
  SDFFRQX2M \memory_reg[2][5]  ( .D(n107), .SI(\memory[2][4] ), .SE(n208), 
        .CK(W_CLK), .RN(n182), .Q(\memory[2][5] ) );
  SDFFRQX2M \memory_reg[2][4]  ( .D(n106), .SI(\memory[2][3] ), .SE(n207), 
        .CK(W_CLK), .RN(n182), .Q(\memory[2][4] ) );
  SDFFRQX2M \memory_reg[2][3]  ( .D(n105), .SI(\memory[2][2] ), .SE(n210), 
        .CK(W_CLK), .RN(n182), .Q(\memory[2][3] ) );
  SDFFRQX2M \memory_reg[2][2]  ( .D(n104), .SI(\memory[2][1] ), .SE(n209), 
        .CK(W_CLK), .RN(n182), .Q(\memory[2][2] ) );
  SDFFRQX2M \memory_reg[2][1]  ( .D(n103), .SI(\memory[2][0] ), .SE(n208), 
        .CK(W_CLK), .RN(n182), .Q(\memory[2][1] ) );
  SDFFRQX2M \memory_reg[2][0]  ( .D(n102), .SI(\memory[1][7] ), .SE(n207), 
        .CK(W_CLK), .RN(n182), .Q(\memory[2][0] ) );
  BUFX2M U66 ( .A(n83), .Y(n189) );
  BUFX2M U67 ( .A(n84), .Y(n188) );
  BUFX2M U68 ( .A(n85), .Y(n187) );
  BUFX2M U69 ( .A(n77), .Y(n192) );
  BUFX2M U70 ( .A(n78), .Y(n191) );
  BUFX2M U71 ( .A(n79), .Y(n190) );
  BUFX2M U72 ( .A(n179), .Y(n181) );
  BUFX2M U73 ( .A(n179), .Y(n182) );
  BUFX2M U74 ( .A(n179), .Y(n183) );
  BUFX2M U75 ( .A(n180), .Y(n184) );
  BUFX2M U76 ( .A(n180), .Y(n185) );
  BUFX2M U77 ( .A(n180), .Y(n186) );
  BUFX2M U78 ( .A(W_RST), .Y(n179) );
  BUFX2M U79 ( .A(W_RST), .Y(n180) );
  NOR2X2M U80 ( .A(n176), .B(n177), .Y(n172) );
  NAND3X2M U81 ( .A(n193), .B(n194), .C(n82), .Y(n81) );
  NAND3X2M U82 ( .A(n193), .B(n194), .C(n76), .Y(n75) );
  NOR2BX2M U83 ( .AN(winc), .B(wfull), .Y(n80) );
  NOR2X2M U84 ( .A(n177), .B(N12), .Y(n170) );
  NOR2X2M U85 ( .A(n176), .B(N11), .Y(n173) );
  NOR2X2M U86 ( .A(N11), .B(N12), .Y(n169) );
  INVX2M U87 ( .A(N11), .Y(n177) );
  INVX2M U88 ( .A(N12), .Y(n176) );
  NOR2BX2M U89 ( .AN(n80), .B(w_mem_addr[2]), .Y(n76) );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n202), .A0N(\memory[0][0] ), .A1N(n75), .Y(
        n86) );
  OAI2BB2X1M U91 ( .B0(n75), .B1(n201), .A0N(\memory[0][1] ), .A1N(n75), .Y(
        n87) );
  OAI2BB2X1M U92 ( .B0(n75), .B1(n200), .A0N(\memory[0][2] ), .A1N(n75), .Y(
        n88) );
  OAI2BB2X1M U93 ( .B0(n75), .B1(n199), .A0N(\memory[0][3] ), .A1N(n75), .Y(
        n89) );
  OAI2BB2X1M U94 ( .B0(n75), .B1(n198), .A0N(\memory[0][4] ), .A1N(n75), .Y(
        n90) );
  OAI2BB2X1M U95 ( .B0(n75), .B1(n197), .A0N(\memory[0][5] ), .A1N(n75), .Y(
        n91) );
  OAI2BB2X1M U96 ( .B0(n75), .B1(n196), .A0N(\memory[0][6] ), .A1N(n75), .Y(
        n92) );
  OAI2BB2X1M U97 ( .B0(n75), .B1(n195), .A0N(\memory[0][7] ), .A1N(n75), .Y(
        n93) );
  OAI2BB2X1M U98 ( .B0(n202), .B1(n81), .A0N(\memory[4][0] ), .A1N(n81), .Y(
        n118) );
  OAI2BB2X1M U99 ( .B0(n201), .B1(n81), .A0N(\memory[4][1] ), .A1N(n81), .Y(
        n119) );
  OAI2BB2X1M U100 ( .B0(n200), .B1(n81), .A0N(\memory[4][2] ), .A1N(n81), .Y(
        n120) );
  OAI2BB2X1M U101 ( .B0(n199), .B1(n81), .A0N(\memory[4][3] ), .A1N(n81), .Y(
        n121) );
  OAI2BB2X1M U102 ( .B0(n198), .B1(n81), .A0N(\memory[4][4] ), .A1N(n81), .Y(
        n122) );
  OAI2BB2X1M U103 ( .B0(n197), .B1(n81), .A0N(\memory[4][5] ), .A1N(n81), .Y(
        n123) );
  OAI2BB2X1M U104 ( .B0(n196), .B1(n81), .A0N(\memory[4][6] ), .A1N(n81), .Y(
        n124) );
  OAI2BB2X1M U105 ( .B0(n195), .B1(n81), .A0N(\memory[4][7] ), .A1N(n81), .Y(
        n125) );
  OAI2BB2X1M U106 ( .B0(n202), .B1(n192), .A0N(\memory[1][0] ), .A1N(n192), 
        .Y(n94) );
  OAI2BB2X1M U107 ( .B0(n201), .B1(n192), .A0N(\memory[1][1] ), .A1N(n192), 
        .Y(n95) );
  OAI2BB2X1M U108 ( .B0(n200), .B1(n192), .A0N(\memory[1][2] ), .A1N(n192), 
        .Y(n96) );
  OAI2BB2X1M U109 ( .B0(n199), .B1(n192), .A0N(\memory[1][3] ), .A1N(n192), 
        .Y(n97) );
  OAI2BB2X1M U110 ( .B0(n198), .B1(n192), .A0N(\memory[1][4] ), .A1N(n192), 
        .Y(n98) );
  OAI2BB2X1M U111 ( .B0(n197), .B1(n192), .A0N(\memory[1][5] ), .A1N(n192), 
        .Y(n99) );
  OAI2BB2X1M U112 ( .B0(n196), .B1(n192), .A0N(\memory[1][6] ), .A1N(n192), 
        .Y(n100) );
  OAI2BB2X1M U113 ( .B0(n195), .B1(n192), .A0N(\memory[1][7] ), .A1N(n192), 
        .Y(n101) );
  OAI2BB2X1M U114 ( .B0(n202), .B1(n191), .A0N(\memory[2][0] ), .A1N(n191), 
        .Y(n102) );
  OAI2BB2X1M U115 ( .B0(n201), .B1(n191), .A0N(\memory[2][1] ), .A1N(n191), 
        .Y(n103) );
  OAI2BB2X1M U116 ( .B0(n200), .B1(n191), .A0N(\memory[2][2] ), .A1N(n191), 
        .Y(n104) );
  OAI2BB2X1M U117 ( .B0(n199), .B1(n191), .A0N(\memory[2][3] ), .A1N(n191), 
        .Y(n105) );
  OAI2BB2X1M U118 ( .B0(n198), .B1(n191), .A0N(\memory[2][4] ), .A1N(n191), 
        .Y(n106) );
  OAI2BB2X1M U119 ( .B0(n197), .B1(n191), .A0N(\memory[2][5] ), .A1N(n191), 
        .Y(n107) );
  OAI2BB2X1M U120 ( .B0(n196), .B1(n191), .A0N(\memory[2][6] ), .A1N(n191), 
        .Y(n108) );
  OAI2BB2X1M U121 ( .B0(n195), .B1(n191), .A0N(\memory[2][7] ), .A1N(n191), 
        .Y(n109) );
  OAI2BB2X1M U122 ( .B0(n202), .B1(n190), .A0N(\memory[3][0] ), .A1N(n190), 
        .Y(n110) );
  OAI2BB2X1M U123 ( .B0(n201), .B1(n190), .A0N(\memory[3][1] ), .A1N(n190), 
        .Y(n111) );
  OAI2BB2X1M U124 ( .B0(n200), .B1(n190), .A0N(\memory[3][2] ), .A1N(n190), 
        .Y(n112) );
  OAI2BB2X1M U125 ( .B0(n199), .B1(n190), .A0N(\memory[3][3] ), .A1N(n190), 
        .Y(n113) );
  OAI2BB2X1M U126 ( .B0(n198), .B1(n190), .A0N(\memory[3][4] ), .A1N(n190), 
        .Y(n114) );
  OAI2BB2X1M U127 ( .B0(n197), .B1(n190), .A0N(\memory[3][5] ), .A1N(n190), 
        .Y(n115) );
  OAI2BB2X1M U128 ( .B0(n196), .B1(n190), .A0N(\memory[3][6] ), .A1N(n190), 
        .Y(n116) );
  OAI2BB2X1M U129 ( .B0(n195), .B1(n190), .A0N(\memory[3][7] ), .A1N(n190), 
        .Y(n117) );
  OAI2BB2X1M U130 ( .B0(n202), .B1(n189), .A0N(\memory[5][0] ), .A1N(n189), 
        .Y(n126) );
  OAI2BB2X1M U131 ( .B0(n201), .B1(n189), .A0N(\memory[5][1] ), .A1N(n189), 
        .Y(n127) );
  OAI2BB2X1M U132 ( .B0(n200), .B1(n189), .A0N(\memory[5][2] ), .A1N(n189), 
        .Y(n128) );
  OAI2BB2X1M U133 ( .B0(n199), .B1(n189), .A0N(\memory[5][3] ), .A1N(n189), 
        .Y(n129) );
  OAI2BB2X1M U134 ( .B0(n198), .B1(n189), .A0N(\memory[5][4] ), .A1N(n189), 
        .Y(n130) );
  OAI2BB2X1M U135 ( .B0(n197), .B1(n189), .A0N(\memory[5][5] ), .A1N(n189), 
        .Y(n131) );
  OAI2BB2X1M U136 ( .B0(n196), .B1(n189), .A0N(\memory[5][6] ), .A1N(n189), 
        .Y(n132) );
  OAI2BB2X1M U137 ( .B0(n195), .B1(n189), .A0N(\memory[5][7] ), .A1N(n189), 
        .Y(n133) );
  OAI2BB2X1M U138 ( .B0(n202), .B1(n188), .A0N(\memory[6][0] ), .A1N(n188), 
        .Y(n134) );
  OAI2BB2X1M U139 ( .B0(n201), .B1(n188), .A0N(\memory[6][1] ), .A1N(n188), 
        .Y(n135) );
  OAI2BB2X1M U140 ( .B0(n200), .B1(n188), .A0N(\memory[6][2] ), .A1N(n188), 
        .Y(n136) );
  OAI2BB2X1M U141 ( .B0(n199), .B1(n188), .A0N(\memory[6][3] ), .A1N(n188), 
        .Y(n137) );
  OAI2BB2X1M U142 ( .B0(n198), .B1(n188), .A0N(\memory[6][4] ), .A1N(n188), 
        .Y(n138) );
  OAI2BB2X1M U143 ( .B0(n197), .B1(n188), .A0N(\memory[6][5] ), .A1N(n188), 
        .Y(n139) );
  OAI2BB2X1M U144 ( .B0(n196), .B1(n188), .A0N(\memory[6][6] ), .A1N(n188), 
        .Y(n140) );
  OAI2BB2X1M U145 ( .B0(n195), .B1(n188), .A0N(\memory[6][7] ), .A1N(n188), 
        .Y(n141) );
  OAI2BB2X1M U146 ( .B0(n202), .B1(n187), .A0N(\memory[7][0] ), .A1N(n187), 
        .Y(n142) );
  OAI2BB2X1M U147 ( .B0(n201), .B1(n187), .A0N(\memory[7][1] ), .A1N(n187), 
        .Y(n143) );
  OAI2BB2X1M U148 ( .B0(n200), .B1(n187), .A0N(\memory[7][2] ), .A1N(n187), 
        .Y(n144) );
  OAI2BB2X1M U149 ( .B0(n199), .B1(n187), .A0N(\memory[7][3] ), .A1N(n187), 
        .Y(n145) );
  OAI2BB2X1M U150 ( .B0(n198), .B1(n187), .A0N(\memory[7][4] ), .A1N(n187), 
        .Y(n146) );
  OAI2BB2X1M U151 ( .B0(n197), .B1(n187), .A0N(\memory[7][5] ), .A1N(n187), 
        .Y(n147) );
  OAI2BB2X1M U152 ( .B0(n196), .B1(n187), .A0N(\memory[7][6] ), .A1N(n187), 
        .Y(n148) );
  OAI2BB2X1M U153 ( .B0(n195), .B1(n187), .A0N(\memory[7][7] ), .A1N(n187), 
        .Y(n149) );
  AND2X2M U154 ( .A(w_mem_addr[2]), .B(n80), .Y(n82) );
  NAND3X2M U155 ( .A(n76), .B(n194), .C(w_mem_addr[0]), .Y(n77) );
  NAND3X2M U156 ( .A(n76), .B(n193), .C(w_mem_addr[1]), .Y(n78) );
  NAND3X2M U157 ( .A(w_mem_addr[0]), .B(n76), .C(w_mem_addr[1]), .Y(n79) );
  NAND3X2M U158 ( .A(w_mem_addr[1]), .B(w_mem_addr[0]), .C(n82), .Y(n85) );
  NAND3X2M U159 ( .A(w_mem_addr[0]), .B(n194), .C(n82), .Y(n83) );
  NAND3X2M U160 ( .A(w_mem_addr[1]), .B(n193), .C(n82), .Y(n84) );
  INVX2M U161 ( .A(N10), .Y(n178) );
  INVX2M U162 ( .A(w_mem_addr[0]), .Y(n193) );
  INVX2M U163 ( .A(w_mem_addr[1]), .Y(n194) );
  INVX2M U164 ( .A(WR_DATA_mem[0]), .Y(n202) );
  INVX2M U165 ( .A(WR_DATA_mem[1]), .Y(n201) );
  INVX2M U166 ( .A(WR_DATA_mem[2]), .Y(n200) );
  INVX2M U167 ( .A(WR_DATA_mem[3]), .Y(n199) );
  INVX2M U168 ( .A(WR_DATA_mem[4]), .Y(n198) );
  INVX2M U169 ( .A(WR_DATA_mem[5]), .Y(n197) );
  INVX2M U170 ( .A(WR_DATA_mem[6]), .Y(n196) );
  INVX2M U171 ( .A(WR_DATA_mem[7]), .Y(n195) );
  AO22X1M U172 ( .A0(\memory[3][0] ), .A1(n170), .B0(\memory[1][0] ), .B1(n169), .Y(n65) );
  AOI221XLM U173 ( .A0(\memory[5][0] ), .A1(n173), .B0(\memory[7][0] ), .B1(
        n172), .C0(n65), .Y(n68) );
  AO22X1M U174 ( .A0(\memory[2][0] ), .A1(n170), .B0(\memory[0][0] ), .B1(n169), .Y(n66) );
  AOI221XLM U175 ( .A0(\memory[4][0] ), .A1(n173), .B0(\memory[6][0] ), .B1(
        n172), .C0(n66), .Y(n67) );
  OAI22X1M U176 ( .A0(n178), .A1(n68), .B0(N10), .B1(n67), .Y(RD_DATA_mem[0])
         );
  AO22X1M U177 ( .A0(\memory[3][1] ), .A1(n170), .B0(\memory[1][1] ), .B1(n169), .Y(n69) );
  AOI221XLM U178 ( .A0(\memory[5][1] ), .A1(n173), .B0(\memory[7][1] ), .B1(
        n172), .C0(n69), .Y(n72) );
  AO22X1M U179 ( .A0(\memory[2][1] ), .A1(n170), .B0(\memory[0][1] ), .B1(n169), .Y(n70) );
  AOI221XLM U180 ( .A0(\memory[4][1] ), .A1(n173), .B0(\memory[6][1] ), .B1(
        n172), .C0(n70), .Y(n71) );
  OAI22X1M U181 ( .A0(n178), .A1(n72), .B0(N10), .B1(n71), .Y(RD_DATA_mem[1])
         );
  AO22X1M U182 ( .A0(\memory[3][2] ), .A1(n170), .B0(\memory[1][2] ), .B1(n169), .Y(n73) );
  AOI221XLM U183 ( .A0(\memory[5][2] ), .A1(n173), .B0(\memory[7][2] ), .B1(
        n172), .C0(n73), .Y(n151) );
  AO22X1M U184 ( .A0(\memory[2][2] ), .A1(n170), .B0(\memory[0][2] ), .B1(n169), .Y(n74) );
  AOI221XLM U185 ( .A0(\memory[4][2] ), .A1(n173), .B0(\memory[6][2] ), .B1(
        n172), .C0(n74), .Y(n150) );
  OAI22X1M U186 ( .A0(n178), .A1(n151), .B0(N10), .B1(n150), .Y(RD_DATA_mem[2]) );
  AO22X1M U187 ( .A0(\memory[3][3] ), .A1(n170), .B0(\memory[1][3] ), .B1(n169), .Y(n152) );
  AOI221XLM U188 ( .A0(\memory[5][3] ), .A1(n173), .B0(\memory[7][3] ), .B1(
        n172), .C0(n152), .Y(n155) );
  AO22X1M U189 ( .A0(\memory[2][3] ), .A1(n170), .B0(\memory[0][3] ), .B1(n169), .Y(n153) );
  AOI221XLM U190 ( .A0(\memory[4][3] ), .A1(n173), .B0(\memory[6][3] ), .B1(
        n172), .C0(n153), .Y(n154) );
  OAI22X1M U191 ( .A0(n178), .A1(n155), .B0(N10), .B1(n154), .Y(RD_DATA_mem[3]) );
  AO22X1M U192 ( .A0(\memory[3][4] ), .A1(n170), .B0(\memory[1][4] ), .B1(n169), .Y(n156) );
  AOI221XLM U193 ( .A0(\memory[5][4] ), .A1(n173), .B0(\memory[7][4] ), .B1(
        n172), .C0(n156), .Y(n159) );
  AO22X1M U194 ( .A0(\memory[2][4] ), .A1(n170), .B0(\memory[0][4] ), .B1(n169), .Y(n157) );
  AOI221XLM U195 ( .A0(\memory[4][4] ), .A1(n173), .B0(\memory[6][4] ), .B1(
        n172), .C0(n157), .Y(n158) );
  OAI22X1M U196 ( .A0(n178), .A1(n159), .B0(N10), .B1(n158), .Y(RD_DATA_mem[4]) );
  AO22X1M U197 ( .A0(\memory[3][5] ), .A1(n170), .B0(\memory[1][5] ), .B1(n169), .Y(n160) );
  AOI221XLM U198 ( .A0(\memory[5][5] ), .A1(n173), .B0(\memory[7][5] ), .B1(
        n172), .C0(n160), .Y(n163) );
  AO22X1M U199 ( .A0(\memory[2][5] ), .A1(n170), .B0(\memory[0][5] ), .B1(n169), .Y(n161) );
  AOI221XLM U200 ( .A0(\memory[4][5] ), .A1(n173), .B0(\memory[6][5] ), .B1(
        n172), .C0(n161), .Y(n162) );
  OAI22X1M U201 ( .A0(n178), .A1(n163), .B0(N10), .B1(n162), .Y(RD_DATA_mem[5]) );
  AO22X1M U202 ( .A0(\memory[3][6] ), .A1(n170), .B0(\memory[1][6] ), .B1(n169), .Y(n164) );
  AOI221XLM U203 ( .A0(\memory[5][6] ), .A1(n173), .B0(\memory[7][6] ), .B1(
        n172), .C0(n164), .Y(n167) );
  AO22X1M U204 ( .A0(\memory[2][6] ), .A1(n170), .B0(\memory[0][6] ), .B1(n169), .Y(n165) );
  AOI221XLM U205 ( .A0(\memory[4][6] ), .A1(n173), .B0(\memory[6][6] ), .B1(
        n172), .C0(n165), .Y(n166) );
  OAI22X1M U206 ( .A0(n178), .A1(n167), .B0(N10), .B1(n166), .Y(RD_DATA_mem[6]) );
  AO22X1M U207 ( .A0(\memory[3][7] ), .A1(n170), .B0(\memory[1][7] ), .B1(n169), .Y(n168) );
  AOI221XLM U208 ( .A0(\memory[5][7] ), .A1(n173), .B0(\memory[7][7] ), .B1(
        n172), .C0(n168), .Y(n175) );
  AO22X1M U209 ( .A0(\memory[2][7] ), .A1(n170), .B0(\memory[0][7] ), .B1(n169), .Y(n171) );
  AOI221XLM U210 ( .A0(\memory[4][7] ), .A1(n173), .B0(\memory[6][7] ), .B1(
        n172), .C0(n171), .Y(n174) );
  OAI22X1M U211 ( .A0(n175), .A1(n178), .B0(N10), .B1(n174), .Y(RD_DATA_mem[7]) );
  INVXLM U212 ( .A(test_se), .Y(n206) );
  INVXLM U213 ( .A(n206), .Y(n207) );
  INVXLM U214 ( .A(n206), .Y(n208) );
  INVXLM U215 ( .A(n206), .Y(n209) );
  INVXLM U216 ( .A(n206), .Y(n210) );
endmodule


module DF_SYNC_BUS_WIDTH4_test_0 ( CLK, RST, Async, sync, test_si, test_se );
  input [3:0] Async;
  output [3:0] sync;
  input CLK, RST, test_si, test_se;

  wire   [3:0] meta_flop;

  SDFFRQX2M \sync_reg[1]  ( .D(meta_flop[1]), .SI(sync[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync[1]) );
  SDFFRQX2M \sync_reg[0]  ( .D(meta_flop[0]), .SI(meta_flop[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync[0]) );
  SDFFRQX2M \sync_reg[3]  ( .D(meta_flop[3]), .SI(sync[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync[3]) );
  SDFFRQX2M \sync_reg[2]  ( .D(meta_flop[2]), .SI(sync[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync[2]) );
  SDFFRQX2M \meta_flop_reg[3]  ( .D(Async[3]), .SI(meta_flop[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(meta_flop[3]) );
  SDFFRQX2M \meta_flop_reg[2]  ( .D(Async[2]), .SI(meta_flop[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(meta_flop[2]) );
  SDFFRQX2M \meta_flop_reg[1]  ( .D(Async[1]), .SI(meta_flop[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(meta_flop[1]) );
  SDFFRQX2M \meta_flop_reg[0]  ( .D(Async[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(meta_flop[0]) );
endmodule


module DF_SYNC_BUS_WIDTH4_test_1 ( CLK, RST, Async, sync, test_si, test_se );
  input [3:0] Async;
  output [3:0] sync;
  input CLK, RST, test_si, test_se;

  wire   [3:0] meta_flop;

  SDFFRQX2M \sync_reg[3]  ( .D(meta_flop[3]), .SI(sync[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync[3]) );
  SDFFRQX2M \sync_reg[2]  ( .D(meta_flop[2]), .SI(sync[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync[2]) );
  SDFFRQX2M \sync_reg[1]  ( .D(meta_flop[1]), .SI(sync[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync[1]) );
  SDFFRQX2M \sync_reg[0]  ( .D(meta_flop[0]), .SI(meta_flop[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync[0]) );
  SDFFRQX2M \meta_flop_reg[3]  ( .D(Async[3]), .SI(meta_flop[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(meta_flop[3]) );
  SDFFRQX2M \meta_flop_reg[2]  ( .D(Async[2]), .SI(meta_flop[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(meta_flop[2]) );
  SDFFRQX2M \meta_flop_reg[1]  ( .D(Async[1]), .SI(meta_flop[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(meta_flop[1]) );
  SDFFRQX2M \meta_flop_reg[0]  ( .D(Async[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(meta_flop[0]) );
endmodule


module FIFO_WR_address4_test_1 ( W_INC, W_CLK, W_RST, sync_rd, w_full, w_ptr, 
        w_addr, test_si, test_se );
  input [3:0] sync_rd;
  output [3:0] w_ptr;
  output [3:0] w_addr;
  input W_INC, W_CLK, W_RST, test_si, test_se;
  output w_full;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [2:0] w_ptr_comb;

  SDFFRQX2M \w_addr_reg[3]  ( .D(n19), .SI(w_addr[2]), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(w_addr[3]) );
  SDFFRQX2M \w_addr_reg[2]  ( .D(n20), .SI(w_addr[1]), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(w_addr[2]) );
  SDFFRQX2M \w_ptr_reg[3]  ( .D(w_addr[3]), .SI(w_ptr[2]), .SE(test_se), .CK(
        W_CLK), .RN(W_RST), .Q(w_ptr[3]) );
  SDFFRQX2M \w_ptr_reg[2]  ( .D(w_ptr_comb[2]), .SI(w_ptr[1]), .SE(test_se), 
        .CK(W_CLK), .RN(W_RST), .Q(w_ptr[2]) );
  SDFFRQX2M \w_ptr_reg[1]  ( .D(w_ptr_comb[1]), .SI(w_ptr[0]), .SE(test_se), 
        .CK(W_CLK), .RN(W_RST), .Q(w_ptr[1]) );
  SDFFRQX2M \w_ptr_reg[0]  ( .D(w_ptr_comb[0]), .SI(w_addr[3]), .SE(test_se), 
        .CK(W_CLK), .RN(W_RST), .Q(w_ptr[0]) );
  SDFFRX1M \w_addr_reg[0]  ( .D(n22), .SI(test_si), .SE(test_se), .CK(W_CLK), 
        .RN(W_RST), .Q(w_addr[0]), .QN(n9) );
  SDFFRQX2M \w_addr_reg[1]  ( .D(n21), .SI(w_addr[0]), .SE(test_se), .CK(W_CLK), .RN(W_RST), .Q(w_addr[1]) );
  NAND2X2M U11 ( .A(W_INC), .B(n10), .Y(n14) );
  INVX2M U12 ( .A(n10), .Y(w_full) );
  XNOR2X2M U13 ( .A(w_ptr_comb[1]), .B(sync_rd[1]), .Y(n15) );
  XNOR2X2M U14 ( .A(n9), .B(w_addr[1]), .Y(w_ptr_comb[0]) );
  NOR2X2M U15 ( .A(n14), .B(n9), .Y(n13) );
  XNOR2X2M U16 ( .A(w_addr[2]), .B(n12), .Y(n20) );
  XNOR2X2M U17 ( .A(w_addr[3]), .B(n11), .Y(n19) );
  NAND2BX2M U18 ( .AN(n12), .B(w_addr[2]), .Y(n11) );
  NAND4X2M U19 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n10) );
  CLKXOR2X2M U20 ( .A(w_addr[3]), .B(sync_rd[3]), .Y(n18) );
  XNOR2X2M U21 ( .A(w_ptr_comb[0]), .B(sync_rd[0]), .Y(n16) );
  CLKXOR2X2M U22 ( .A(sync_rd[2]), .B(w_ptr_comb[2]), .Y(n17) );
  NAND2X2M U23 ( .A(n13), .B(w_addr[1]), .Y(n12) );
  CLKXOR2X2M U24 ( .A(w_addr[3]), .B(w_addr[2]), .Y(w_ptr_comb[2]) );
  CLKXOR2X2M U25 ( .A(w_addr[1]), .B(w_addr[2]), .Y(w_ptr_comb[1]) );
  CLKXOR2X2M U26 ( .A(w_addr[1]), .B(n13), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n9), .B(n14), .Y(n22) );
endmodule


module FIFO_RD_address4_test_1 ( R_INC, R_CLK, R_RST, sync_wr, r_empty, r_ptr, 
        r_addr, test_si, test_se );
  input [3:0] sync_wr;
  output [3:0] r_ptr;
  output [3:0] r_addr;
  input R_INC, R_CLK, R_RST, test_si, test_se;
  output r_empty;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [2:0] r_ptr_comb;

  SDFFRQX2M \r_addr_reg[3]  ( .D(n19), .SI(r_addr[2]), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(r_addr[3]) );
  SDFFRX1M \r_addr_reg[0]  ( .D(n22), .SI(test_si), .SE(test_se), .CK(R_CLK), 
        .RN(R_RST), .Q(r_addr[0]), .QN(n9) );
  SDFFRQX2M \r_addr_reg[2]  ( .D(n20), .SI(r_addr[1]), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(r_addr[2]) );
  SDFFRQX2M \r_addr_reg[1]  ( .D(n21), .SI(r_addr[0]), .SE(test_se), .CK(R_CLK), .RN(R_RST), .Q(r_addr[1]) );
  SDFFRQX2M \r_ptr_reg[3]  ( .D(r_addr[3]), .SI(r_ptr[2]), .SE(test_se), .CK(
        R_CLK), .RN(R_RST), .Q(r_ptr[3]) );
  SDFFRQX2M \r_ptr_reg[2]  ( .D(r_ptr_comb[2]), .SI(r_ptr[1]), .SE(test_se), 
        .CK(R_CLK), .RN(R_RST), .Q(r_ptr[2]) );
  SDFFRQX2M \r_ptr_reg[1]  ( .D(r_ptr_comb[1]), .SI(r_ptr[0]), .SE(test_se), 
        .CK(R_CLK), .RN(R_RST), .Q(r_ptr[1]) );
  SDFFRQX2M \r_ptr_reg[0]  ( .D(r_ptr_comb[0]), .SI(r_addr[3]), .SE(test_se), 
        .CK(R_CLK), .RN(R_RST), .Q(r_ptr[0]) );
  INVX2M U11 ( .A(n10), .Y(r_empty) );
  XNOR2X2M U12 ( .A(r_ptr_comb[2]), .B(sync_wr[2]), .Y(n18) );
  XNOR2X2M U13 ( .A(n9), .B(r_addr[1]), .Y(r_ptr_comb[0]) );
  NOR2X2M U14 ( .A(n14), .B(n9), .Y(n13) );
  XNOR2X2M U15 ( .A(r_addr[2]), .B(n12), .Y(n20) );
  XNOR2X2M U16 ( .A(r_addr[3]), .B(n11), .Y(n19) );
  NAND2BX2M U17 ( .AN(n12), .B(r_addr[2]), .Y(n11) );
  NAND4X2M U18 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n10) );
  XNOR2X2M U19 ( .A(r_addr[3]), .B(sync_wr[3]), .Y(n17) );
  XNOR2X2M U20 ( .A(r_ptr_comb[0]), .B(sync_wr[0]), .Y(n16) );
  XNOR2X2M U21 ( .A(r_ptr_comb[1]), .B(sync_wr[1]), .Y(n15) );
  NAND2X2M U22 ( .A(n13), .B(r_addr[1]), .Y(n12) );
  NAND2X2M U23 ( .A(R_INC), .B(n10), .Y(n14) );
  CLKXOR2X2M U24 ( .A(r_addr[1]), .B(r_addr[2]), .Y(r_ptr_comb[1]) );
  CLKXOR2X2M U25 ( .A(r_addr[3]), .B(r_addr[2]), .Y(r_ptr_comb[2]) );
  CLKXOR2X2M U26 ( .A(r_addr[1]), .B(n13), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n9), .B(n14), .Y(n22) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_test_1 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, 
        R_INC, WR_DATA, RD_DATA, FULL, EMPTY, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   n1, n2, n3, n4;
  wire   [3:0] Wr_addr;
  wire   [3:0] Rd_addr;
  wire   [3:0] rptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(R_RST), .Y(n4) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_mem_depth8_test_1 U0_memory ( .WR_DATA_mem(
        WR_DATA), .W_CLK(W_CLK), .W_RST(n1), .wfull(FULL), .winc(W_INC), 
        .w_mem_addr(Wr_addr), .r_mem_addr(Rd_addr), .RD_DATA_mem(RD_DATA), 
        .test_si2(test_si2), .test_si1(rq2_wptr[3]), .test_so2(test_so2), 
        .test_so1(test_so1), .test_se(test_se) );
  DF_SYNC_BUS_WIDTH4_test_0 U0_SYNC_r2w ( .CLK(W_CLK), .RST(n1), .Async(rptr), 
        .sync(wq2_rptr), .test_si(wptr[3]), .test_se(test_se) );
  DF_SYNC_BUS_WIDTH4_test_1 U0_SYNC_w2r ( .CLK(R_CLK), .RST(n3), .Async(wptr), 
        .sync(rq2_wptr), .test_si(wq2_rptr[3]), .test_se(test_se) );
  FIFO_WR_address4_test_1 U0_FIFO_WR ( .W_INC(W_INC), .W_CLK(W_CLK), .W_RST(n1), .sync_rd(wq2_rptr), .w_full(FULL), .w_ptr(wptr), .w_addr(Wr_addr), .test_si(
        rptr[3]), .test_se(test_se) );
  FIFO_RD_address4_test_1 U0_FIFO_RD ( .R_INC(R_INC), .R_CLK(R_CLK), .R_RST(n3), .sync_wr(rq2_wptr), .r_empty(EMPTY), .r_ptr(rptr), .r_addr(Rd_addr), 
        .test_si(test_si1), .test_se(test_se) );
endmodule


module DATA_SYN_BUS_WIDTH8_test_1 ( bus_enable, CLK, RST, unsync_bus, sync_bus, 
        enable_pulse, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse, test_so;
  wire   enable_flop, n1, n3, n5, n7, n9, n11, n13, n15, n17, n22;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_flop) );
  SDFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_reg[1]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(enable_flop), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_pulse) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(enable_pulse), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module ALU_op_width8_out_width16_func_width4_DW_div_uns_0 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_op_width8_out_width16_func_width4_DW01_sub_0 ( A, B, CI, DIFF, CO
 );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_op_width8_out_width16_func_width4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_op_width8_out_width16_func_width4_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_op_width8_out_width16_func_width4_DW02_mult_0 ( A, B, TC, PRODUCT
 );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_op_width8_out_width16_func_width4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, 
        n15, n12, n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
endmodule


module ALU_op_width8_out_width16_func_width4_test_1 ( A, B, ALU_FUN, EN, CLK, 
        RST, out_valid, ALU_OUT, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST, test_si, test_se;
  output out_valid;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] ALU_OUT_COMB;

  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_COMB[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_COMB[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_COMB[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_COMB[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_COMB[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_COMB[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_COMB[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_COMB[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_COMB[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_COMB[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_COMB[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_COMB[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_COMB[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_COMB[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_COMB[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_COMB[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M out_valid_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(out_valid) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U23 ( .A0N(n142), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U24 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U25 ( .AN(n123), .B(n145), .Y(n54) );
  AND2X2M U26 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U27 ( .AN(n52), .B(n146), .Y(n48) );
  AND2X2M U28 ( .A(n123), .B(n122), .Y(n67) );
  INVX2M U29 ( .A(n117), .Y(n145) );
  BUFX2M U30 ( .A(n58), .Y(n30) );
  NOR2X2M U31 ( .A(n124), .B(n145), .Y(n58) );
  INVX2M U32 ( .A(n108), .Y(n141) );
  INVX2M U33 ( .A(n124), .Y(n142) );
  OAI2BB1X2M U34 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_COMB[9]) );
  OAI2BB1X2M U35 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_COMB[10]) );
  OAI2BB1X2M U36 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_COMB[11]) );
  OAI2BB1X2M U37 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_COMB[12]) );
  OAI2BB1X2M U38 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_COMB[13]) );
  OAI2BB1X2M U39 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_COMB[14]) );
  OAI2BB1X2M U40 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(ALU_OUT_COMB[15]) );
  NOR3BX2M U41 ( .AN(n122), .B(n143), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U42 ( .A(n145), .B(ALU_FUN[2]), .C(n143), .Y(n52) );
  NOR2X2M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  NAND2X2M U44 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U45 ( .A(ALU_FUN[0]), .Y(n144) );
  AND3X2M U46 ( .A(n123), .B(n144), .C(n3), .Y(n63) );
  NAND3X2M U47 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  INVX2M U48 ( .A(ALU_FUN[1]), .Y(n143) );
  NAND3X2M U49 ( .A(n142), .B(n144), .C(n3), .Y(n53) );
  NOR2X2M U50 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NOR2X2M U51 ( .A(n144), .B(n3), .Y(n122) );
  NAND3X2M U52 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  NAND2X2M U53 ( .A(EN), .B(n140), .Y(n49) );
  AND2X2M U54 ( .A(ALU_FUN[2]), .B(n143), .Y(n116) );
  AND4X2M U55 ( .A(N159), .B(n116), .C(n3), .D(n144), .Y(n107) );
  INVX2M U56 ( .A(EN), .Y(n146) );
  INVX2M U57 ( .A(n4), .Y(n139) );
  OAI222X1M U58 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n152), 
        .Y(n71) );
  AOI221XLM U59 ( .A0(n28), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n73)
         );
  AOI221XLM U60 ( .A0(n63), .A1(n151), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  AOI31X2M U61 ( .A0(n92), .A1(n93), .A2(n94), .B0(n146), .Y(ALU_OUT_COMB[2])
         );
  AOI22X1M U62 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n92) );
  AOI221XLM U63 ( .A0(n8), .A1(n141), .B0(n30), .B1(n155), .C0(n95), .Y(n94)
         );
  AOI222X1M U64 ( .A0(N111), .A1(n52), .B0(n7), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n93) );
  AOI31X2M U65 ( .A0(n86), .A1(n87), .A2(n88), .B0(n146), .Y(ALU_OUT_COMB[3])
         );
  AOI22X1M U66 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n86) );
  AOI221XLM U67 ( .A0(n9), .A1(n141), .B0(n30), .B1(n154), .C0(n89), .Y(n88)
         );
  AOI222X1M U68 ( .A0(N112), .A1(n52), .B0(n8), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n87) );
  AOI31X2M U69 ( .A0(n80), .A1(n81), .A2(n82), .B0(n146), .Y(ALU_OUT_COMB[4])
         );
  AOI22X1M U70 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n80) );
  AOI221XLM U71 ( .A0(n141), .A1(n27), .B0(n30), .B1(n153), .C0(n83), .Y(n82)
         );
  AOI222X1M U72 ( .A0(N113), .A1(n52), .B0(n9), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n81) );
  AOI31X2M U73 ( .A0(n74), .A1(n75), .A2(n76), .B0(n146), .Y(ALU_OUT_COMB[5])
         );
  AOI22X1M U74 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n74) );
  AOI221XLM U75 ( .A0(n141), .A1(n28), .B0(n30), .B1(n152), .C0(n77), .Y(n76)
         );
  AOI222X1M U76 ( .A0(N114), .A1(n52), .B0(n27), .B1(n59), .C0(N130), .C1(n66), 
        .Y(n75) );
  AOI31X2M U77 ( .A0(n68), .A1(n69), .A2(n70), .B0(n146), .Y(ALU_OUT_COMB[6])
         );
  AOI22X1M U78 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n68) );
  AOI221XLM U79 ( .A0(n141), .A1(n29), .B0(n30), .B1(n151), .C0(n71), .Y(n70)
         );
  AOI222X1M U80 ( .A0(N115), .A1(n52), .B0(n59), .B1(n28), .C0(N131), .C1(n66), 
        .Y(n69) );
  AOI31X2M U81 ( .A0(n55), .A1(n56), .A2(n57), .B0(n146), .Y(ALU_OUT_COMB[7])
         );
  AOI22X1M U82 ( .A0(N132), .A1(n66), .B0(N116), .B1(n52), .Y(n56) );
  AOI22X1M U83 ( .A0(N107), .A1(n67), .B0(N98), .B1(n54), .Y(n55) );
  AOI221XLM U84 ( .A0(n30), .A1(n150), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U85 ( .A0(n110), .A1(n111), .A2(n112), .B0(n146), .Y(
        ALU_OUT_COMB[0]) );
  AOI22X1M U86 ( .A0(N100), .A1(n67), .B0(N91), .B1(n54), .Y(n110) );
  AOI211X2M U87 ( .A0(n30), .A1(n157), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U88 ( .A0(N109), .A1(n52), .B0(n5), .B1(n59), .C0(N125), .C1(n66), 
        .Y(n111) );
  AOI31X2M U89 ( .A0(n98), .A1(n99), .A2(n100), .B0(n146), .Y(ALU_OUT_COMB[1])
         );
  AOI211X2M U90 ( .A0(n7), .A1(n141), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U91 ( .A0(N126), .A1(n66), .B0(n30), .B1(n156), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U92 ( .A0(N92), .A1(n54), .B0(N110), .B1(n52), .C0(N101), .C1(n67), 
        .Y(n98) );
  INVX2M U93 ( .A(n109), .Y(n140) );
  AOI211X2M U94 ( .A0(N108), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U95 ( .A0(n50), .A1(n51), .B0(n146), .Y(ALU_OUT_COMB[8]) );
  AOI21X2M U96 ( .A0(N99), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U97 ( .B0(N117), .B1(n52), .A0N(n150), .A1N(n53), .Y(n51) );
  BUFX2M U98 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U99 ( .A(n6), .Y(n156) );
  INVX2M U100 ( .A(n5), .Y(n157) );
  INVX2M U101 ( .A(n28), .Y(n151) );
  INVX2M U102 ( .A(n29), .Y(n150) );
  INVX2M U103 ( .A(n8), .Y(n154) );
  INVX2M U104 ( .A(n7), .Y(n155) );
  INVX2M U105 ( .A(n27), .Y(n152) );
  INVX2M U106 ( .A(n9), .Y(n153) );
  OAI222X1M U107 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n156), .Y(n95) );
  AOI221XLM U108 ( .A0(n7), .A1(n63), .B0(n64), .B1(n155), .C0(n30), .Y(n97)
         );
  AOI221XLM U109 ( .A0(n63), .A1(n155), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U110 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n155), .Y(n89) );
  AOI221XLM U111 ( .A0(n8), .A1(n63), .B0(n64), .B1(n154), .C0(n30), .Y(n91)
         );
  AOI221XLM U112 ( .A0(n63), .A1(n154), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U113 ( .A0(n84), .A1(n149), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n154), .Y(n83) );
  INVX2M U114 ( .A(B[4]), .Y(n149) );
  AOI221XLM U115 ( .A0(n9), .A1(n63), .B0(n64), .B1(n153), .C0(n30), .Y(n85)
         );
  AOI221XLM U116 ( .A0(n63), .A1(n153), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U117 ( .A0(n78), .A1(n148), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n153), .Y(n77) );
  INVX2M U118 ( .A(B[5]), .Y(n148) );
  AOI221XLM U119 ( .A0(n27), .A1(n63), .B0(n64), .B1(n152), .C0(n30), .Y(n79)
         );
  AOI221XLM U120 ( .A0(n63), .A1(n152), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U121 ( .A0(n61), .A1(n147), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n151), .Y(n60) );
  INVX2M U122 ( .A(B[7]), .Y(n147) );
  AOI221XLM U123 ( .A0(n63), .A1(n29), .B0(n64), .B1(n150), .C0(n30), .Y(n62)
         );
  AOI221XLM U124 ( .A0(n63), .A1(n150), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U125 ( .A(n31), .Y(n135) );
  OAI2B2X1M U126 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n156), .Y(n114) );
  AOI221XLM U127 ( .A0(n63), .A1(n157), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U128 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n157), .Y(n102) );
  AOI221XLM U129 ( .A0(n63), .A1(n156), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U130 ( .A(n42), .Y(n137) );
  OAI21X2M U131 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U132 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U133 ( .A0(n5), .A1(n63), .B0(n64), .B1(n157), .C0(n30), .Y(n119)
         );
  NOR3X2M U134 ( .A(n143), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U135 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U136 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U137 ( .A0(n6), .A1(n63), .B0(n64), .B1(n156), .C0(n30), .Y(n104)
         );
  NOR3X2M U138 ( .A(n144), .B(ALU_FUN[2]), .C(n143), .Y(n106) );
  BUFX2M U139 ( .A(A[7]), .Y(n29) );
  BUFX2M U140 ( .A(A[1]), .Y(n6) );
  BUFX2M U141 ( .A(A[0]), .Y(n5) );
  BUFX2M U142 ( .A(A[3]), .Y(n8) );
  BUFX2M U143 ( .A(A[2]), .Y(n7) );
  BUFX2M U144 ( .A(A[5]), .Y(n27) );
  BUFX2M U145 ( .A(A[4]), .Y(n9) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n150), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n156), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n151), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n150), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n156), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n156), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_op_width8_out_width16_func_width4_DW_div_uns_0 div_46 ( .a({n29, n28, 
        n27, n9, n8, n7, n6, n5}), .b({B[7], n4, B[5:0]}), .quotient({N132, 
        N131, N130, N129, N128, N127, N126, N125}) );
  ALU_op_width8_out_width16_func_width4_DW01_sub_0 sub_40 ( .A({1'b0, n29, n28, 
        n27, n9, n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), 
        .DIFF({N108, N107, N106, N105, N104, N103, N102, N101, N100}) );
  ALU_op_width8_out_width16_func_width4_DW01_add_0 add_37 ( .A({1'b0, n29, n28, 
        n27, n9, n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), 
        .SUM({N99, N98, N97, N96, N95, N94, N93, N92, N91}) );
  ALU_op_width8_out_width16_func_width4_DW02_mult_0 mult_43 ( .A({n29, n28, 
        n27, n9, n8, n7, n6, n5}), .B({B[7], n4, B[5:0]}), .TC(1'b0), 
        .PRODUCT({N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109}) );
endmodule


module data_sampling_scale_size6_count_num6_test_1 ( RX_IN, prescale, CLK, RST, 
        dat_samp_en, edge_cnt, sampled_bit, test_si, test_so, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input RX_IN, CLK, RST, dat_samp_en, test_si, test_se;
  output sampled_bit, test_so;
  wire   N25, n23, n24, n25, \add_17/carry[4] , \add_17/carry[3] ,
         \add_17/carry[2] , n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [4:0] half_edge;
  wire   [4:0] half_edge_n1;
  wire   [4:0] half_edge_p1;
  wire   [2:0] store;
  assign test_so = store[2];

  SDFFRQX2M \store_reg[2]  ( .D(n25), .SI(store[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(store[2]) );
  SDFFRQX2M \store_reg[1]  ( .D(n24), .SI(store[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(store[1]) );
  SDFFRQX2M \store_reg[0]  ( .D(n23), .SI(sampled_bit), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(store[0]) );
  SDFFRQX2M sampled_bit_reg ( .D(N25), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bit) );
  INVX2M U4 ( .A(half_edge[2]), .Y(n12) );
  ADDHX1M U5 ( .A(half_edge[2]), .B(\add_17/carry[2] ), .CO(\add_17/carry[3] ), 
        .S(half_edge_p1[2]) );
  ADDHX1M U6 ( .A(half_edge[1]), .B(half_edge[0]), .CO(\add_17/carry[2] ), .S(
        half_edge_p1[1]) );
  ADDHX1M U10 ( .A(half_edge[3]), .B(\add_17/carry[3] ), .CO(\add_17/carry[4] ), .S(half_edge_p1[3]) );
  INVX2M U11 ( .A(prescale[3]), .Y(n4) );
  CLKINVX1M U12 ( .A(prescale[1]), .Y(half_edge[0]) );
  NOR2X1M U13 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  AO21XLM U14 ( .A0(prescale[1]), .A1(prescale[2]), .B0(n1), .Y(half_edge[1])
         );
  CLKNAND2X2M U15 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U16 ( .A0(n1), .A1(n4), .B0(n2), .Y(half_edge[2]) );
  XNOR2X1M U17 ( .A(prescale[4]), .B(n2), .Y(half_edge[3]) );
  NOR2X1M U18 ( .A(prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U19 ( .A(prescale[5]), .B(n3), .Y(half_edge[4]) );
  NOR2X1M U20 ( .A(half_edge[1]), .B(half_edge[0]), .Y(n5) );
  AO21XLM U21 ( .A0(half_edge[0]), .A1(half_edge[1]), .B0(n5), .Y(
        half_edge_n1[1]) );
  CLKNAND2X2M U22 ( .A(n5), .B(n12), .Y(n6) );
  OAI21X1M U23 ( .A0(n5), .A1(n12), .B0(n6), .Y(half_edge_n1[2]) );
  XNOR2X1M U24 ( .A(half_edge[3]), .B(n6), .Y(half_edge_n1[3]) );
  NOR2X1M U25 ( .A(half_edge[3]), .B(n6), .Y(n11) );
  CLKXOR2X2M U26 ( .A(half_edge[4]), .B(n11), .Y(half_edge_n1[4]) );
  CLKXOR2X2M U27 ( .A(\add_17/carry[4] ), .B(half_edge[4]), .Y(half_edge_p1[4]) );
  MXI2X1M U28 ( .A(n13), .B(n14), .S0(n15), .Y(n25) );
  NOR2X1M U29 ( .A(n16), .B(n17), .Y(n15) );
  NAND4X1M U30 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  CLKXOR2X2M U31 ( .A(n22), .B(half_edge_p1[1]), .Y(n21) );
  XNOR2X1M U32 ( .A(edge_cnt[2]), .B(half_edge_p1[2]), .Y(n20) );
  XNOR2X1M U33 ( .A(edge_cnt[3]), .B(half_edge_p1[3]), .Y(n19) );
  CLKXOR2X2M U34 ( .A(n26), .B(half_edge_p1[4]), .Y(n18) );
  NAND4BX1M U35 ( .AN(edge_cnt[5]), .B(n27), .C(n28), .D(n29), .Y(n16) );
  XNOR2X1M U36 ( .A(edge_cnt[0]), .B(prescale[1]), .Y(n27) );
  CLKNAND2X2M U37 ( .A(store[2]), .B(dat_samp_en), .Y(n13) );
  MXI2X1M U38 ( .A(n14), .B(n30), .S0(n28), .Y(n24) );
  NAND4X1M U39 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n28) );
  NOR4BX1M U40 ( .AN(n29), .B(edge_cnt[5]), .C(n35), .D(n36), .Y(n34) );
  CLKXOR2X2M U41 ( .A(half_edge[1]), .B(edge_cnt[1]), .Y(n36) );
  CLKXOR2X2M U42 ( .A(half_edge[0]), .B(edge_cnt[0]), .Y(n35) );
  XNOR2X1M U43 ( .A(edge_cnt[3]), .B(half_edge[3]), .Y(n33) );
  CLKXOR2X2M U44 ( .A(n26), .B(half_edge[4]), .Y(n32) );
  CLKINVX1M U45 ( .A(edge_cnt[4]), .Y(n26) );
  XNOR2X1M U46 ( .A(edge_cnt[2]), .B(half_edge[2]), .Y(n31) );
  CLKNAND2X2M U47 ( .A(store[1]), .B(dat_samp_en), .Y(n30) );
  MXI2X1M U48 ( .A(n14), .B(n37), .S0(n29), .Y(n23) );
  NAND4X1M U49 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n29) );
  NOR3X1M U50 ( .A(n42), .B(edge_cnt[5]), .C(n43), .Y(n41) );
  CLKXOR2X2M U51 ( .A(prescale[1]), .B(edge_cnt[0]), .Y(n43) );
  CLKXOR2X2M U52 ( .A(half_edge_n1[4]), .B(edge_cnt[4]), .Y(n42) );
  XNOR2X1M U53 ( .A(edge_cnt[2]), .B(half_edge_n1[2]), .Y(n40) );
  XNOR2X1M U54 ( .A(edge_cnt[3]), .B(half_edge_n1[3]), .Y(n39) );
  CLKXOR2X2M U55 ( .A(n22), .B(half_edge_n1[1]), .Y(n38) );
  CLKINVX1M U56 ( .A(edge_cnt[1]), .Y(n22) );
  CLKNAND2X2M U57 ( .A(store[0]), .B(dat_samp_en), .Y(n37) );
  CLKNAND2X2M U58 ( .A(dat_samp_en), .B(RX_IN), .Y(n14) );
  AOI21BX1M U59 ( .A0(n44), .A1(n45), .B0N(dat_samp_en), .Y(N25) );
  OAI21X1M U60 ( .A0(store[0]), .A1(store[1]), .B0(store[2]), .Y(n45) );
  CLKNAND2X2M U61 ( .A(store[0]), .B(store[1]), .Y(n44) );
endmodule


module stop_check_test_1 ( sampl_bit_stp, stop_en, CLK, RST, stp_error, 
        test_si, test_se );
  input sampl_bit_stp, stop_en, CLK, RST, test_si, test_se;
  output stp_error;
  wire   N1;

  SDFFRQX2M stp_error_reg ( .D(N1), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(stp_error) );
  NOR2BX2M U4 ( .AN(stop_en), .B(sampl_bit_stp), .Y(N1) );
endmodule


module start_check ( sampl_bit_strt, start_en, strt_glitch );
  input sampl_bit_strt, start_en;
  output strt_glitch;


  AND2X2M U1 ( .A(start_en), .B(sampl_bit_strt), .Y(strt_glitch) );
endmodule


module par_check_DATA_WIDTH8_count_num6_scale_size6_test_1 ( sampl_bit_par, 
        PAR_TYP, par_chk_en, CLK, RST, prescale, bit_cnt, edge_cnt, P_DATA_PAR, 
        par_err, test_si, test_se );
  input [5:0] prescale;
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [7:0] P_DATA_PAR;
  input sampl_bit_par, PAR_TYP, par_chk_en, CLK, RST, test_si, test_se;
  output par_err;
  wire   par_bit, N15, n3, n5, n6, n7, n8, n9, n10, n11, n14, n15, n1, n2, n4,
         n16, n17, n18, n19, n20, n21, n22;

  SDFFRQX2M par_bit_reg ( .D(n14), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_bit) );
  SDFFRQX2M par_err_reg ( .D(n15), .SI(par_bit), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_err) );
  INVX2M U3 ( .A(par_chk_en), .Y(n22) );
  OAI2BB2X1M U4 ( .B0(n9), .B1(n22), .A0N(n10), .A1N(par_err), .Y(n15) );
  XNOR2X2M U5 ( .A(par_bit), .B(sampl_bit_par), .Y(n9) );
  AOI31X2M U6 ( .A0(bit_cnt[3]), .A1(bit_cnt[1]), .A2(n11), .B0(par_chk_en), 
        .Y(n10) );
  NOR3BX2M U7 ( .AN(N15), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n11) );
  XNOR2X2M U8 ( .A(P_DATA_PAR[3]), .B(P_DATA_PAR[2]), .Y(n7) );
  OAI2BB2X1M U9 ( .B0(n3), .B1(n22), .A0N(n22), .A1N(par_bit), .Y(n14) );
  XOR3XLM U10 ( .A(n5), .B(PAR_TYP), .C(n6), .Y(n3) );
  XOR3XLM U11 ( .A(P_DATA_PAR[1]), .B(P_DATA_PAR[0]), .C(n7), .Y(n6) );
  XOR3XLM U12 ( .A(P_DATA_PAR[5]), .B(P_DATA_PAR[4]), .C(n8), .Y(n5) );
  CLKXOR2X2M U13 ( .A(P_DATA_PAR[7]), .B(P_DATA_PAR[6]), .Y(n8) );
  NOR2BX1M U14 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n1) );
  OAI2B2X1M U17 ( .A1N(prescale[1]), .A0(n1), .B0(edge_cnt[1]), .B1(n1), .Y(
        n17) );
  NOR2BX1M U18 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n2) );
  OAI2B2X1M U19 ( .A1N(edge_cnt[1]), .A0(n2), .B0(prescale[1]), .B1(n2), .Y(
        n16) );
  XNOR2X1M U20 ( .A(prescale[5]), .B(edge_cnt[5]), .Y(n4) );
  NAND3X1M U21 ( .A(n17), .B(n16), .C(n4), .Y(n21) );
  CLKXOR2X2M U22 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n20) );
  CLKXOR2X2M U23 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n19) );
  CLKXOR2X2M U24 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n18) );
  NOR4X1M U25 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(N15) );
endmodule


module deserializer_DATA_WIDTH8_count_num6_scale_size6_test_1 ( sampled_bit, 
        deser_en, prescale, edge_cnt, CLK, RST, P_DATA, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  output [7:0] P_DATA;
  input sampled_bit, deser_en, CLK, RST, test_se;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n11, n13, n15, n17, n19, n21, n23,
         n25, n2, n3, n4, n5, n6, n7, n8, n9, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38;

  SDFFRQX2M \P_DATA_reg[0]  ( .D(n11), .SI(edge_cnt[5]), .SE(test_se), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n21), .SI(P_DATA[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n13), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n19), .SI(P_DATA[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n17), .SI(P_DATA[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n15), .SI(P_DATA[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[2]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n23), .SI(P_DATA[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n25), .SI(P_DATA[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[7]) );
  OAI22X1M U3 ( .A0(n31), .A1(n38), .B0(n1), .B1(n37), .Y(n13) );
  OAI22X1M U4 ( .A0(n31), .A1(n37), .B0(n1), .B1(n36), .Y(n15) );
  OAI22X1M U5 ( .A0(n31), .A1(n36), .B0(n1), .B1(n35), .Y(n17) );
  OAI22X1M U6 ( .A0(n31), .A1(n35), .B0(n1), .B1(n34), .Y(n19) );
  OAI22X1M U7 ( .A0(n31), .A1(n34), .B0(n1), .B1(n33), .Y(n21) );
  OAI22X1M U8 ( .A0(n31), .A1(n33), .B0(n1), .B1(n32), .Y(n23) );
  INVX2M U9 ( .A(n1), .Y(n31) );
  NAND2X2M U10 ( .A(deser_en), .B(N8), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n38), .A0N(P_DATA[0]), .A1N(n1), .Y(n11) );
  OAI2BB2X1M U12 ( .B0(n31), .B1(n32), .A0N(sampled_bit), .A1N(n31), .Y(n25)
         );
  OR2X2M U13 ( .A(prescale[1]), .B(prescale[0]), .Y(n2) );
  INVX2M U14 ( .A(P_DATA[7]), .Y(n32) );
  INVX2M U15 ( .A(P_DATA[6]), .Y(n33) );
  INVX2M U16 ( .A(P_DATA[2]), .Y(n37) );
  INVX2M U17 ( .A(P_DATA[3]), .Y(n36) );
  INVX2M U18 ( .A(P_DATA[4]), .Y(n35) );
  INVX2M U19 ( .A(P_DATA[5]), .Y(n34) );
  INVX2M U28 ( .A(P_DATA[1]), .Y(n38) );
  CLKINVX1M U29 ( .A(prescale[0]), .Y(N1) );
  OAI2BB1X1M U30 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n2), .Y(N2) );
  OR2X1M U31 ( .A(n2), .B(prescale[2]), .Y(n3) );
  OAI2BB1X1M U32 ( .A0N(n2), .A1N(prescale[2]), .B0(n3), .Y(N3) );
  OR2X1M U33 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U34 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N4) );
  OR2X1M U35 ( .A(n4), .B(prescale[4]), .Y(n5) );
  OAI2BB1X1M U36 ( .A0N(n4), .A1N(prescale[4]), .B0(n5), .Y(N5) );
  NOR2X1M U37 ( .A(n5), .B(prescale[5]), .Y(N7) );
  AO21XLM U38 ( .A0(n5), .A1(prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U39 ( .AN(N1), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U40 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N2), .B1(n6), .Y(n26) );
  XNOR2X1M U41 ( .A(N6), .B(edge_cnt[5]), .Y(n9) );
  NOR2BX1M U42 ( .AN(edge_cnt[0]), .B(N1), .Y(n7) );
  OAI2B2X1M U43 ( .A1N(N2), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n8) );
  NAND4BX1M U44 ( .AN(N7), .B(n26), .C(n9), .D(n8), .Y(n30) );
  CLKXOR2X2M U45 ( .A(N5), .B(edge_cnt[4]), .Y(n29) );
  CLKXOR2X2M U46 ( .A(N3), .B(edge_cnt[2]), .Y(n28) );
  CLKXOR2X2M U47 ( .A(N4), .B(edge_cnt[3]), .Y(n27) );
  NOR4X1M U48 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(N8) );
endmodule


module edge_bit_counter_count_num6_scale_size6_test_1 ( RST, CLK, prescale, 
        enable, PAR_EN, bit_cnt, edge_cnt, test_si, test_se );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input RST, CLK, enable, PAR_EN, test_si, test_se;
  wire   edge_high, N13, N14, N15, N16, N17, N18, N40, N41, N42, N43, N44, N45,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, \add_25/carry[5] , \add_25/carry[4] , \add_25/carry[3] ,
         \add_25/carry[2] , n1, n2, n13, n14, n15, n16, n17, n34, n35, n36,
         n37, n38, n39, n42, n43;

  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n33), .SI(bit_cnt[2]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n30), .SI(bit_cnt[1]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n31), .SI(bit_cnt[0]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n32), .SI(test_si), .SE(n43), .CK(CLK), .RN(
        RST), .Q(bit_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[5]  ( .D(N45), .SI(edge_cnt[4]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[5]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N40), .SI(bit_cnt[3]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N44), .SI(edge_cnt[3]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N43), .SI(edge_cnt[2]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N42), .SI(edge_cnt[1]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N41), .SI(edge_cnt[0]), .SE(n43), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[1]) );
  NAND2X2M U6 ( .A(enable), .B(n36), .Y(n20) );
  INVX2M U14 ( .A(edge_high), .Y(n36) );
  OAI22X1M U15 ( .A0(n39), .A1(n20), .B0(n21), .B1(n22), .Y(n31) );
  NOR2BX2M U16 ( .AN(n23), .B(n24), .Y(n21) );
  AND2X2M U17 ( .A(enable), .B(n36), .Y(n27) );
  AND2X2M U18 ( .A(N14), .B(n27), .Y(N41) );
  AND2X2M U19 ( .A(N15), .B(n27), .Y(N42) );
  AND2X2M U20 ( .A(N16), .B(n27), .Y(N43) );
  AND2X2M U21 ( .A(N17), .B(n27), .Y(N44) );
  OAI32X1M U22 ( .A0(n25), .A1(bit_cnt[3]), .A2(n22), .B0(n26), .B1(n38), .Y(
        n33) );
  INVX2M U23 ( .A(bit_cnt[3]), .Y(n38) );
  AOI2B1X1M U24 ( .A1N(n22), .A0(n25), .B0(n27), .Y(n26) );
  NAND3X2M U25 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .Y(n25) );
  NAND2X2M U26 ( .A(n28), .B(enable), .Y(n22) );
  AOI31X2M U27 ( .A0(n29), .A1(n37), .A2(bit_cnt[3]), .B0(n36), .Y(n28) );
  INVX2M U28 ( .A(bit_cnt[2]), .Y(n37) );
  OAI2BB2X1M U29 ( .B0(PAR_EN), .B1(n23), .A0N(n24), .A1N(PAR_EN), .Y(n29) );
  OAI2BB2X1M U30 ( .B0(bit_cnt[0]), .B1(n22), .A0N(bit_cnt[0]), .A1N(n27), .Y(
        n32) );
  OAI2BB1X2M U31 ( .A0N(N13), .A1N(n27), .B0(n22), .Y(N40) );
  NOR2BXLM U32 ( .AN(enable), .B(n18), .Y(n30) );
  CLKXOR2X2M U33 ( .A(n19), .B(bit_cnt[2]), .Y(n18) );
  NAND3X2M U34 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(edge_high), .Y(n19) );
  AND2X2M U35 ( .A(N18), .B(n27), .Y(N45) );
  NOR2X2M U36 ( .A(n39), .B(bit_cnt[0]), .Y(n24) );
  NAND2X2M U37 ( .A(bit_cnt[0]), .B(n39), .Y(n23) );
  INVX2M U38 ( .A(bit_cnt[1]), .Y(n39) );
  ADDHX1M U39 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_25/carry[2] ), .S(
        N14) );
  ADDHX1M U40 ( .A(edge_cnt[2]), .B(\add_25/carry[2] ), .CO(\add_25/carry[3] ), 
        .S(N15) );
  ADDHX1M U41 ( .A(edge_cnt[3]), .B(\add_25/carry[3] ), .CO(\add_25/carry[4] ), 
        .S(N16) );
  ADDHX1M U42 ( .A(edge_cnt[4]), .B(\add_25/carry[4] ), .CO(\add_25/carry[5] ), 
        .S(N17) );
  CLKINVX1M U43 ( .A(edge_cnt[0]), .Y(N13) );
  CLKXOR2X2M U44 ( .A(\add_25/carry[5] ), .B(edge_cnt[5]), .Y(N18) );
  NOR2BX1M U45 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n1) );
  OAI2B2X1M U46 ( .A1N(prescale[1]), .A0(n1), .B0(edge_cnt[1]), .B1(n1), .Y(
        n15) );
  NOR2BX1M U47 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n2) );
  OAI2B2X1M U48 ( .A1N(edge_cnt[1]), .A0(n2), .B0(prescale[1]), .B1(n2), .Y(
        n14) );
  XNOR2X1M U49 ( .A(prescale[5]), .B(edge_cnt[5]), .Y(n13) );
  NAND3X1M U50 ( .A(n15), .B(n14), .C(n13), .Y(n35) );
  CLKXOR2X2M U51 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n34) );
  CLKXOR2X2M U52 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n17) );
  CLKXOR2X2M U53 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n16) );
  NOR4X1M U54 ( .A(n35), .B(n34), .C(n17), .D(n16), .Y(edge_high) );
  INVXLM U55 ( .A(test_se), .Y(n42) );
  INVXLM U56 ( .A(n42), .Y(n43) );
endmodule


module FSM_RX_count_num6_scale_size6_test_1 ( RX_IN, prescale, RST, CLK, 
        PAR_EN, bit_cnt_fsm, edge_cnt_fsm, par_err_fsm, strt_glitch_fsm, 
        stp_err_fsm, count_en_fsm, data_en_fsm, par_en_fsm, strt_en_fsm, 
        stp_en_fsm, deser_en_fsm, data_valid, test_si, test_se );
  input [5:0] prescale;
  input [3:0] bit_cnt_fsm;
  input [5:0] edge_cnt_fsm;
  input RX_IN, RST, CLK, PAR_EN, par_err_fsm, strt_glitch_fsm, stp_err_fsm,
         test_si, test_se;
  output count_en_fsm, data_en_fsm, par_en_fsm, strt_en_fsm, stp_en_fsm,
         deser_en_fsm, data_valid;
  wire   data_valid_c, n1, n2, n3, n4, n5, n6, n7, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [5:0] er_chk_edge;
  wire   [2:0] current;
  wire   [2:0] next;

  SDFFRQX2M \current_reg[2]  ( .D(next[2]), .SI(current[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current[2]) );
  SDFFRQX2M \current_reg[0]  ( .D(next[0]), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(current[0]) );
  SDFFRQX2M \current_reg[1]  ( .D(next[1]), .SI(current[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current[1]) );
  SDFFRQX2M data_valid_reg ( .D(data_valid_c), .SI(current[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(data_valid) );
  OR2X2M U4 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  INVX2M U5 ( .A(prescale[3]), .Y(n5) );
  CLKINVX1M U9 ( .A(prescale[0]), .Y(er_chk_edge[0]) );
  OAI2BB1X1M U10 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(
        er_chk_edge[1]) );
  NOR2X1M U11 ( .A(n1), .B(prescale[2]), .Y(n2) );
  AO21XLM U12 ( .A0(n1), .A1(prescale[2]), .B0(n2), .Y(er_chk_edge[2]) );
  CLKNAND2X2M U13 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1M U14 ( .A0(n2), .A1(n5), .B0(n3), .Y(er_chk_edge[3]) );
  XNOR2X1M U15 ( .A(prescale[4]), .B(n3), .Y(er_chk_edge[4]) );
  NOR2X1M U16 ( .A(prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U17 ( .A(prescale[5]), .B(n4), .Y(er_chk_edge[5]) );
  NOR2X1M U18 ( .A(current[0]), .B(n6), .Y(par_en_fsm) );
  OAI21BX1M U19 ( .A0(n7), .A1(n12), .B0N(n13), .Y(next[2]) );
  OAI31X1M U20 ( .A0(n14), .A1(PAR_EN), .A2(n15), .B0(n16), .Y(n13) );
  NAND3X1M U21 ( .A(n7), .B(n6), .C(n17), .Y(next[1]) );
  OR3X1M U22 ( .A(n18), .B(strt_glitch_fsm), .C(n12), .Y(n17) );
  OAI221X1M U23 ( .A0(RX_IN), .A1(n19), .B0(n20), .B1(n14), .C0(n21), .Y(
        next[0]) );
  AOI2BB2XLM U24 ( .B0(strt_en_fsm), .B1(n22), .A0N(n16), .A1N(n23), .Y(n21)
         );
  CLKINVX1M U25 ( .A(strt_glitch_fsm), .Y(n22) );
  NOR2X1M U26 ( .A(n18), .B(current[1]), .Y(strt_en_fsm) );
  CLKINVX1M U27 ( .A(deser_en_fsm), .Y(n14) );
  CLKINVX1M U28 ( .A(n15), .Y(n20) );
  NAND3BX1M U29 ( .AN(n12), .B(bit_cnt_fsm[3]), .C(n24), .Y(n15) );
  NOR3X1M U30 ( .A(bit_cnt_fsm[0]), .B(bit_cnt_fsm[2]), .C(bit_cnt_fsm[1]), 
        .Y(n24) );
  NAND4X1M U31 ( .A(n25), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR3X1M U32 ( .A(n29), .B(n30), .C(n31), .Y(n28) );
  CLKXOR2X2M U33 ( .A(prescale[0]), .B(edge_cnt_fsm[0]), .Y(n31) );
  CLKXOR2X2M U34 ( .A(prescale[2]), .B(edge_cnt_fsm[2]), .Y(n30) );
  CLKXOR2X2M U35 ( .A(prescale[1]), .B(edge_cnt_fsm[1]), .Y(n29) );
  XNOR2X1M U36 ( .A(edge_cnt_fsm[4]), .B(prescale[4]), .Y(n27) );
  XNOR2X1M U37 ( .A(edge_cnt_fsm[5]), .B(prescale[5]), .Y(n26) );
  XNOR2X1M U38 ( .A(edge_cnt_fsm[3]), .B(prescale[3]), .Y(n25) );
  MXI2X1M U39 ( .A(n32), .B(n33), .S0(current[0]), .Y(n19) );
  AND2X1M U40 ( .A(current[1]), .B(current[2]), .Y(n33) );
  NOR2X1M U41 ( .A(current[2]), .B(current[1]), .Y(n32) );
  NOR2X1M U42 ( .A(n6), .B(n34), .Y(deser_en_fsm) );
  NOR4X1M U43 ( .A(stp_err_fsm), .B(par_err_fsm), .C(n23), .D(n16), .Y(
        data_valid_c) );
  NAND4X1M U44 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n23) );
  NOR3X1M U45 ( .A(n39), .B(n40), .C(n41), .Y(n38) );
  CLKXOR2X2M U46 ( .A(er_chk_edge[0]), .B(edge_cnt_fsm[0]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(er_chk_edge[2]), .B(edge_cnt_fsm[2]), .Y(n40) );
  CLKXOR2X2M U48 ( .A(er_chk_edge[1]), .B(edge_cnt_fsm[1]), .Y(n39) );
  XNOR2X1M U49 ( .A(edge_cnt_fsm[4]), .B(er_chk_edge[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(edge_cnt_fsm[5]), .B(er_chk_edge[5]), .Y(n36) );
  XNOR2X1M U51 ( .A(edge_cnt_fsm[3]), .B(er_chk_edge[3]), .Y(n35) );
  OAI21BX1M U52 ( .A0(current[2]), .A1(RX_IN), .B0N(data_en_fsm), .Y(
        count_en_fsm) );
  NAND3X1M U53 ( .A(n6), .B(n16), .C(n18), .Y(data_en_fsm) );
  CLKNAND2X2M U54 ( .A(current[0]), .B(n42), .Y(n18) );
  CLKINVX1M U55 ( .A(stp_en_fsm), .Y(n16) );
  NOR2X1M U56 ( .A(n42), .B(n7), .Y(stp_en_fsm) );
  CLKNAND2X2M U57 ( .A(current[1]), .B(n34), .Y(n7) );
  CLKINVX1M U58 ( .A(current[0]), .Y(n34) );
  CLKNAND2X2M U59 ( .A(current[1]), .B(n42), .Y(n6) );
  CLKINVX1M U60 ( .A(current[2]), .Y(n42) );
endmodule


module UART_RX_scale_size6_DATA_WIDTH8_test_1 ( RX_IN, CLK, RST, prescale, 
        PAR_EN, PAR_TYP, P_DATA, Parity_error, stop_error, data_valid, test_si, 
        test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, CLK, RST, PAR_EN, PAR_TYP, test_si, test_se;
  output Parity_error, stop_error, data_valid;
  wire   dat_samp_en, sampled_bit, stop_en, start_en, strt_glitch, par_chk_en,
         deser_en, enable, n1, n2, n4;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  data_sampling_scale_size6_count_num6_test_1 U0_SAMP ( .RX_IN(RX_IN), 
        .prescale(prescale), .CLK(CLK), .RST(n1), .dat_samp_en(dat_samp_en), 
        .edge_cnt(edge_cnt), .sampled_bit(sampled_bit), .test_si(Parity_error), 
        .test_so(n4), .test_se(test_se) );
  stop_check_test_1 U0_STOP ( .sampl_bit_stp(sampled_bit), .stop_en(stop_en), 
        .CLK(CLK), .RST(n1), .stp_error(stop_error), .test_si(n4), .test_se(
        test_se) );
  start_check U0_START ( .sampl_bit_strt(sampled_bit), .start_en(start_en), 
        .strt_glitch(strt_glitch) );
  par_check_DATA_WIDTH8_count_num6_scale_size6_test_1 U0_PARITY ( 
        .sampl_bit_par(sampled_bit), .PAR_TYP(PAR_TYP), .par_chk_en(par_chk_en), .CLK(CLK), .RST(n1), .prescale(prescale), .bit_cnt(bit_cnt), .edge_cnt(
        edge_cnt), .P_DATA_PAR(P_DATA), .par_err(Parity_error), .test_si(
        data_valid), .test_se(test_se) );
  deserializer_DATA_WIDTH8_count_num6_scale_size6_test_1 U0_desrializer ( 
        .sampled_bit(sampled_bit), .deser_en(deser_en), .prescale(prescale), 
        .edge_cnt(edge_cnt), .CLK(CLK), .RST(n1), .P_DATA(P_DATA), .test_se(
        test_se) );
  edge_bit_counter_count_num6_scale_size6_test_1 U0_count ( .RST(n1), .CLK(CLK), .prescale(prescale), .enable(enable), .PAR_EN(PAR_EN), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt), .test_si(stop_error), .test_se(test_se) );
  FSM_RX_count_num6_scale_size6_test_1 U0_FSM ( .RX_IN(RX_IN), .prescale(
        prescale), .RST(n1), .CLK(CLK), .PAR_EN(PAR_EN), .bit_cnt_fsm(bit_cnt), 
        .edge_cnt_fsm(edge_cnt), .par_err_fsm(Parity_error), .strt_glitch_fsm(
        strt_glitch), .stp_err_fsm(stop_error), .count_en_fsm(enable), 
        .data_en_fsm(dat_samp_en), .par_en_fsm(par_chk_en), .strt_en_fsm(
        start_en), .stp_en_fsm(stop_en), .deser_en_fsm(deser_en), .data_valid(
        data_valid), .test_si(test_si), .test_se(test_se) );
endmodule


module MUX_4x1_test_1 ( IN0, IN1, IN2, IN3, CLK, RST, SEL, out, test_si, 
        test_se );
  input [1:0] SEL;
  input IN0, IN1, IN2, IN3, CLK, RST, test_si, test_se;
  output out;
  wire   mux_out, n3, n4, n2;

  SDFFRQX2M out_reg ( .D(mux_out), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(out) );
  INVX2M U4 ( .A(SEL[0]), .Y(n2) );
  OAI2B2X1M U5 ( .A1N(SEL[1]), .A0(n3), .B0(SEL[1]), .B1(n4), .Y(mux_out) );
  AOI22X1M U6 ( .A0(IN0), .A1(n2), .B0(SEL[0]), .B1(IN1), .Y(n4) );
  AOI22X1M U7 ( .A0(IN2), .A1(n2), .B0(IN3), .B1(SEL[0]), .Y(n3) );
endmodule


module parity_calc_DATA_WIDTH8_test_1 ( CLK, RST, P_DATA_par, PARITY_TYPE, 
        Data_Valid_par, busy, parity_bit, test_si, test_se );
  input [7:0] P_DATA_par;
  input CLK, RST, PARITY_TYPE, Data_Valid_par, busy, test_si, test_se;
  output parity_bit;
  wire   n1, n2, n3, n4, n5, n6, n8;

  SDFFRQX2M parity_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(parity_bit) );
  XOR3XLM U2 ( .A(P_DATA_par[5]), .B(P_DATA_par[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_DATA_par[7]), .B(P_DATA_par[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_DATA_par[3]), .B(P_DATA_par[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(parity_bit), .A1N(n2), .Y(n8) );
  NAND2BX2M U6 ( .AN(busy), .B(Data_Valid_par), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PARITY_TYPE), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA_par[1]), .B(P_DATA_par[0]), .C(n5), .Y(n4) );
endmodule


module Serializer_DATA_WIDTH8_test_1 ( P_DATA_SER, CLK, RST, ser_en, 
        DATA_VALID, busy, ser_done, SER_OUT, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] P_DATA_SER;
  input CLK, RST, ser_en, DATA_VALID, busy, test_si2, test_si1, test_se;
  output ser_done, SER_OUT, test_so2, test_so1;
  wire   n13, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n14, n15, n16, n17, n18, n19, n20, n49, n51, n54, n55;
  wire   [7:0] Regester;
  wire   [3:0] counter;
  assign test_so2 = counter[3];
  assign test_so1 = counter[2];

  SDFFRQX2M \Regester_reg[7]  ( .D(n39), .SI(Regester[6]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(Regester[7]) );
  SDFFRQX2M \Regester_reg[6]  ( .D(n40), .SI(Regester[5]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(Regester[6]) );
  SDFFRQX2M \Regester_reg[5]  ( .D(n41), .SI(Regester[4]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(Regester[5]) );
  SDFFRQX2M \Regester_reg[4]  ( .D(n42), .SI(Regester[3]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(Regester[4]) );
  SDFFRQX2M \Regester_reg[3]  ( .D(n43), .SI(Regester[2]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(Regester[3]) );
  SDFFRQX2M \Regester_reg[2]  ( .D(n44), .SI(Regester[1]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(Regester[2]) );
  SDFFRQX2M \Regester_reg[1]  ( .D(n45), .SI(n51), .SE(n55), .CK(CLK), .RN(RST), .Q(Regester[1]) );
  SDFFRX1M \Regester_reg[0]  ( .D(n46), .SI(test_si1), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(n51), .QN(n13) );
  SDFFRQX2M \counter_reg[3]  ( .D(n47), .SI(test_si2), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n38), .SI(counter[1]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n37), .SI(counter[0]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n48), .SI(Regester[7]), .SE(n55), .CK(CLK), 
        .RN(RST), .Q(counter[0]) );
  NOR4X1M U15 ( .A(n49), .B(counter[0]), .C(counter[1]), .D(counter[2]), .Y(
        ser_done) );
  NAND2X2M U16 ( .A(n15), .B(n17), .Y(n25) );
  INVX2M U17 ( .A(n27), .Y(n17) );
  NOR2X2M U18 ( .A(n36), .B(n14), .Y(n27) );
  AOI21X2M U19 ( .A0(n18), .A1(n27), .B0(n14), .Y(n21) );
  INVX2M U20 ( .A(n14), .Y(n15) );
  NAND2BX2M U21 ( .AN(ser_done), .B(ser_en), .Y(n36) );
  OAI32X1M U22 ( .A0(n19), .A1(counter[2]), .A2(n22), .B0(n16), .B1(n20), .Y(
        n38) );
  INVX2M U23 ( .A(n23), .Y(n16) );
  OAI32X1M U24 ( .A0(n34), .A1(n19), .A2(n20), .B0(n35), .B1(n49), .Y(n47) );
  OR2X2M U25 ( .A(n22), .B(counter[3]), .Y(n34) );
  AOI21X2M U26 ( .A0(n27), .A1(n20), .B0(n23), .Y(n35) );
  OAI21X2M U27 ( .A0(counter[1]), .A1(n17), .B0(n21), .Y(n23) );
  OAI22X1M U28 ( .A0(n21), .A1(n19), .B0(counter[1]), .B1(n22), .Y(n37) );
  OAI22X1M U29 ( .A0(n18), .A1(n15), .B0(counter[0]), .B1(n17), .Y(n48) );
  NAND2X2M U30 ( .A(counter[0]), .B(n27), .Y(n22) );
  OAI2B1X2M U31 ( .A1N(Regester[1]), .A0(n25), .B0(n32), .Y(n45) );
  AOI22X1M U32 ( .A0(Regester[2]), .A1(n27), .B0(P_DATA_SER[1]), .B1(n14), .Y(
        n32) );
  OAI2B1X2M U33 ( .A1N(Regester[2]), .A0(n25), .B0(n31), .Y(n44) );
  AOI22X1M U34 ( .A0(Regester[3]), .A1(n27), .B0(P_DATA_SER[2]), .B1(n14), .Y(
        n31) );
  OAI2B1X2M U35 ( .A1N(Regester[3]), .A0(n25), .B0(n30), .Y(n43) );
  AOI22X1M U36 ( .A0(Regester[4]), .A1(n27), .B0(P_DATA_SER[3]), .B1(n14), .Y(
        n30) );
  OAI2B1X2M U37 ( .A1N(Regester[4]), .A0(n25), .B0(n29), .Y(n42) );
  AOI22X1M U38 ( .A0(Regester[5]), .A1(n27), .B0(P_DATA_SER[4]), .B1(n14), .Y(
        n29) );
  OAI2B1X2M U39 ( .A1N(Regester[5]), .A0(n25), .B0(n28), .Y(n41) );
  AOI22X1M U40 ( .A0(Regester[6]), .A1(n27), .B0(P_DATA_SER[5]), .B1(n14), .Y(
        n28) );
  OAI2B1X2M U41 ( .A1N(Regester[6]), .A0(n25), .B0(n26), .Y(n40) );
  AOI22X1M U42 ( .A0(Regester[7]), .A1(n27), .B0(P_DATA_SER[6]), .B1(n14), .Y(
        n26) );
  OAI21X2M U43 ( .A0(n25), .A1(n13), .B0(n33), .Y(n46) );
  AOI22X1M U44 ( .A0(Regester[1]), .A1(n27), .B0(P_DATA_SER[0]), .B1(n14), .Y(
        n33) );
  BUFX2M U45 ( .A(n24), .Y(n14) );
  NOR2BX2M U46 ( .AN(DATA_VALID), .B(busy), .Y(n24) );
  INVX2M U47 ( .A(counter[3]), .Y(n49) );
  AO2B2X2M U48 ( .B0(P_DATA_SER[7]), .B1(n14), .A0(Regester[7]), .A1N(n25), 
        .Y(n39) );
  NOR2X2M U49 ( .A(n36), .B(n13), .Y(SER_OUT) );
  INVX2M U50 ( .A(counter[0]), .Y(n18) );
  INVX2M U51 ( .A(counter[1]), .Y(n19) );
  INVX2M U52 ( .A(counter[2]), .Y(n20) );
  INVXLM U53 ( .A(test_se), .Y(n54) );
  INVXLM U54 ( .A(n54), .Y(n55) );
endmodule


module FSM_test_1 ( CLK, RST, VALID_FSM, PAR_EN_FSM, ser_done_fsm, ser_en_fsm, 
        SEL_FSM, busy, test_si, test_so, test_se );
  output [1:0] SEL_FSM;
  input CLK, RST, VALID_FSM, PAR_EN_FSM, ser_done_fsm, test_si, test_se;
  output ser_en_fsm, busy, test_so;
  wire   busy_c, n11, n12, n13, n14, n15, n16, n5, n6, n7, n8, n9, n10;
  wire   [2:0] current;
  wire   [2:0] next;
  assign test_so = current[2];

  SDFFRQX2M busy_reg ( .D(busy_c), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(busy) );
  SDFFRQX2M \current_reg[2]  ( .D(next[2]), .SI(current[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current[2]) );
  SDFFRQX2M \current_reg[1]  ( .D(next[1]), .SI(current[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current[1]) );
  SDFFRQX2M \current_reg[0]  ( .D(next[0]), .SI(busy), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(current[0]) );
  OAI21BX1M U7 ( .A0(n14), .A1(n5), .B0N(next[1]), .Y(busy_c) );
  OAI21X2M U8 ( .A0(n14), .A1(n5), .B0(n15), .Y(next[0]) );
  INVX2M U9 ( .A(VALID_FSM), .Y(n5) );
  INVX2M U10 ( .A(n16), .Y(n6) );
  OAI211X2M U11 ( .A0(VALID_FSM), .A1(n14), .B0(n13), .C0(n9), .Y(n16) );
  NAND3X2M U12 ( .A(n8), .B(n9), .C(n7), .Y(n14) );
  OA21X2M U13 ( .A0(ser_done_fsm), .A1(n12), .B0(n11), .Y(n15) );
  INVX2M U14 ( .A(ser_done_fsm), .Y(n10) );
  NAND3X2M U15 ( .A(n12), .B(n11), .C(n13), .Y(next[1]) );
  OAI31X1M U16 ( .A0(n7), .A1(ser_done_fsm), .A2(current[2]), .B0(n11), .Y(
        ser_en_fsm) );
  OAI211X2M U17 ( .A0(PAR_EN_FSM), .A1(n12), .B0(n15), .C0(n6), .Y(SEL_FSM[0])
         );
  OAI21X2M U18 ( .A0(n12), .A1(n10), .B0(n6), .Y(SEL_FSM[1]) );
  NAND3X2M U19 ( .A(n8), .B(n9), .C(current[0]), .Y(n11) );
  INVX2M U20 ( .A(current[2]), .Y(n9) );
  INVX2M U21 ( .A(current[0]), .Y(n7) );
  INVX2M U22 ( .A(current[1]), .Y(n8) );
  OAI31X1M U23 ( .A0(n10), .A1(PAR_EN_FSM), .A2(n12), .B0(n13), .Y(next[2]) );
  NAND3X2M U24 ( .A(current[0]), .B(n9), .C(current[1]), .Y(n12) );
  NAND3X2M U25 ( .A(n7), .B(n9), .C(current[1]), .Y(n13) );
endmodule


module UART_TX_DATA_WIDTH8_test_1 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, 
        RST, TX_OUT, busy, test_si2, test_si1, test_so1, test_se );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, test_si2, test_si1, test_se;
  output TX_OUT, busy, test_so1;
  wire   ser_data, par_bit, ser_en, ser_done, n1, n2, n5, n6;
  wire   [1:0] mux_sel;

  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
  MUX_4x1_test_1 U0_MUX ( .IN0(1'b0), .IN1(ser_data), .IN2(par_bit), .IN3(1'b1), .CLK(CLK), .RST(n1), .SEL(mux_sel), .out(TX_OUT), .test_si(n5), .test_se(
        test_se) );
  parity_calc_DATA_WIDTH8_test_1 U0_PARITY ( .CLK(CLK), .RST(n1), .P_DATA_par(
        P_DATA), .PARITY_TYPE(PAR_TYP), .Data_Valid_par(DATA_VALID), .busy(
        busy), .parity_bit(par_bit), .test_si(n6), .test_se(test_se) );
  Serializer_DATA_WIDTH8_test_1 U0_SER ( .P_DATA_SER(P_DATA), .CLK(CLK), .RST(
        n1), .ser_en(ser_en), .DATA_VALID(DATA_VALID), .busy(busy), .ser_done(
        ser_done), .SER_OUT(ser_data), .test_si2(test_si2), .test_si1(par_bit), 
        .test_so2(test_so1), .test_so1(n5), .test_se(test_se) );
  FSM_test_1 U0_FSM ( .CLK(CLK), .RST(n1), .VALID_FSM(DATA_VALID), 
        .PAR_EN_FSM(PAR_EN), .ser_done_fsm(ser_done), .ser_en_fsm(ser_en), 
        .SEL_FSM(mux_sel), .busy(busy), .test_si(test_si1), .test_so(n6), 
        .test_se(test_se) );
endmodule


module UART_DATA_WIDTH8_scale_size6_test_1 ( TX_IN_P, TX_IN_V, TX_CLK, RST, 
        RX_IN_S, RX_CLK, prescale, PAR_EN, PAR_TYP, TX_OUT_S, TX_OUT_V, 
        RX_OUT_P, Parity_error, stop_error, RX_OUT_V, test_si2, test_si1, 
        test_so1, test_se );
  input [7:0] TX_IN_P;
  input [5:0] prescale;
  output [7:0] RX_OUT_P;
  input TX_IN_V, TX_CLK, RST, RX_IN_S, RX_CLK, PAR_EN, PAR_TYP, test_si2,
         test_si1, test_se;
  output TX_OUT_S, TX_OUT_V, Parity_error, stop_error, RX_OUT_V, test_so1;
  wire   n1, n2;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_RX_scale_size6_DATA_WIDTH8_test_1 U0_rx ( .RX_IN(RX_IN_S), .CLK(RX_CLK), 
        .RST(n1), .prescale(prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), 
        .P_DATA(RX_OUT_P), .Parity_error(Parity_error), .stop_error(stop_error), .data_valid(RX_OUT_V), .test_si(test_si1), .test_se(test_se) );
  UART_TX_DATA_WIDTH8_test_1 U0_tx ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), 
        .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n1), .TX_OUT(
        TX_OUT_S), .busy(TX_OUT_V), .test_si2(test_si2), .test_si1(RX_OUT_P[7]), .test_so1(test_so1), .test_se(test_se) );
endmodule


module CLK_GATE ( CLK_EN, test_EN, CLK, GATED_CLK );
  input CLK_EN, test_EN, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX4M CLK_GATE_U0 ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_EN), .Y(_0_net_) );
endmodule


module RST_SYNC_test_0 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
endmodule


module RST_SYNC_test_1 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
endmodule


module PULSE_GEN_test_1 ( CLK, RST, LVL_SIG, pulse_SIG, test_si, test_so, 
        test_se );
  input CLK, RST, LVL_SIG, test_si, test_se;
  output pulse_SIG, test_so;
  wire   pulse_flop, LVL_SIG_flop;
  assign test_so = pulse_flop;

  SDFFRQX2M LVL_SIG_flop_reg ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(LVL_SIG_flop) );
  SDFFRQX2M pulse_flop_reg ( .D(LVL_SIG_flop), .SI(LVL_SIG_flop), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(pulse_flop) );
  NOR2BX2M U5 ( .AN(LVL_SIG_flop), .B(pulse_flop), .Y(pulse_SIG) );
endmodule


module ClkDiv_divide_ratio8_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_divide_ratio8_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, div_clk, flag, N14, N15, N16, N17, N18, N19, N20, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] counter;
  wire   [6:0] half_tog;
  assign test_so = flag;

  SDFFRQX2M div_clk_reg ( .D(n26), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  SDFFSQX2M flag_reg ( .D(n27), .SI(div_clk), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(flag) );
  SDFFRQX2M \counter_reg[6]  ( .D(n28), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n29), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n30), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n31), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n32), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n33), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U6 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N1), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(half_tog[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_tog[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_tog[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(half_tog[3]) );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(half_tog[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(half_tog[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(half_tog[6]) );
  AO22X1M U27 ( .A0(n16), .A1(counter[0]), .B0(N14), .B1(n17), .Y(n34) );
  AO22X1M U28 ( .A0(n16), .A1(counter[1]), .B0(N15), .B1(n17), .Y(n33) );
  AO22X1M U29 ( .A0(n16), .A1(counter[2]), .B0(N16), .B1(n17), .Y(n32) );
  AO22X1M U30 ( .A0(n16), .A1(counter[3]), .B0(N17), .B1(n17), .Y(n31) );
  AO22X1M U31 ( .A0(n16), .A1(counter[4]), .B0(N18), .B1(n17), .Y(n30) );
  AO22X1M U32 ( .A0(n16), .A1(counter[5]), .B0(N19), .B1(n17), .Y(n29) );
  AO22X1M U33 ( .A0(n16), .A1(counter[6]), .B0(N20), .B1(n17), .Y(n28) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N1), .Y(n17) );
  XNOR2X1M U35 ( .A(flag), .B(n20), .Y(n27) );
  OR2X1M U36 ( .A(n19), .B(n16), .Y(n20) );
  CLKXOR2X2M U37 ( .A(div_clk), .B(n21), .Y(n26) );
  AOI21X1M U38 ( .A0(n19), .A1(n18), .B0(n16), .Y(n21) );
  OR2X1M U39 ( .A(n22), .B(i_div_ratio[0]), .Y(n18) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n22), .S0(flag), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n22) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(half_tog[2]), .B(counter[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(half_tog[1]), .B(counter[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(half_tog[0]), .B(counter[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(half_tog[6]), .B(counter[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(counter[4]), .B(half_tog[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(counter[5]), .B(half_tog[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(counter[3]), .B(half_tog[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N1) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_divide_ratio8_0_DW01_inc_0 add_53 ( .A(counter), .SUM({N20, N19, N18, 
        N17, N16, N15, N14}) );
endmodule


module ClkDiv_divide_ratio8_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_divide_ratio8_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, div_clk, flag, N14, N15, N16, N17, N18, N19, N20, n1, n2, n3, n4,
         n5, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60;
  wire   [6:0] counter;
  wire   [6:0] half_tog;
  assign test_so = flag;

  SDFFRQX2M div_clk_reg ( .D(n60), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  SDFFSQX2M flag_reg ( .D(n59), .SI(div_clk), .SE(test_se), .CK(i_ref_clk), 
        .SN(i_rst_n), .Q(flag) );
  SDFFRQX2M \counter_reg[6]  ( .D(n58), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n52), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n57), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n56), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n55), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n54), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n53), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2BX2M U6 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N1), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(half_tog[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        half_tog[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(half_tog[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(half_tog[3]) );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(half_tog[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(half_tog[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(half_tog[6]) );
  AO22X1M U27 ( .A0(n16), .A1(counter[0]), .B0(N14), .B1(n17), .Y(n52) );
  AO22X1M U28 ( .A0(n16), .A1(counter[1]), .B0(N15), .B1(n17), .Y(n53) );
  AO22X1M U29 ( .A0(n16), .A1(counter[2]), .B0(N16), .B1(n17), .Y(n54) );
  AO22X1M U30 ( .A0(n16), .A1(counter[3]), .B0(N17), .B1(n17), .Y(n55) );
  AO22X1M U31 ( .A0(n16), .A1(counter[4]), .B0(N18), .B1(n17), .Y(n56) );
  AO22X1M U32 ( .A0(n16), .A1(counter[5]), .B0(N19), .B1(n17), .Y(n57) );
  AO22X1M U33 ( .A0(n16), .A1(counter[6]), .B0(N20), .B1(n17), .Y(n58) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N1), .Y(n17) );
  XNOR2X1M U35 ( .A(flag), .B(n20), .Y(n59) );
  OR2X1M U36 ( .A(n19), .B(n16), .Y(n20) );
  CLKXOR2X2M U37 ( .A(div_clk), .B(n21), .Y(n60) );
  AOI21X1M U38 ( .A0(n19), .A1(n18), .B0(n16), .Y(n21) );
  OR2X1M U39 ( .A(n22), .B(i_div_ratio[0]), .Y(n18) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n22), .S0(flag), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n22) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(half_tog[2]), .B(counter[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(half_tog[1]), .B(counter[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(half_tog[0]), .B(counter[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(half_tog[6]), .B(counter[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(counter[4]), .B(half_tog[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(counter[5]), .B(half_tog[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(counter[3]), .B(half_tog[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N1) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_divide_ratio8_1_DW01_inc_0 add_53 ( .A(counter), .SUM({N20, N19, N18, 
        N17, N16, N15, N14}) );
endmodule


module clk_div_mux_divide_ratio8_scale_size6 ( prescale, i_div_ratio );
  input [5:0] prescale;
  output [7:0] i_div_ratio;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(prescale[4]), .B(prescale[3]), .C(n15), .D(n14), .Y(n6)
         );
  NAND4BX1M U12 ( .AN(prescale[3]), .B(prescale[4]), .C(n15), .D(n14), .Y(n7)
         );
  NOR3X2M U13 ( .A(n7), .B(prescale[1]), .C(prescale[0]), .Y(i_div_ratio[1])
         );
  NOR3X2M U14 ( .A(n6), .B(prescale[1]), .C(prescale[0]), .Y(i_div_ratio[2])
         );
  INVX2M U15 ( .A(prescale[2]), .Y(n15) );
  INVX2M U16 ( .A(prescale[5]), .Y(n14) );
  NOR4X1M U17 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        i_div_ratio[3]) );
  NAND3X2M U18 ( .A(n17), .B(n16), .C(prescale[2]), .Y(n5) );
  INVX2M U19 ( .A(prescale[0]), .Y(n17) );
  INVX2M U20 ( .A(prescale[1]), .Y(n16) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(i_div_ratio[0]) );
  NOR4X1M U22 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n15), 
        .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(i_div_ratio[7]) );
  INVX2M U5 ( .A(1'b1), .Y(i_div_ratio[6]) );
  INVX2M U7 ( .A(1'b1), .Y(i_div_ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(i_div_ratio[4]) );
endmodule


module SYS_CTRL_ALU_width16_func_WIDTH4_addr_width4_DATA_WIDTH8_test_1 ( 
        ALU_OUT, out_valid, CLK, RST, RX_D_VLD, RX_P_DATA, RdData, RdData_vld, 
        FIFO_FULL, CLK_EN, ALU_EN, ALU_FUN, addr, WrEn, RdEn, WrData, 
        Tx_P_DATA, Tx_D_VLD, clk_div_en, test_si, test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] addr;
  output [7:0] WrData;
  output [7:0] Tx_P_DATA;
  input out_valid, CLK, RST, RX_D_VLD, RdData_vld, FIFO_FULL, test_si, test_se;
  output CLK_EN, ALU_EN, WrEn, RdEn, Tx_D_VLD, clk_div_en, test_so;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17,
         n18, n19, n20, n22, n23, n24, n26, n28, n30, n31, n32, n33, n34, n37,
         n38, n39, n40, n49, n50, n51, n52, n53, n55, n57, n60, n61, n62, n63,
         n64, n65, n66, n67, n70, n72, n74, n76, n21, n25, n27, n29, n35, n36,
         n41, n42, n43, n45, n46, n47, n48, n54, n56, n58, n59, n68, n81, n82,
         n83, n84;
  wire   [3:0] current;
  wire   [3:0] next;
  wire   [3:0] Store;
  assign test_so = current[3];

  SDFFRQX2M \Store_reg[3]  ( .D(n76), .SI(Store[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Store[3]) );
  SDFFRQX2M \Store_reg[2]  ( .D(n74), .SI(Store[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Store[2]) );
  SDFFRQX2M \Store_reg[1]  ( .D(n72), .SI(Store[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Store[1]) );
  SDFFRQX2M \Store_reg[0]  ( .D(n70), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Store[0]) );
  SDFFRQX2M \current_reg[0]  ( .D(next[0]), .SI(Store[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(current[0]) );
  SDFFRQX2M \current_reg[2]  ( .D(next[2]), .SI(current[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current[2]) );
  SDFFRQX2M \current_reg[3]  ( .D(next[3]), .SI(current[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current[3]) );
  SDFFRQX2M \current_reg[1]  ( .D(next[1]), .SI(current[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current[1]) );
  NOR3BX2M U5 ( .AN(n39), .B(current[1]), .C(current[2]), .Y(n28) );
  OAI221X1M U6 ( .A0(n83), .A1(n51), .B0(n50), .B1(n56), .C0(n11), .Y(addr[0])
         );
  OAI22X1M U7 ( .A0(n50), .A1(n48), .B0(n81), .B1(n51), .Y(addr[2]) );
  OAI22X1M U8 ( .A0(n49), .A1(n38), .B0(n50), .B1(n47), .Y(addr[3]) );
  OAI22X1M U9 ( .A0(n50), .A1(n54), .B0(n82), .B1(n51), .Y(addr[1]) );
  OAI22X1M U10 ( .A0(n67), .A1(n48), .B0(n81), .B1(n35), .Y(ALU_FUN[2]) );
  OAI22X1M U11 ( .A0(n67), .A1(n54), .B0(n82), .B1(n35), .Y(ALU_FUN[1]) );
  OAI22X1M U12 ( .A0(n67), .A1(n56), .B0(n83), .B1(n35), .Y(ALU_FUN[0]) );
  INVX2M U13 ( .A(WrEn), .Y(n27) );
  INVX2M U14 ( .A(n33), .Y(n35) );
  NOR2X2M U15 ( .A(ALU_EN), .B(n43), .Y(n67) );
  NOR2X2M U16 ( .A(n58), .B(n55), .Y(WrEn) );
  INVX2M U17 ( .A(FIFO_FULL), .Y(n25) );
  NOR2X2M U18 ( .A(n58), .B(n9), .Y(n33) );
  NOR2X2M U19 ( .A(n28), .B(n41), .Y(n49) );
  NAND2BX2M U20 ( .AN(n49), .B(n21), .Y(n51) );
  NAND2X2M U21 ( .A(n39), .B(n6), .Y(n11) );
  AND2X2M U22 ( .A(n52), .B(n23), .Y(n50) );
  INVX2M U23 ( .A(n53), .Y(n41) );
  NOR2X2M U24 ( .A(n83), .B(n27), .Y(WrData[0]) );
  NOR2X2M U25 ( .A(n82), .B(n27), .Y(WrData[1]) );
  NOR2X2M U26 ( .A(n81), .B(n27), .Y(WrData[2]) );
  NOR2X2M U27 ( .A(n68), .B(n27), .Y(WrData[4]) );
  NOR2X2M U28 ( .A(n59), .B(n27), .Y(WrData[7]) );
  NOR2X2M U29 ( .A(n53), .B(n58), .Y(RdEn) );
  AND3X2M U30 ( .A(n11), .B(n30), .C(n52), .Y(n55) );
  INVX2M U31 ( .A(n21), .Y(n58) );
  OA21X2M U32 ( .A0(n22), .A1(n23), .B0(n24), .Y(n8) );
  NOR2X2M U33 ( .A(FIFO_FULL), .B(n84), .Y(n22) );
  INVX2M U34 ( .A(n1), .Y(n43) );
  NAND4X2M U35 ( .A(n8), .B(n3), .C(n9), .D(n10), .Y(next[2]) );
  NOR3BX2M U36 ( .AN(n11), .B(RdEn), .C(n29), .Y(n10) );
  NAND3X2M U37 ( .A(n31), .B(n24), .C(n32), .Y(next[0]) );
  AOI32X1M U38 ( .A0(n83), .A1(n68), .A2(n20), .B0(n39), .B1(n58), .Y(n31) );
  NOR4X1M U39 ( .A(n33), .B(ALU_EN), .C(n29), .D(n28), .Y(n32) );
  INVX2M U40 ( .A(n14), .Y(ALU_EN) );
  OA21X2M U41 ( .A0(n1), .A1(n25), .B0(n34), .Y(n24) );
  NAND4X2M U42 ( .A(n15), .B(n16), .C(n83), .D(n68), .Y(n34) );
  AOI21X2M U43 ( .A0(n6), .A1(n5), .B0(n7), .Y(n9) );
  NOR2X2M U44 ( .A(n55), .B(n38), .Y(WrData[3]) );
  OAI22X1M U45 ( .A0(n58), .A1(n83), .B0(n21), .B1(n56), .Y(n70) );
  OAI22X1M U46 ( .A0(n58), .A1(n82), .B0(n21), .B1(n54), .Y(n72) );
  OAI22X1M U47 ( .A0(n58), .A1(n81), .B0(n21), .B1(n48), .Y(n74) );
  OAI211X2M U48 ( .A0(n1), .A1(n25), .B0(n3), .C0(n4), .Y(next[3]) );
  AOI31X2M U49 ( .A0(n5), .A1(n6), .A2(n21), .B0(n7), .Y(n4) );
  AND3X2M U50 ( .A(n5), .B(n46), .C(n45), .Y(n15) );
  OAI21X2M U51 ( .A0(n21), .A1(n47), .B0(n38), .Y(n76) );
  INVX2M U52 ( .A(n23), .Y(n42) );
  INVX2M U53 ( .A(n30), .Y(n29) );
  OAI22X1M U54 ( .A0(n67), .A1(n47), .B0(n9), .B1(n38), .Y(ALU_FUN[3]) );
  INVX2M U55 ( .A(n67), .Y(CLK_EN) );
  NOR2X2M U56 ( .A(n36), .B(current[3]), .Y(n39) );
  INVX2M U57 ( .A(current[0]), .Y(n36) );
  NOR2X2M U58 ( .A(n45), .B(current[1]), .Y(n6) );
  NOR2X2M U59 ( .A(current[3]), .B(current[0]), .Y(n5) );
  NAND3X2M U60 ( .A(n5), .B(current[2]), .C(current[1]), .Y(n23) );
  NAND3X2M U61 ( .A(n5), .B(n45), .C(current[1]), .Y(n53) );
  NAND3X2M U62 ( .A(current[1]), .B(n45), .C(n39), .Y(n52) );
  INVX2M U63 ( .A(current[2]), .Y(n45) );
  INVX2M U64 ( .A(RX_P_DATA[0]), .Y(n83) );
  BUFX2M U65 ( .A(RX_D_VLD), .Y(n21) );
  INVX2M U66 ( .A(RX_P_DATA[1]), .Y(n82) );
  INVX2M U67 ( .A(Store[1]), .Y(n54) );
  INVX2M U68 ( .A(Store[0]), .Y(n56) );
  OAI2B2X1M U69 ( .A1N(out_valid), .A0(n67), .B0(n84), .B1(n23), .Y(Tx_D_VLD)
         );
  NAND2X2M U70 ( .A(RX_P_DATA[3]), .B(n21), .Y(n38) );
  NAND4X2M U71 ( .A(current[1]), .B(current[0]), .C(current[3]), .D(current[2]), .Y(n1) );
  NAND3X2M U72 ( .A(current[3]), .B(n6), .C(current[0]), .Y(n14) );
  NAND3X2M U73 ( .A(current[1]), .B(current[2]), .C(n39), .Y(n30) );
  AND4X2M U74 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(RX_P_DATA[7]), .D(n37), 
        .Y(n16) );
  NOR3X2M U75 ( .A(n38), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .Y(n37) );
  NAND4X2M U76 ( .A(n17), .B(n8), .C(n18), .D(n19), .Y(next[1]) );
  AOI31X2M U77 ( .A0(RX_P_DATA[4]), .A1(RX_P_DATA[0]), .A2(n20), .B0(n41), .Y(
        n18) );
  NAND3X2M U78 ( .A(ALU_EN), .B(n25), .C(out_valid), .Y(n19) );
  AOI22X1M U79 ( .A0(n26), .A1(n58), .B0(n28), .B1(n21), .Y(n17) );
  INVX2M U80 ( .A(RX_P_DATA[2]), .Y(n81) );
  AND2X2M U81 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  AND2X2M U82 ( .A(RX_P_DATA[6]), .B(WrEn), .Y(WrData[6]) );
  INVX2M U83 ( .A(Store[3]), .Y(n47) );
  INVX2M U84 ( .A(Store[2]), .Y(n48) );
  INVX2M U85 ( .A(RdData_vld), .Y(n84) );
  OAI31X1M U86 ( .A0(n46), .A1(current[3]), .A2(current[2]), .B0(n30), .Y(n26)
         );
  OAI2BB1X2M U87 ( .A0N(ALU_OUT[0]), .A1N(ALU_EN), .B0(n66), .Y(Tx_P_DATA[0])
         );
  AOI22X1M U88 ( .A0(RdData[0]), .A1(n42), .B0(ALU_OUT[8]), .B1(n43), .Y(n66)
         );
  OAI2BB1X2M U89 ( .A0N(ALU_OUT[1]), .A1N(ALU_EN), .B0(n65), .Y(Tx_P_DATA[1])
         );
  AOI22X1M U90 ( .A0(RdData[1]), .A1(n42), .B0(ALU_OUT[9]), .B1(n43), .Y(n65)
         );
  OAI2BB1X2M U91 ( .A0N(ALU_OUT[2]), .A1N(ALU_EN), .B0(n64), .Y(Tx_P_DATA[2])
         );
  AOI22X1M U92 ( .A0(RdData[2]), .A1(n42), .B0(ALU_OUT[10]), .B1(n43), .Y(n64)
         );
  OAI2BB1X2M U93 ( .A0N(ALU_OUT[3]), .A1N(ALU_EN), .B0(n63), .Y(Tx_P_DATA[3])
         );
  AOI22X1M U94 ( .A0(RdData[3]), .A1(n42), .B0(ALU_OUT[11]), .B1(n43), .Y(n63)
         );
  OAI2BB1X2M U95 ( .A0N(ALU_OUT[4]), .A1N(ALU_EN), .B0(n62), .Y(Tx_P_DATA[4])
         );
  AOI22X1M U96 ( .A0(RdData[4]), .A1(n42), .B0(ALU_OUT[12]), .B1(n43), .Y(n62)
         );
  OAI2BB1X2M U97 ( .A0N(ALU_OUT[5]), .A1N(ALU_EN), .B0(n61), .Y(Tx_P_DATA[5])
         );
  AOI22X1M U98 ( .A0(RdData[5]), .A1(n42), .B0(ALU_OUT[13]), .B1(n43), .Y(n61)
         );
  OAI2BB1X2M U99 ( .A0N(ALU_OUT[6]), .A1N(ALU_EN), .B0(n60), .Y(Tx_P_DATA[6])
         );
  AOI22X1M U100 ( .A0(RdData[6]), .A1(n42), .B0(ALU_OUT[14]), .B1(n43), .Y(n60) );
  OAI2BB1X2M U101 ( .A0N(ALU_OUT[7]), .A1N(ALU_EN), .B0(n57), .Y(Tx_P_DATA[7])
         );
  AOI22X1M U102 ( .A0(RdData[7]), .A1(n42), .B0(ALU_OUT[15]), .B1(n43), .Y(n57) );
  AND3X2M U103 ( .A(n6), .B(n36), .C(current[3]), .Y(n7) );
  INVX2M U104 ( .A(RX_P_DATA[4]), .Y(n68) );
  INVX2M U105 ( .A(current[1]), .Y(n46) );
  INVX2M U106 ( .A(RX_P_DATA[7]), .Y(n59) );
  AND4X2M U107 ( .A(RX_P_DATA[1]), .B(n15), .C(RX_P_DATA[5]), .D(n40), .Y(n20)
         );
  NOR4X1M U116 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n38), .D(n59), .Y(n40)
         );
  AND2X2M U117 ( .A(n13), .B(n14), .Y(n3) );
  NAND4X2M U118 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .C(n15), .D(n16), .Y(n13) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module system_top ( REF_CLK, UART_CLK, RST, RX_IN, SI, SE, scan_clk, scan_rst, 
        test_mode, SO, TX_OUT, framing_error, parity_error );
  input [3:0] SI;
  output [3:0] SO;
  input REF_CLK, UART_CLK, RST, RX_IN, SE, scan_clk, scan_rst, test_mode;
  output TX_OUT, framing_error, parity_error;
  wire   CLK_M_RF, CLK_M_UART, TX_CLK, CLK_M_TX, RX_CLK, CLK_M_RX, RST_M,
         RST_SYNC_1, RST_S_1, RST_SYNC_2, RST_S_2, WrEn, RdEn, Rd_D_vld, W_INC,
         R_INC, FULL, EMPTY, RX_OUT_V, enable_pulse, ALU_EN, ALU_CLK,
         out_valid, TX_BUSY, CLK_EN, n1, n2, n3, n4, n5, n6, n8, n11, n12, n13,
         n14, n15, n17, n18, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38;
  wire   [3:0] addr;
  wire   [7:0] Wr_D;
  wire   [7:0] operand_A;
  wire   [7:0] operand_B;
  wire   [7:0] UART_config;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] Rd_D;
  wire   [7:0] FIFO_WR_DATA;
  wire   [7:0] FIFO_RD_DATA;
  wire   [7:0] RX_OUT_P;
  wire   [7:0] sync_bus;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] div_ratio_mux;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign SO[0] = RST_SYNC_2;

  INVX2M U2 ( .A(n4), .Y(n3) );
  INVX2M U3 ( .A(EMPTY), .Y(n1) );
  INVX4M U4 ( .A(n6), .Y(n5) );
  INVX2M U5 ( .A(RST_S_1), .Y(n6) );
  INVX2M U6 ( .A(RST_S_2), .Y(n4) );
  BUFX2M U7 ( .A(test_mode), .Y(n2) );
  INVXLM U14 ( .A(n36), .Y(n23) );
  INVXLM U15 ( .A(n23), .Y(n24) );
  INVXLM U16 ( .A(n23), .Y(n25) );
  INVXLM U17 ( .A(n38), .Y(n26) );
  INVXLM U18 ( .A(n26), .Y(n27) );
  DLY1X1M U19 ( .A(n35), .Y(n28) );
  DLY1X1M U20 ( .A(n35), .Y(n29) );
  DLY1X1M U21 ( .A(n32), .Y(n30) );
  INVXLM U22 ( .A(n37), .Y(n31) );
  INVXLM U23 ( .A(n31), .Y(n32) );
  INVXLM U24 ( .A(n31), .Y(n33) );
  INVXLM U25 ( .A(SE), .Y(n34) );
  INVXLM U26 ( .A(n34), .Y(n35) );
  INVXLM U27 ( .A(n34), .Y(n36) );
  INVXLM U28 ( .A(n34), .Y(n37) );
  INVXLM U29 ( .A(n34), .Y(n38) );
  mux2X1_1 U0_clk_rf ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        CLK_M_RF) );
  mux2X1_4 U0_clk_uart ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        CLK_M_UART) );
  mux2X1_3 U0_clk_TX ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(CLK_M_TX) );
  mux2X1_2 U0_clk_RX ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(CLK_M_RX) );
  mux2X1_0 U0_RST ( .IN_0(RST), .IN_1(scan_rst), .SEL(n2), .OUT(RST_M) );
  mux2X1_6 U1_RST ( .IN_0(RST_SYNC_1), .IN_1(scan_rst), .SEL(n2), .OUT(RST_S_1) );
  mux2X1_5 U2_RST ( .IN_0(RST_SYNC_2), .IN_1(scan_rst), .SEL(n2), .OUT(RST_S_2) );
  regfile_ADDR_WIDTH4_MEM_DEPTH16_MEM_WIDTH8_test_1 U0_regfile ( .WrEn(WrEn), 
        .RdEn(RdEn), .CLK(CLK_M_RF), .RST(n5), .address(addr), .WrData(Wr_D), 
        .REG0(operand_A), .REG1(operand_B), .REG2(UART_config), .REG3(
        DIV_RATIO), .RdData(Rd_D), .RdData_valid(Rd_D_vld), .test_si2(SI[0]), 
        .test_si1(n11), .test_so2(n8), .test_so1(SO[1]), .test_se(SE) );
  ASYNC_FIFO_DATA_WIDTH8_test_1 U0_ASYNC_FIFO ( .W_CLK(CLK_M_RF), .W_RST(n5), 
        .W_INC(W_INC), .R_CLK(CLK_M_TX), .R_RST(n3), .R_INC(R_INC), .WR_DATA(
        FIFO_WR_DATA), .RD_DATA(FIFO_RD_DATA), .FULL(FULL), .EMPTY(EMPTY), 
        .test_si2(SI[2]), .test_si1(out_valid), .test_so2(n18), .test_so1(
        SO[3]), .test_se(SE) );
  DATA_SYN_BUS_WIDTH8_test_1 U0_DATA_SYN ( .bus_enable(RX_OUT_V), .CLK(
        CLK_M_RF), .RST(n5), .unsync_bus(RX_OUT_P), .sync_bus(sync_bus), 
        .enable_pulse(enable_pulse), .test_si(n18), .test_so(n17), .test_se(
        n25) );
  ALU_op_width8_out_width16_func_width4_test_1 U0_ALU ( .A(operand_A), .B(
        operand_B), .ALU_FUN(ALU_FUN), .EN(ALU_EN), .CLK(ALU_CLK), .RST(n5), 
        .out_valid(out_valid), .ALU_OUT(ALU_OUT), .test_si(SI[3]), .test_se(
        n33) );
  UART_DATA_WIDTH8_scale_size6_test_1 U0_UART ( .TX_IN_P(FIFO_RD_DATA), 
        .TX_IN_V(n1), .TX_CLK(CLK_M_TX), .RST(n3), .RX_IN_S(RX_IN), .RX_CLK(
        CLK_M_RX), .prescale(UART_config[7:2]), .PAR_EN(UART_config[0]), 
        .PAR_TYP(UART_config[1]), .TX_OUT_S(SO[2]), .TX_OUT_V(TX_BUSY), 
        .RX_OUT_P(RX_OUT_P), .Parity_error(parity_error), .stop_error(
        framing_error), .RX_OUT_V(RX_OUT_V), .test_si2(SI[1]), .test_si1(n17), 
        .test_so1(n15), .test_se(n28) );
  CLK_GATE U0_gating_clk ( .CLK_EN(CLK_EN), .test_EN(n2), .CLK(CLK_M_RF), 
        .GATED_CLK(ALU_CLK) );
  RST_SYNC_test_0 U0_rst_1 ( .CLK(CLK_M_RF), .RST(RST_M), .SYNC_RST(RST_SYNC_1), .test_si(n8), .test_se(n29) );
  RST_SYNC_test_1 U0_rst_2 ( .CLK(CLK_M_UART), .RST(RST_M), .SYNC_RST(
        RST_SYNC_2), .test_si(RST_SYNC_1), .test_se(n37) );
  PULSE_GEN_test_1 U0_pulse ( .CLK(CLK_M_TX), .RST(n3), .LVL_SIG(TX_BUSY), 
        .pulse_SIG(R_INC), .test_si(n12), .test_so(n11), .test_se(n30) );
  ClkDiv_divide_ratio8_test_0 U0_divider_rx ( .i_ref_clk(CLK_M_UART), 
        .i_rst_n(n3), .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        div_ratio_mux[3:0]}), .o_div_clk(RX_CLK), .test_si(n14), .test_so(n13), 
        .test_se(n27) );
  ClkDiv_divide_ratio8_test_1 U0_divider_tx ( .i_ref_clk(CLK_M_UART), 
        .i_rst_n(n3), .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(
        TX_CLK), .test_si(n13), .test_so(n12), .test_se(n24) );
  clk_div_mux_divide_ratio8_scale_size6 U0_mux_div ( .prescale(
        UART_config[7:2]), .i_div_ratio({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, div_ratio_mux[3:0]}) );
  SYS_CTRL_ALU_width16_func_WIDTH4_addr_width4_DATA_WIDTH8_test_1 U0_ctrl ( 
        .ALU_OUT(ALU_OUT), .out_valid(out_valid), .CLK(CLK_M_RF), .RST(n5), 
        .RX_D_VLD(enable_pulse), .RX_P_DATA(sync_bus), .RdData(Rd_D), 
        .RdData_vld(Rd_D_vld), .FIFO_FULL(FULL), .CLK_EN(CLK_EN), .ALU_EN(
        ALU_EN), .ALU_FUN(ALU_FUN), .addr(addr), .WrEn(WrEn), .RdEn(RdEn), 
        .WrData(Wr_D), .Tx_P_DATA(FIFO_WR_DATA), .Tx_D_VLD(W_INC), .test_si(
        n15), .test_so(n14), .test_se(n37) );
  BUFX2M U13 ( .A(SO[2]), .Y(TX_OUT) );
endmodule

