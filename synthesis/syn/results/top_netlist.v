/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct 14 17:45:02 2026
/////////////////////////////////////////////////////////////


module regfile_ADDR_WIDTH4_MEM_DEPTH16_MEM_WIDTH8 ( WrEn, RdEn, CLK, RST, 
        address, WrData, REG0, REG1, REG2, REG3, RdData, RdData_valid );
  input [3:0] address;
  input [7:0] WrData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  output [7:0] RdData;
  input WrEn, RdEn, CLK, RST;
  output RdData_valid;
  wire   N11, N12, N13, N14, n336, n337, n338, n339, \memory[15][7] ,
         \memory[15][6] , \memory[15][5] , \memory[15][4] , \memory[15][3] ,
         \memory[15][2] , \memory[15][1] , \memory[15][0] , \memory[14][7] ,
         \memory[14][6] , \memory[14][5] , \memory[14][4] , \memory[14][3] ,
         \memory[14][2] , \memory[14][1] , \memory[14][0] , \memory[13][7] ,
         \memory[13][6] , \memory[13][5] , \memory[13][4] , \memory[13][3] ,
         \memory[13][2] , \memory[13][1] , \memory[13][0] , \memory[12][7] ,
         \memory[12][6] , \memory[12][5] , \memory[12][4] , \memory[12][3] ,
         \memory[12][2] , \memory[12][1] , \memory[12][0] , \memory[11][7] ,
         \memory[11][6] , \memory[11][5] , \memory[11][4] , \memory[11][3] ,
         \memory[11][2] , \memory[11][1] , \memory[11][0] , \memory[10][7] ,
         \memory[10][6] , \memory[10][5] , \memory[10][4] , \memory[10][3] ,
         \memory[10][2] , \memory[10][1] , \memory[10][0] , \memory[9][7] ,
         \memory[9][6] , \memory[9][5] , \memory[9][4] , \memory[9][3] ,
         \memory[9][2] , \memory[9][1] , \memory[9][0] , \memory[8][7] ,
         \memory[8][6] , \memory[8][5] , \memory[8][4] , \memory[8][3] ,
         \memory[8][2] , \memory[8][1] , \memory[8][0] , \memory[7][7] ,
         \memory[7][6] , \memory[7][5] , \memory[7][4] , \memory[7][3] ,
         \memory[7][2] , \memory[7][1] , \memory[7][0] , \memory[6][7] ,
         \memory[6][6] , \memory[6][5] , \memory[6][4] , \memory[6][3] ,
         \memory[6][2] , \memory[6][1] , \memory[6][0] , \memory[5][7] ,
         \memory[5][6] , \memory[5][5] , \memory[5][4] , \memory[5][3] ,
         \memory[5][2] , \memory[5][1] , \memory[5][0] , \memory[4][7] ,
         \memory[4][6] , \memory[4][5] , \memory[4][4] , \memory[4][3] ,
         \memory[4][2] , \memory[4][1] , \memory[4][0] , N36, N37, N38, N39,
         N40, N41, N42, N43, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n1, n2, n3, n5, n6, n7, n8, n9, n10,
         n11, n16, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n296, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];

  DFFRQX2M \memory_reg[15][7]  ( .D(n175), .CK(CLK), .RN(n323), .Q(
        \memory[15][7] ) );
  DFFRQX2M \memory_reg[15][6]  ( .D(n174), .CK(CLK), .RN(n323), .Q(
        \memory[15][6] ) );
  DFFRQX2M \memory_reg[15][5]  ( .D(n173), .CK(CLK), .RN(n323), .Q(
        \memory[15][5] ) );
  DFFRQX2M \memory_reg[15][4]  ( .D(n172), .CK(CLK), .RN(n323), .Q(
        \memory[15][4] ) );
  DFFRQX2M \memory_reg[15][3]  ( .D(n171), .CK(CLK), .RN(n323), .Q(
        \memory[15][3] ) );
  DFFRQX2M \memory_reg[15][2]  ( .D(n170), .CK(CLK), .RN(n323), .Q(
        \memory[15][2] ) );
  DFFRQX2M \memory_reg[15][1]  ( .D(n169), .CK(CLK), .RN(n323), .Q(
        \memory[15][1] ) );
  DFFRQX2M \memory_reg[15][0]  ( .D(n168), .CK(CLK), .RN(n322), .Q(
        \memory[15][0] ) );
  DFFRQX2M \memory_reg[13][7]  ( .D(n159), .CK(CLK), .RN(n322), .Q(
        \memory[13][7] ) );
  DFFRQX2M \memory_reg[13][6]  ( .D(n158), .CK(CLK), .RN(n322), .Q(
        \memory[13][6] ) );
  DFFRQX2M \memory_reg[13][5]  ( .D(n157), .CK(CLK), .RN(n322), .Q(
        \memory[13][5] ) );
  DFFRQX2M \memory_reg[13][4]  ( .D(n156), .CK(CLK), .RN(n322), .Q(
        \memory[13][4] ) );
  DFFRQX2M \memory_reg[13][3]  ( .D(n155), .CK(CLK), .RN(n321), .Q(
        \memory[13][3] ) );
  DFFRQX2M \memory_reg[13][2]  ( .D(n154), .CK(CLK), .RN(n321), .Q(
        \memory[13][2] ) );
  DFFRQX2M \memory_reg[13][1]  ( .D(n153), .CK(CLK), .RN(n321), .Q(
        \memory[13][1] ) );
  DFFRQX2M \memory_reg[13][0]  ( .D(n152), .CK(CLK), .RN(n321), .Q(
        \memory[13][0] ) );
  DFFRQX2M \memory_reg[11][7]  ( .D(n143), .CK(CLK), .RN(n321), .Q(
        \memory[11][7] ) );
  DFFRQX2M \memory_reg[11][6]  ( .D(n142), .CK(CLK), .RN(n320), .Q(
        \memory[11][6] ) );
  DFFRQX2M \memory_reg[11][5]  ( .D(n141), .CK(CLK), .RN(n320), .Q(
        \memory[11][5] ) );
  DFFRQX2M \memory_reg[11][4]  ( .D(n140), .CK(CLK), .RN(n320), .Q(
        \memory[11][4] ) );
  DFFRQX2M \memory_reg[11][3]  ( .D(n139), .CK(CLK), .RN(n320), .Q(
        \memory[11][3] ) );
  DFFRQX2M \memory_reg[11][2]  ( .D(n138), .CK(CLK), .RN(n320), .Q(
        \memory[11][2] ) );
  DFFRQX2M \memory_reg[11][1]  ( .D(n137), .CK(CLK), .RN(n320), .Q(
        \memory[11][1] ) );
  DFFRQX2M \memory_reg[11][0]  ( .D(n136), .CK(CLK), .RN(n320), .Q(
        \memory[11][0] ) );
  DFFRQX2M \memory_reg[9][7]  ( .D(n127), .CK(CLK), .RN(n319), .Q(
        \memory[9][7] ) );
  DFFRQX2M \memory_reg[9][6]  ( .D(n126), .CK(CLK), .RN(n319), .Q(
        \memory[9][6] ) );
  DFFRQX2M \memory_reg[9][5]  ( .D(n125), .CK(CLK), .RN(n319), .Q(
        \memory[9][5] ) );
  DFFRQX2M \memory_reg[9][4]  ( .D(n124), .CK(CLK), .RN(n319), .Q(
        \memory[9][4] ) );
  DFFRQX2M \memory_reg[9][3]  ( .D(n123), .CK(CLK), .RN(n319), .Q(
        \memory[9][3] ) );
  DFFRQX2M \memory_reg[9][2]  ( .D(n122), .CK(CLK), .RN(n319), .Q(
        \memory[9][2] ) );
  DFFRQX2M \memory_reg[9][1]  ( .D(n121), .CK(CLK), .RN(n319), .Q(
        \memory[9][1] ) );
  DFFRQX2M \memory_reg[9][0]  ( .D(n120), .CK(CLK), .RN(n319), .Q(
        \memory[9][0] ) );
  DFFRQX2M \memory_reg[7][7]  ( .D(n111), .CK(CLK), .RN(n318), .Q(
        \memory[7][7] ) );
  DFFRQX2M \memory_reg[7][6]  ( .D(n110), .CK(CLK), .RN(n318), .Q(
        \memory[7][6] ) );
  DFFRQX2M \memory_reg[7][5]  ( .D(n109), .CK(CLK), .RN(n318), .Q(
        \memory[7][5] ) );
  DFFRQX2M \memory_reg[7][4]  ( .D(n108), .CK(CLK), .RN(n318), .Q(
        \memory[7][4] ) );
  DFFRQX2M \memory_reg[7][3]  ( .D(n107), .CK(CLK), .RN(n318), .Q(
        \memory[7][3] ) );
  DFFRQX2M \memory_reg[7][2]  ( .D(n106), .CK(CLK), .RN(n318), .Q(
        \memory[7][2] ) );
  DFFRQX2M \memory_reg[7][1]  ( .D(n105), .CK(CLK), .RN(n318), .Q(
        \memory[7][1] ) );
  DFFRQX2M \memory_reg[7][0]  ( .D(n104), .CK(CLK), .RN(n317), .Q(
        \memory[7][0] ) );
  DFFRQX2M \memory_reg[5][7]  ( .D(n95), .CK(CLK), .RN(n317), .Q(
        \memory[5][7] ) );
  DFFRQX2M \memory_reg[5][6]  ( .D(n94), .CK(CLK), .RN(n317), .Q(
        \memory[5][6] ) );
  DFFRQX2M \memory_reg[5][5]  ( .D(n93), .CK(CLK), .RN(n317), .Q(
        \memory[5][5] ) );
  DFFRQX2M \memory_reg[5][4]  ( .D(n92), .CK(CLK), .RN(n317), .Q(
        \memory[5][4] ) );
  DFFRQX2M \memory_reg[5][3]  ( .D(n91), .CK(CLK), .RN(n316), .Q(
        \memory[5][3] ) );
  DFFRQX2M \memory_reg[5][2]  ( .D(n90), .CK(CLK), .RN(n316), .Q(
        \memory[5][2] ) );
  DFFRQX2M \memory_reg[5][1]  ( .D(n89), .CK(CLK), .RN(n316), .Q(
        \memory[5][1] ) );
  DFFRQX2M \memory_reg[5][0]  ( .D(n88), .CK(CLK), .RN(n316), .Q(
        \memory[5][0] ) );
  DFFRQX2M \memory_reg[14][7]  ( .D(n167), .CK(CLK), .RN(n322), .Q(
        \memory[14][7] ) );
  DFFRQX2M \memory_reg[14][6]  ( .D(n166), .CK(CLK), .RN(n322), .Q(
        \memory[14][6] ) );
  DFFRQX2M \memory_reg[14][5]  ( .D(n165), .CK(CLK), .RN(n322), .Q(
        \memory[14][5] ) );
  DFFRQX2M \memory_reg[14][4]  ( .D(n164), .CK(CLK), .RN(n322), .Q(
        \memory[14][4] ) );
  DFFRQX2M \memory_reg[14][3]  ( .D(n163), .CK(CLK), .RN(n322), .Q(
        \memory[14][3] ) );
  DFFRQX2M \memory_reg[14][2]  ( .D(n162), .CK(CLK), .RN(n322), .Q(
        \memory[14][2] ) );
  DFFRQX2M \memory_reg[14][1]  ( .D(n161), .CK(CLK), .RN(n322), .Q(
        \memory[14][1] ) );
  DFFRQX2M \memory_reg[14][0]  ( .D(n160), .CK(CLK), .RN(n322), .Q(
        \memory[14][0] ) );
  DFFRQX2M \memory_reg[12][7]  ( .D(n151), .CK(CLK), .RN(n321), .Q(
        \memory[12][7] ) );
  DFFRQX2M \memory_reg[12][6]  ( .D(n150), .CK(CLK), .RN(n321), .Q(
        \memory[12][6] ) );
  DFFRQX2M \memory_reg[12][5]  ( .D(n149), .CK(CLK), .RN(n321), .Q(
        \memory[12][5] ) );
  DFFRQX2M \memory_reg[12][4]  ( .D(n148), .CK(CLK), .RN(n321), .Q(
        \memory[12][4] ) );
  DFFRQX2M \memory_reg[12][3]  ( .D(n147), .CK(CLK), .RN(n321), .Q(
        \memory[12][3] ) );
  DFFRQX2M \memory_reg[12][2]  ( .D(n146), .CK(CLK), .RN(n321), .Q(
        \memory[12][2] ) );
  DFFRQX2M \memory_reg[12][1]  ( .D(n145), .CK(CLK), .RN(n321), .Q(
        \memory[12][1] ) );
  DFFRQX2M \memory_reg[12][0]  ( .D(n144), .CK(CLK), .RN(n321), .Q(
        \memory[12][0] ) );
  DFFRQX2M \memory_reg[10][7]  ( .D(n135), .CK(CLK), .RN(n320), .Q(
        \memory[10][7] ) );
  DFFRQX2M \memory_reg[10][6]  ( .D(n134), .CK(CLK), .RN(n320), .Q(
        \memory[10][6] ) );
  DFFRQX2M \memory_reg[10][5]  ( .D(n133), .CK(CLK), .RN(n320), .Q(
        \memory[10][5] ) );
  DFFRQX2M \memory_reg[10][4]  ( .D(n132), .CK(CLK), .RN(n320), .Q(
        \memory[10][4] ) );
  DFFRQX2M \memory_reg[10][3]  ( .D(n131), .CK(CLK), .RN(n320), .Q(
        \memory[10][3] ) );
  DFFRQX2M \memory_reg[10][2]  ( .D(n130), .CK(CLK), .RN(n320), .Q(
        \memory[10][2] ) );
  DFFRQX2M \memory_reg[10][1]  ( .D(n129), .CK(CLK), .RN(n319), .Q(
        \memory[10][1] ) );
  DFFRQX2M \memory_reg[10][0]  ( .D(n128), .CK(CLK), .RN(n319), .Q(
        \memory[10][0] ) );
  DFFRQX2M \memory_reg[8][7]  ( .D(n119), .CK(CLK), .RN(n319), .Q(
        \memory[8][7] ) );
  DFFRQX2M \memory_reg[8][6]  ( .D(n118), .CK(CLK), .RN(n319), .Q(
        \memory[8][6] ) );
  DFFRQX2M \memory_reg[8][5]  ( .D(n117), .CK(CLK), .RN(n319), .Q(
        \memory[8][5] ) );
  DFFRQX2M \memory_reg[8][4]  ( .D(n116), .CK(CLK), .RN(n318), .Q(
        \memory[8][4] ) );
  DFFRQX2M \memory_reg[8][3]  ( .D(n115), .CK(CLK), .RN(n318), .Q(
        \memory[8][3] ) );
  DFFRQX2M \memory_reg[8][2]  ( .D(n114), .CK(CLK), .RN(n318), .Q(
        \memory[8][2] ) );
  DFFRQX2M \memory_reg[8][1]  ( .D(n113), .CK(CLK), .RN(n318), .Q(
        \memory[8][1] ) );
  DFFRQX2M \memory_reg[8][0]  ( .D(n112), .CK(CLK), .RN(n318), .Q(
        \memory[8][0] ) );
  DFFRQX2M \memory_reg[6][7]  ( .D(n103), .CK(CLK), .RN(n317), .Q(
        \memory[6][7] ) );
  DFFRQX2M \memory_reg[6][6]  ( .D(n102), .CK(CLK), .RN(n317), .Q(
        \memory[6][6] ) );
  DFFRQX2M \memory_reg[6][5]  ( .D(n101), .CK(CLK), .RN(n317), .Q(
        \memory[6][5] ) );
  DFFRQX2M \memory_reg[6][4]  ( .D(n100), .CK(CLK), .RN(n317), .Q(
        \memory[6][4] ) );
  DFFRQX2M \memory_reg[6][3]  ( .D(n99), .CK(CLK), .RN(n317), .Q(
        \memory[6][3] ) );
  DFFRQX2M \memory_reg[6][2]  ( .D(n98), .CK(CLK), .RN(n317), .Q(
        \memory[6][2] ) );
  DFFRQX2M \memory_reg[6][1]  ( .D(n97), .CK(CLK), .RN(n317), .Q(
        \memory[6][1] ) );
  DFFRQX2M \memory_reg[6][0]  ( .D(n96), .CK(CLK), .RN(n317), .Q(
        \memory[6][0] ) );
  DFFRQX2M \memory_reg[4][7]  ( .D(n87), .CK(CLK), .RN(n316), .Q(
        \memory[4][7] ) );
  DFFRQX2M \memory_reg[4][6]  ( .D(n86), .CK(CLK), .RN(n316), .Q(
        \memory[4][6] ) );
  DFFRQX2M \memory_reg[4][5]  ( .D(n85), .CK(CLK), .RN(n316), .Q(
        \memory[4][5] ) );
  DFFRQX2M \memory_reg[4][4]  ( .D(n84), .CK(CLK), .RN(n316), .Q(
        \memory[4][4] ) );
  DFFRQX2M \memory_reg[4][3]  ( .D(n83), .CK(CLK), .RN(n316), .Q(
        \memory[4][3] ) );
  DFFRQX2M \memory_reg[4][2]  ( .D(n82), .CK(CLK), .RN(n316), .Q(
        \memory[4][2] ) );
  DFFRQX2M \memory_reg[4][1]  ( .D(n81), .CK(CLK), .RN(n316), .Q(
        \memory[4][1] ) );
  DFFRQX2M \memory_reg[4][0]  ( .D(n80), .CK(CLK), .RN(n316), .Q(
        \memory[4][0] ) );
  DFFRQX2M RdData_valid_reg ( .D(n176), .CK(CLK), .RN(n313), .Q(RdData_valid)
         );
  DFFRQX2M \RdData_reg[7]  ( .D(n47), .CK(CLK), .RN(n315), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n46), .CK(CLK), .RN(n313), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n45), .CK(CLK), .RN(n313), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n44), .CK(CLK), .RN(n313), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n43), .CK(CLK), .RN(n313), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n42), .CK(CLK), .RN(n313), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n41), .CK(CLK), .RN(n313), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n40), .CK(CLK), .RN(n318), .Q(RdData[0]) );
  DFFSQX2M \memory_reg[3][5]  ( .D(n77), .CK(CLK), .SN(n313), .Q(REG3[5]) );
  DFFRQX2M \memory_reg[3][0]  ( .D(n72), .CK(CLK), .RN(n315), .Q(REG3[0]) );
  DFFRQX2M \memory_reg[2][1]  ( .D(n65), .CK(CLK), .RN(n315), .Q(REG2[1]) );
  DFFSQX2M \memory_reg[2][0]  ( .D(n64), .CK(CLK), .SN(n313), .Q(REG2[0]) );
  DFFRQX2M \memory_reg[3][7]  ( .D(n79), .CK(CLK), .RN(n316), .Q(REG3[7]) );
  DFFRQX2M \memory_reg[3][4]  ( .D(n76), .CK(CLK), .RN(n315), .Q(REG3[4]) );
  DFFRQX2M \memory_reg[3][2]  ( .D(n74), .CK(CLK), .RN(n315), .Q(REG3[2]) );
  DFFRQX2M \memory_reg[3][3]  ( .D(n75), .CK(CLK), .RN(n315), .Q(REG3[3]) );
  DFFRQX2M \memory_reg[3][6]  ( .D(n78), .CK(CLK), .RN(n315), .Q(REG3[6]) );
  DFFRQX2M \memory_reg[3][1]  ( .D(n73), .CK(CLK), .RN(n315), .Q(REG3[1]) );
  DFFRQX4M \memory_reg[2][4]  ( .D(n68), .CK(CLK), .RN(n315), .Q(REG2[4]) );
  DFFRQX4M \memory_reg[2][5]  ( .D(n69), .CK(CLK), .RN(n315), .Q(REG2[5]) );
  DFFRQX4M \memory_reg[2][6]  ( .D(n70), .CK(CLK), .RN(n315), .Q(REG2[6]) );
  DFFRQX4M \memory_reg[2][3]  ( .D(n67), .CK(CLK), .RN(n315), .Q(REG2[3]) );
  DFFRQX4M \memory_reg[2][2]  ( .D(n66), .CK(CLK), .RN(n315), .Q(REG2[2]) );
  DFFRQX2M \memory_reg[0][2]  ( .D(n50), .CK(CLK), .RN(n313), .Q(REG0[2]) );
  DFFRQX2M \memory_reg[0][1]  ( .D(n49), .CK(CLK), .RN(n313), .Q(REG0[1]) );
  DFFRQX4M \memory_reg[0][0]  ( .D(n48), .CK(CLK), .RN(n313), .Q(REG0[0]) );
  DFFRQX2M \memory_reg[0][3]  ( .D(n51), .CK(CLK), .RN(n314), .Q(REG0[3]) );
  DFFSQX2M \memory_reg[2][7]  ( .D(n71), .CK(CLK), .SN(n313), .Q(REG2[7]) );
  DFFRHQX4M \memory_reg[0][6]  ( .D(n54), .CK(CLK), .RN(n314), .Q(REG0[6]) );
  DFFRHQX2M \memory_reg[0][7]  ( .D(n55), .CK(CLK), .RN(n314), .Q(REG0[7]) );
  DFFRQX4M \memory_reg[1][3]  ( .D(n59), .CK(CLK), .RN(n314), .Q(REG1[3]) );
  DFFRQX4M \memory_reg[1][2]  ( .D(n58), .CK(CLK), .RN(n314), .Q(REG1[2]) );
  DFFRQX2M \memory_reg[0][4]  ( .D(n52), .CK(CLK), .RN(n314), .Q(REG0[4]) );
  DFFRQX2M \memory_reg[0][5]  ( .D(n53), .CK(CLK), .RN(n314), .Q(REG0[5]) );
  DFFRHQX2M \memory_reg[1][0]  ( .D(n56), .CK(CLK), .RN(n314), .Q(n339) );
  DFFRHQX1M \memory_reg[1][5]  ( .D(n61), .CK(CLK), .RN(n314), .Q(n337) );
  DFFRHQX4M \memory_reg[1][7]  ( .D(n63), .CK(CLK), .RN(n314), .Q(n336) );
  DFFRHQX8M \memory_reg[1][4]  ( .D(n60), .CK(CLK), .RN(n314), .Q(REG1[4]) );
  DFFRHQX4M \memory_reg[1][1]  ( .D(n57), .CK(CLK), .RN(n314), .Q(n338) );
  DFFRHQX4M \memory_reg[1][6]  ( .D(n62), .CK(CLK), .RN(n314), .Q(REG1[6]) );
  INVXLM U3 ( .A(REG1[6]), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n2) );
  INVX10M U5 ( .A(n338), .Y(n3) );
  CLKINVX40M U6 ( .A(n3), .Y(REG1[1]) );
  CLKINVX16M U7 ( .A(n336), .Y(n293) );
  DLY1X1M U8 ( .A(n2), .Y(n6) );
  AOI22XLM U9 ( .A0(REG0[5]), .A1(n291), .B0(REG1[5]), .B1(n288), .Y(n236) );
  BUFX16M U10 ( .A(n337), .Y(REG1[5]) );
  BUFX2M U11 ( .A(REG0[7]), .Y(n5) );
  NOR2X2M U12 ( .A(n279), .B(N12), .Y(n267) );
  CLKINVX40M U13 ( .A(n293), .Y(REG1[7]) );
  CLKINVX32M U14 ( .A(n296), .Y(REG1[0]) );
  INVX6M U15 ( .A(n339), .Y(n296) );
  NOR2BX2M U16 ( .AN(n38), .B(N11), .Y(n30) );
  NOR2BX2M U17 ( .AN(n26), .B(N11), .Y(n15) );
  NOR2BX2M U18 ( .AN(N13), .B(N12), .Y(n22) );
  NOR2BX2M U19 ( .AN(N13), .B(n278), .Y(n25) );
  NOR2X2M U20 ( .A(n278), .B(N13), .Y(n19) );
  NOR2X2M U21 ( .A(N12), .B(N13), .Y(n14) );
  AOI22XLM U22 ( .A0(REG0[4]), .A1(n291), .B0(REG1[4]), .B1(n288), .Y(n224) );
  MX2XLM U23 ( .A(REG1[1]), .B(WrData[1]), .S0(n7), .Y(n57) );
  MX2XLM U24 ( .A(REG1[2]), .B(WrData[2]), .S0(n7), .Y(n58) );
  MX2XLM U25 ( .A(REG1[3]), .B(WrData[3]), .S0(n7), .Y(n59) );
  OAI2BB2XLM U26 ( .B0(n298), .B1(n329), .A0N(REG0[4]), .A1N(n298), .Y(n52) );
  OAI2BB2XLM U27 ( .B0(n298), .B1(n334), .A0N(REG0[5]), .A1N(n298), .Y(n53) );
  OAI2BB2XLM U28 ( .B0(n298), .B1(n333), .A0N(REG0[6]), .A1N(n298), .Y(n54) );
  BUFX2M U29 ( .A(n265), .Y(n282) );
  BUFX2M U30 ( .A(n265), .Y(n281) );
  BUFX2M U31 ( .A(n265), .Y(n280) );
  BUFX2M U32 ( .A(n34), .Y(n303) );
  BUFX2M U33 ( .A(n31), .Y(n305) );
  BUFX2M U34 ( .A(n36), .Y(n301) );
  BUFX2M U35 ( .A(n20), .Y(n311) );
  BUFX2M U36 ( .A(n23), .Y(n309) );
  BUFX2M U37 ( .A(n27), .Y(n307) );
  BUFX2M U38 ( .A(n18), .Y(n312) );
  BUFX2M U39 ( .A(n21), .Y(n310) );
  BUFX2M U40 ( .A(n24), .Y(n308) );
  BUFX2M U41 ( .A(n29), .Y(n306) );
  BUFX2M U42 ( .A(n33), .Y(n304) );
  BUFX2M U43 ( .A(n268), .Y(n292) );
  BUFX2M U44 ( .A(n266), .Y(n285) );
  BUFX2M U45 ( .A(n268), .Y(n291) );
  BUFX2M U46 ( .A(n266), .Y(n284) );
  BUFX2M U47 ( .A(n287), .Y(n289) );
  BUFX2M U48 ( .A(n287), .Y(n288) );
  BUFX2M U49 ( .A(n266), .Y(n283) );
  BUFX2M U50 ( .A(n268), .Y(n290) );
  NOR2BX2M U51 ( .AN(n38), .B(n279), .Y(n32) );
  AND2X2M U52 ( .A(n17), .B(n14), .Y(n7) );
  NOR2BX2M U53 ( .AN(n26), .B(n279), .Y(n17) );
  BUFX4M U54 ( .A(n39), .Y(n299) );
  NAND2X2M U55 ( .A(n32), .B(n25), .Y(n39) );
  NAND2X2M U56 ( .A(n22), .B(n17), .Y(n23) );
  NAND2X2M U57 ( .A(n25), .B(n17), .Y(n27) );
  NAND2X2M U58 ( .A(n32), .B(n14), .Y(n31) );
  NAND2X2M U59 ( .A(n32), .B(n19), .Y(n34) );
  NAND2X2M U60 ( .A(n32), .B(n22), .Y(n36) );
  NAND2X2M U61 ( .A(n19), .B(n17), .Y(n20) );
  BUFX4M U62 ( .A(n35), .Y(n302) );
  NAND2X2M U63 ( .A(n30), .B(n22), .Y(n35) );
  BUFX4M U64 ( .A(n37), .Y(n300) );
  NAND2X2M U65 ( .A(n30), .B(n25), .Y(n37) );
  BUFX4M U66 ( .A(n13), .Y(n298) );
  NAND2X2M U67 ( .A(n15), .B(n14), .Y(n13) );
  NAND2X2M U68 ( .A(n30), .B(n14), .Y(n29) );
  NAND2X2M U69 ( .A(n30), .B(n19), .Y(n33) );
  NAND2X2M U70 ( .A(n22), .B(n15), .Y(n21) );
  NAND2X2M U71 ( .A(n25), .B(n15), .Y(n24) );
  NAND2X2M U72 ( .A(n19), .B(n15), .Y(n18) );
  INVX2M U73 ( .A(n12), .Y(n327) );
  BUFX4M U74 ( .A(n326), .Y(n315) );
  BUFX4M U75 ( .A(n324), .Y(n316) );
  BUFX4M U76 ( .A(n326), .Y(n317) );
  BUFX4M U77 ( .A(n324), .Y(n318) );
  BUFX4M U78 ( .A(n324), .Y(n319) );
  BUFX4M U79 ( .A(n326), .Y(n320) );
  BUFX4M U80 ( .A(n325), .Y(n321) );
  BUFX4M U81 ( .A(n325), .Y(n322) );
  BUFX4M U82 ( .A(n324), .Y(n314) );
  BUFX2M U83 ( .A(n326), .Y(n323) );
  INVX2M U84 ( .A(N11), .Y(n279) );
  INVX2M U85 ( .A(N12), .Y(n278) );
  INVX2M U86 ( .A(n286), .Y(n287) );
  INVX2M U87 ( .A(n267), .Y(n286) );
  INVX2M U88 ( .A(N13), .Y(n277) );
  INVX2M U89 ( .A(N14), .Y(n276) );
  NOR2BX2M U90 ( .AN(WrEn), .B(RdEn), .Y(n28) );
  NOR2BX2M U91 ( .AN(n28), .B(N14), .Y(n26) );
  AND2X2M U92 ( .A(N14), .B(n28), .Y(n38) );
  INVX4M U93 ( .A(WrData[3]), .Y(n335) );
  INVX4M U94 ( .A(WrData[0]), .Y(n332) );
  INVX4M U95 ( .A(WrData[1]), .Y(n331) );
  INVX4M U96 ( .A(WrData[2]), .Y(n330) );
  INVX4M U97 ( .A(WrData[4]), .Y(n329) );
  NAND2BX2M U98 ( .AN(WrEn), .B(RdEn), .Y(n12) );
  INVX4M U99 ( .A(WrData[7]), .Y(n328) );
  BUFX4M U100 ( .A(n325), .Y(n313) );
  BUFX2M U101 ( .A(n324), .Y(n325) );
  BUFX2M U102 ( .A(n326), .Y(n324) );
  MX2X2M U103 ( .A(REG1[4]), .B(WrData[4]), .S0(n7), .Y(n60) );
  MX2X2M U104 ( .A(REG1[0]), .B(WrData[0]), .S0(n7), .Y(n56) );
  MX2X2M U105 ( .A(REG1[5]), .B(WrData[5]), .S0(n7), .Y(n61) );
  INVX4M U106 ( .A(WrData[5]), .Y(n334) );
  INVX4M U107 ( .A(WrData[6]), .Y(n333) );
  BUFX2M U108 ( .A(RST), .Y(n326) );
  AO22X1M U109 ( .A0(N43), .A1(n327), .B0(RdData[0]), .B1(n12), .Y(n40) );
  AO22X1M U110 ( .A0(N42), .A1(n327), .B0(RdData[1]), .B1(n12), .Y(n41) );
  AO22X1M U111 ( .A0(N41), .A1(n327), .B0(RdData[2]), .B1(n12), .Y(n42) );
  AO22X1M U112 ( .A0(N40), .A1(n327), .B0(RdData[3]), .B1(n12), .Y(n43) );
  AO22X1M U113 ( .A0(N39), .A1(n327), .B0(RdData[4]), .B1(n12), .Y(n44) );
  AO22X1M U114 ( .A0(N38), .A1(n327), .B0(RdData[5]), .B1(n12), .Y(n45) );
  AO22X1M U115 ( .A0(N37), .A1(n327), .B0(RdData[6]), .B1(n12), .Y(n46) );
  AO22X1M U116 ( .A0(N36), .A1(n327), .B0(RdData[7]), .B1(n12), .Y(n47) );
  OAI2BB2X1M U117 ( .B0(n332), .B1(n311), .A0N(REG3[0]), .A1N(n311), .Y(n72)
         );
  OAI2BB2X1M U118 ( .B0(n331), .B1(n20), .A0N(REG3[1]), .A1N(n311), .Y(n73) );
  OAI2BB2X1M U119 ( .B0(n330), .B1(n20), .A0N(REG3[2]), .A1N(n311), .Y(n74) );
  OAI2BB2X1M U120 ( .B0(n335), .B1(n311), .A0N(REG3[3]), .A1N(n311), .Y(n75)
         );
  OAI2BB2X1M U121 ( .B0(n329), .B1(n20), .A0N(REG3[4]), .A1N(n311), .Y(n76) );
  OAI2BB2X1M U122 ( .B0(n333), .B1(n20), .A0N(REG3[6]), .A1N(n311), .Y(n78) );
  OAI2BB2X1M U123 ( .B0(n328), .B1(n311), .A0N(REG3[7]), .A1N(n311), .Y(n79)
         );
  OAI2BB2X1M U124 ( .B0(n332), .B1(n309), .A0N(\memory[5][0] ), .A1N(n309), 
        .Y(n88) );
  OAI2BB2X1M U125 ( .B0(n331), .B1(n23), .A0N(\memory[5][1] ), .A1N(n309), .Y(
        n89) );
  OAI2BB2X1M U126 ( .B0(n330), .B1(n23), .A0N(\memory[5][2] ), .A1N(n309), .Y(
        n90) );
  OAI2BB2X1M U127 ( .B0(n335), .B1(n309), .A0N(\memory[5][3] ), .A1N(n309), 
        .Y(n91) );
  OAI2BB2X1M U128 ( .B0(n329), .B1(n23), .A0N(\memory[5][4] ), .A1N(n309), .Y(
        n92) );
  OAI2BB2X1M U129 ( .B0(n334), .B1(n23), .A0N(\memory[5][5] ), .A1N(n309), .Y(
        n93) );
  OAI2BB2X1M U130 ( .B0(n333), .B1(n23), .A0N(\memory[5][6] ), .A1N(n309), .Y(
        n94) );
  OAI2BB2X1M U131 ( .B0(n328), .B1(n309), .A0N(\memory[5][7] ), .A1N(n309), 
        .Y(n95) );
  OAI2BB2X1M U132 ( .B0(n332), .B1(n307), .A0N(\memory[7][0] ), .A1N(n307), 
        .Y(n104) );
  OAI2BB2X1M U133 ( .B0(n331), .B1(n27), .A0N(\memory[7][1] ), .A1N(n307), .Y(
        n105) );
  OAI2BB2X1M U134 ( .B0(n330), .B1(n27), .A0N(\memory[7][2] ), .A1N(n307), .Y(
        n106) );
  OAI2BB2X1M U135 ( .B0(n335), .B1(n307), .A0N(\memory[7][3] ), .A1N(n307), 
        .Y(n107) );
  OAI2BB2X1M U136 ( .B0(n329), .B1(n27), .A0N(\memory[7][4] ), .A1N(n307), .Y(
        n108) );
  OAI2BB2X1M U137 ( .B0(n334), .B1(n27), .A0N(\memory[7][5] ), .A1N(n307), .Y(
        n109) );
  OAI2BB2X1M U138 ( .B0(n333), .B1(n27), .A0N(\memory[7][6] ), .A1N(n307), .Y(
        n110) );
  OAI2BB2X1M U139 ( .B0(n328), .B1(n307), .A0N(\memory[7][7] ), .A1N(n307), 
        .Y(n111) );
  OAI2BB2X1M U140 ( .B0(n332), .B1(n305), .A0N(\memory[9][0] ), .A1N(n305), 
        .Y(n120) );
  OAI2BB2X1M U141 ( .B0(n331), .B1(n31), .A0N(\memory[9][1] ), .A1N(n305), .Y(
        n121) );
  OAI2BB2X1M U142 ( .B0(n330), .B1(n31), .A0N(\memory[9][2] ), .A1N(n305), .Y(
        n122) );
  OAI2BB2X1M U143 ( .B0(n335), .B1(n305), .A0N(\memory[9][3] ), .A1N(n305), 
        .Y(n123) );
  OAI2BB2X1M U144 ( .B0(n329), .B1(n305), .A0N(\memory[9][4] ), .A1N(n305), 
        .Y(n124) );
  OAI2BB2X1M U145 ( .B0(n334), .B1(n31), .A0N(\memory[9][5] ), .A1N(n305), .Y(
        n125) );
  OAI2BB2X1M U146 ( .B0(n333), .B1(n31), .A0N(\memory[9][6] ), .A1N(n305), .Y(
        n126) );
  OAI2BB2X1M U147 ( .B0(n328), .B1(n305), .A0N(\memory[9][7] ), .A1N(n305), 
        .Y(n127) );
  OAI2BB2X1M U148 ( .B0(n332), .B1(n303), .A0N(\memory[11][0] ), .A1N(n303), 
        .Y(n136) );
  OAI2BB2X1M U149 ( .B0(n331), .B1(n34), .A0N(\memory[11][1] ), .A1N(n303), 
        .Y(n137) );
  OAI2BB2X1M U150 ( .B0(n330), .B1(n34), .A0N(\memory[11][2] ), .A1N(n303), 
        .Y(n138) );
  OAI2BB2X1M U151 ( .B0(n335), .B1(n303), .A0N(\memory[11][3] ), .A1N(n303), 
        .Y(n139) );
  OAI2BB2X1M U152 ( .B0(n329), .B1(n303), .A0N(\memory[11][4] ), .A1N(n303), 
        .Y(n140) );
  OAI2BB2X1M U153 ( .B0(n334), .B1(n34), .A0N(\memory[11][5] ), .A1N(n303), 
        .Y(n141) );
  OAI2BB2X1M U154 ( .B0(n333), .B1(n34), .A0N(\memory[11][6] ), .A1N(n303), 
        .Y(n142) );
  OAI2BB2X1M U155 ( .B0(n328), .B1(n303), .A0N(\memory[11][7] ), .A1N(n303), 
        .Y(n143) );
  OAI2BB2X1M U156 ( .B0(n332), .B1(n301), .A0N(\memory[13][0] ), .A1N(n301), 
        .Y(n152) );
  OAI2BB2X1M U157 ( .B0(n331), .B1(n36), .A0N(\memory[13][1] ), .A1N(n301), 
        .Y(n153) );
  OAI2BB2X1M U158 ( .B0(n330), .B1(n36), .A0N(\memory[13][2] ), .A1N(n301), 
        .Y(n154) );
  OAI2BB2X1M U159 ( .B0(n335), .B1(n301), .A0N(\memory[13][3] ), .A1N(n301), 
        .Y(n155) );
  OAI2BB2X1M U160 ( .B0(n329), .B1(n301), .A0N(\memory[13][4] ), .A1N(n301), 
        .Y(n156) );
  OAI2BB2X1M U161 ( .B0(n334), .B1(n36), .A0N(\memory[13][5] ), .A1N(n301), 
        .Y(n157) );
  OAI2BB2X1M U162 ( .B0(n333), .B1(n36), .A0N(\memory[13][6] ), .A1N(n301), 
        .Y(n158) );
  OAI2BB2X1M U163 ( .B0(n328), .B1(n301), .A0N(\memory[13][7] ), .A1N(n301), 
        .Y(n159) );
  OAI2BB2X1M U164 ( .B0(n332), .B1(n299), .A0N(\memory[15][0] ), .A1N(n299), 
        .Y(n168) );
  OAI2BB2X1M U165 ( .B0(n331), .B1(n299), .A0N(\memory[15][1] ), .A1N(n299), 
        .Y(n169) );
  OAI2BB2X1M U166 ( .B0(n330), .B1(n299), .A0N(\memory[15][2] ), .A1N(n299), 
        .Y(n170) );
  OAI2BB2X1M U167 ( .B0(n335), .B1(n299), .A0N(\memory[15][3] ), .A1N(n299), 
        .Y(n171) );
  OAI2BB2X1M U168 ( .B0(n329), .B1(n299), .A0N(\memory[15][4] ), .A1N(n299), 
        .Y(n172) );
  OAI2BB2X1M U169 ( .B0(n334), .B1(n299), .A0N(\memory[15][5] ), .A1N(n299), 
        .Y(n173) );
  OAI2BB2X1M U170 ( .B0(n333), .B1(n299), .A0N(\memory[15][6] ), .A1N(n299), 
        .Y(n174) );
  OAI2BB2X1M U171 ( .B0(n328), .B1(n299), .A0N(\memory[15][7] ), .A1N(n299), 
        .Y(n175) );
  OAI2BB2X1M U172 ( .B0(n334), .B1(n20), .A0N(REG3[5]), .A1N(n311), .Y(n77) );
  OAI2BB2X1M U173 ( .B0(n331), .B1(n18), .A0N(REG2[1]), .A1N(n312), .Y(n65) );
  OAI2BB2X1M U174 ( .B0(n330), .B1(n18), .A0N(REG2[2]), .A1N(n312), .Y(n66) );
  OAI2BB2X1M U175 ( .B0(n335), .B1(n312), .A0N(REG2[3]), .A1N(n312), .Y(n67)
         );
  OAI2BB2X1M U176 ( .B0(n329), .B1(n312), .A0N(REG2[4]), .A1N(n312), .Y(n68)
         );
  OAI2BB2X1M U177 ( .B0(n334), .B1(n18), .A0N(REG2[5]), .A1N(n312), .Y(n69) );
  OAI2BB2X1M U178 ( .B0(n333), .B1(n18), .A0N(REG2[6]), .A1N(n312), .Y(n70) );
  OAI2BB2X1M U179 ( .B0(n332), .B1(n310), .A0N(\memory[4][0] ), .A1N(n310), 
        .Y(n80) );
  OAI2BB2X1M U180 ( .B0(n331), .B1(n21), .A0N(\memory[4][1] ), .A1N(n310), .Y(
        n81) );
  OAI2BB2X1M U181 ( .B0(n330), .B1(n21), .A0N(\memory[4][2] ), .A1N(n310), .Y(
        n82) );
  OAI2BB2X1M U182 ( .B0(n335), .B1(n310), .A0N(\memory[4][3] ), .A1N(n310), 
        .Y(n83) );
  OAI2BB2X1M U183 ( .B0(n329), .B1(n21), .A0N(\memory[4][4] ), .A1N(n310), .Y(
        n84) );
  OAI2BB2X1M U184 ( .B0(n334), .B1(n21), .A0N(\memory[4][5] ), .A1N(n310), .Y(
        n85) );
  OAI2BB2X1M U185 ( .B0(n333), .B1(n21), .A0N(\memory[4][6] ), .A1N(n310), .Y(
        n86) );
  OAI2BB2X1M U186 ( .B0(n328), .B1(n310), .A0N(\memory[4][7] ), .A1N(n310), 
        .Y(n87) );
  OAI2BB2X1M U187 ( .B0(n332), .B1(n308), .A0N(\memory[6][0] ), .A1N(n308), 
        .Y(n96) );
  OAI2BB2X1M U188 ( .B0(n331), .B1(n24), .A0N(\memory[6][1] ), .A1N(n308), .Y(
        n97) );
  OAI2BB2X1M U189 ( .B0(n330), .B1(n24), .A0N(\memory[6][2] ), .A1N(n308), .Y(
        n98) );
  OAI2BB2X1M U190 ( .B0(n335), .B1(n308), .A0N(\memory[6][3] ), .A1N(n308), 
        .Y(n99) );
  OAI2BB2X1M U191 ( .B0(n329), .B1(n24), .A0N(\memory[6][4] ), .A1N(n308), .Y(
        n100) );
  OAI2BB2X1M U192 ( .B0(n334), .B1(n24), .A0N(\memory[6][5] ), .A1N(n308), .Y(
        n101) );
  OAI2BB2X1M U193 ( .B0(n333), .B1(n24), .A0N(\memory[6][6] ), .A1N(n308), .Y(
        n102) );
  OAI2BB2X1M U194 ( .B0(n328), .B1(n308), .A0N(\memory[6][7] ), .A1N(n308), 
        .Y(n103) );
  OAI2BB2X1M U195 ( .B0(n332), .B1(n306), .A0N(\memory[8][0] ), .A1N(n306), 
        .Y(n112) );
  OAI2BB2X1M U196 ( .B0(n331), .B1(n29), .A0N(\memory[8][1] ), .A1N(n306), .Y(
        n113) );
  OAI2BB2X1M U197 ( .B0(n330), .B1(n29), .A0N(\memory[8][2] ), .A1N(n306), .Y(
        n114) );
  OAI2BB2X1M U198 ( .B0(n335), .B1(n306), .A0N(\memory[8][3] ), .A1N(n306), 
        .Y(n115) );
  OAI2BB2X1M U199 ( .B0(n329), .B1(n306), .A0N(\memory[8][4] ), .A1N(n306), 
        .Y(n116) );
  OAI2BB2X1M U200 ( .B0(n334), .B1(n29), .A0N(\memory[8][5] ), .A1N(n306), .Y(
        n117) );
  OAI2BB2X1M U201 ( .B0(n333), .B1(n29), .A0N(\memory[8][6] ), .A1N(n306), .Y(
        n118) );
  OAI2BB2X1M U202 ( .B0(n328), .B1(n306), .A0N(\memory[8][7] ), .A1N(n306), 
        .Y(n119) );
  OAI2BB2X1M U203 ( .B0(n332), .B1(n304), .A0N(\memory[10][0] ), .A1N(n304), 
        .Y(n128) );
  OAI2BB2X1M U204 ( .B0(n331), .B1(n33), .A0N(\memory[10][1] ), .A1N(n304), 
        .Y(n129) );
  OAI2BB2X1M U205 ( .B0(n330), .B1(n33), .A0N(\memory[10][2] ), .A1N(n304), 
        .Y(n130) );
  OAI2BB2X1M U206 ( .B0(n335), .B1(n304), .A0N(\memory[10][3] ), .A1N(n304), 
        .Y(n131) );
  OAI2BB2X1M U207 ( .B0(n329), .B1(n304), .A0N(\memory[10][4] ), .A1N(n304), 
        .Y(n132) );
  OAI2BB2X1M U208 ( .B0(n334), .B1(n33), .A0N(\memory[10][5] ), .A1N(n304), 
        .Y(n133) );
  OAI2BB2X1M U209 ( .B0(n333), .B1(n33), .A0N(\memory[10][6] ), .A1N(n304), 
        .Y(n134) );
  OAI2BB2X1M U210 ( .B0(n328), .B1(n304), .A0N(\memory[10][7] ), .A1N(n304), 
        .Y(n135) );
  OAI2BB2X1M U211 ( .B0(n332), .B1(n302), .A0N(\memory[12][0] ), .A1N(n302), 
        .Y(n144) );
  OAI2BB2X1M U212 ( .B0(n331), .B1(n302), .A0N(\memory[12][1] ), .A1N(n302), 
        .Y(n145) );
  OAI2BB2X1M U213 ( .B0(n330), .B1(n302), .A0N(\memory[12][2] ), .A1N(n302), 
        .Y(n146) );
  OAI2BB2X1M U214 ( .B0(n335), .B1(n302), .A0N(\memory[12][3] ), .A1N(n302), 
        .Y(n147) );
  OAI2BB2X1M U215 ( .B0(n329), .B1(n302), .A0N(\memory[12][4] ), .A1N(n302), 
        .Y(n148) );
  OAI2BB2X1M U216 ( .B0(n334), .B1(n302), .A0N(\memory[12][5] ), .A1N(n302), 
        .Y(n149) );
  OAI2BB2X1M U217 ( .B0(n333), .B1(n302), .A0N(\memory[12][6] ), .A1N(n302), 
        .Y(n150) );
  OAI2BB2X1M U218 ( .B0(n328), .B1(n302), .A0N(\memory[12][7] ), .A1N(n302), 
        .Y(n151) );
  OAI2BB2X1M U219 ( .B0(n332), .B1(n300), .A0N(\memory[14][0] ), .A1N(n300), 
        .Y(n160) );
  OAI2BB2X1M U220 ( .B0(n331), .B1(n300), .A0N(\memory[14][1] ), .A1N(n300), 
        .Y(n161) );
  OAI2BB2X1M U221 ( .B0(n330), .B1(n300), .A0N(\memory[14][2] ), .A1N(n300), 
        .Y(n162) );
  OAI2BB2X1M U222 ( .B0(n335), .B1(n300), .A0N(\memory[14][3] ), .A1N(n300), 
        .Y(n163) );
  OAI2BB2X1M U223 ( .B0(n329), .B1(n300), .A0N(\memory[14][4] ), .A1N(n300), 
        .Y(n164) );
  OAI2BB2X1M U224 ( .B0(n334), .B1(n300), .A0N(\memory[14][5] ), .A1N(n300), 
        .Y(n165) );
  OAI2BB2X1M U225 ( .B0(n333), .B1(n300), .A0N(\memory[14][6] ), .A1N(n300), 
        .Y(n166) );
  OAI2BB2X1M U226 ( .B0(n328), .B1(n300), .A0N(\memory[14][7] ), .A1N(n300), 
        .Y(n167) );
  OAI2BB2X1M U227 ( .B0(n298), .B1(n332), .A0N(REG0[0]), .A1N(n298), .Y(n48)
         );
  OAI2BB2X1M U228 ( .B0(n298), .B1(n331), .A0N(REG0[1]), .A1N(n298), .Y(n49)
         );
  OAI2BB2X1M U229 ( .B0(n298), .B1(n330), .A0N(REG0[2]), .A1N(n298), .Y(n50)
         );
  OAI2BB2X1M U230 ( .B0(n298), .B1(n335), .A0N(REG0[3]), .A1N(n298), .Y(n51)
         );
  OAI2BB2X1M U231 ( .B0(n332), .B1(n312), .A0N(REG2[0]), .A1N(n312), .Y(n64)
         );
  OAI2BB2X1M U232 ( .B0(n328), .B1(n18), .A0N(REG2[7]), .A1N(n312), .Y(n71) );
  MX2X2M U233 ( .A(WrData[7]), .B(n5), .S0(n298), .Y(n55) );
  OAI2BB1X2M U234 ( .A0N(RdData_valid), .A1N(n28), .B0(n12), .Y(n176) );
  NOR2X1M U235 ( .A(n278), .B(N11), .Y(n266) );
  NOR2X1M U236 ( .A(n278), .B(n279), .Y(n265) );
  AOI22X1M U237 ( .A0(\memory[10][0] ), .A1(n285), .B0(\memory[11][0] ), .B1(
        n282), .Y(n9) );
  NOR2X1M U238 ( .A(N11), .B(N12), .Y(n268) );
  AOI22X1M U239 ( .A0(\memory[8][0] ), .A1(n292), .B0(\memory[9][0] ), .B1(
        n289), .Y(n8) );
  CLKNAND2X2M U240 ( .A(N14), .B(n277), .Y(n256) );
  AOI21X1M U241 ( .A0(n9), .A1(n8), .B0(n256), .Y(n183) );
  AOI22X1M U242 ( .A0(\memory[14][0] ), .A1(n285), .B0(\memory[15][0] ), .B1(
        n282), .Y(n11) );
  AOI22X1M U243 ( .A0(\memory[12][0] ), .A1(n292), .B0(\memory[13][0] ), .B1(
        n289), .Y(n10) );
  CLKNAND2X2M U244 ( .A(N14), .B(N13), .Y(n259) );
  AOI21X1M U245 ( .A0(n11), .A1(n10), .B0(n259), .Y(n182) );
  AOI22X1M U246 ( .A0(REG2[0]), .A1(n285), .B0(REG3[0]), .B1(n282), .Y(n177)
         );
  AOI22X1M U247 ( .A0(REG0[0]), .A1(n292), .B0(REG1[0]), .B1(n289), .Y(n16) );
  CLKNAND2X2M U248 ( .A(n277), .B(n276), .Y(n262) );
  AOI21X1M U249 ( .A0(n177), .A1(n16), .B0(n262), .Y(n181) );
  AOI22X1M U250 ( .A0(\memory[6][0] ), .A1(n285), .B0(\memory[7][0] ), .B1(
        n282), .Y(n179) );
  AOI22X1M U251 ( .A0(\memory[4][0] ), .A1(n292), .B0(\memory[5][0] ), .B1(
        n289), .Y(n178) );
  CLKNAND2X2M U252 ( .A(N13), .B(n276), .Y(n269) );
  AOI21X1M U253 ( .A0(n179), .A1(n178), .B0(n269), .Y(n180) );
  OR4X1M U254 ( .A(n183), .B(n182), .C(n181), .D(n180), .Y(N43) );
  AOI22X1M U255 ( .A0(\memory[10][1] ), .A1(n285), .B0(\memory[11][1] ), .B1(
        n282), .Y(n185) );
  AOI22X1M U256 ( .A0(\memory[8][1] ), .A1(n292), .B0(\memory[9][1] ), .B1(
        n289), .Y(n184) );
  AOI21X1M U257 ( .A0(n185), .A1(n184), .B0(n256), .Y(n195) );
  AOI22X1M U258 ( .A0(\memory[14][1] ), .A1(n285), .B0(\memory[15][1] ), .B1(
        n282), .Y(n187) );
  AOI22X1M U259 ( .A0(\memory[12][1] ), .A1(n292), .B0(\memory[13][1] ), .B1(
        n289), .Y(n186) );
  AOI21X1M U260 ( .A0(n187), .A1(n186), .B0(n259), .Y(n194) );
  AOI22X1M U261 ( .A0(REG2[1]), .A1(n285), .B0(REG3[1]), .B1(n282), .Y(n189)
         );
  AOI22X1M U262 ( .A0(REG0[1]), .A1(n292), .B0(REG1[1]), .B1(n289), .Y(n188)
         );
  AOI21X1M U263 ( .A0(n189), .A1(n188), .B0(n262), .Y(n193) );
  AOI22X1M U264 ( .A0(\memory[6][1] ), .A1(n285), .B0(\memory[7][1] ), .B1(
        n282), .Y(n191) );
  AOI22X1M U265 ( .A0(\memory[4][1] ), .A1(n292), .B0(\memory[5][1] ), .B1(
        n289), .Y(n190) );
  AOI21X1M U266 ( .A0(n191), .A1(n190), .B0(n269), .Y(n192) );
  OR4X1M U267 ( .A(n195), .B(n194), .C(n193), .D(n192), .Y(N42) );
  AOI22X1M U268 ( .A0(\memory[10][2] ), .A1(n285), .B0(\memory[11][2] ), .B1(
        n282), .Y(n197) );
  AOI22X1M U269 ( .A0(\memory[8][2] ), .A1(n292), .B0(\memory[9][2] ), .B1(
        n289), .Y(n196) );
  AOI21X1M U270 ( .A0(n197), .A1(n196), .B0(n256), .Y(n207) );
  AOI22X1M U271 ( .A0(\memory[14][2] ), .A1(n285), .B0(\memory[15][2] ), .B1(
        n282), .Y(n199) );
  AOI22X1M U272 ( .A0(\memory[12][2] ), .A1(n292), .B0(\memory[13][2] ), .B1(
        n289), .Y(n198) );
  AOI21X1M U273 ( .A0(n199), .A1(n198), .B0(n259), .Y(n206) );
  AOI22X1M U274 ( .A0(REG2[2]), .A1(n285), .B0(REG3[2]), .B1(n282), .Y(n201)
         );
  AOI22X1M U275 ( .A0(REG0[2]), .A1(n292), .B0(REG1[2]), .B1(n289), .Y(n200)
         );
  AOI21X1M U276 ( .A0(n201), .A1(n200), .B0(n262), .Y(n205) );
  AOI22X1M U277 ( .A0(\memory[6][2] ), .A1(n285), .B0(\memory[7][2] ), .B1(
        n282), .Y(n203) );
  AOI22X1M U278 ( .A0(\memory[4][2] ), .A1(n292), .B0(\memory[5][2] ), .B1(
        n289), .Y(n202) );
  AOI21X1M U279 ( .A0(n203), .A1(n202), .B0(n269), .Y(n204) );
  OR4X1M U280 ( .A(n207), .B(n206), .C(n205), .D(n204), .Y(N41) );
  AOI22X1M U281 ( .A0(\memory[10][3] ), .A1(n284), .B0(\memory[11][3] ), .B1(
        n281), .Y(n209) );
  AOI22X1M U282 ( .A0(\memory[8][3] ), .A1(n291), .B0(\memory[9][3] ), .B1(
        n288), .Y(n208) );
  AOI21X1M U283 ( .A0(n209), .A1(n208), .B0(n256), .Y(n219) );
  AOI22X1M U284 ( .A0(\memory[14][3] ), .A1(n284), .B0(\memory[15][3] ), .B1(
        n281), .Y(n211) );
  AOI22X1M U285 ( .A0(\memory[12][3] ), .A1(n291), .B0(\memory[13][3] ), .B1(
        n288), .Y(n210) );
  AOI21X1M U286 ( .A0(n211), .A1(n210), .B0(n259), .Y(n218) );
  AOI22X1M U287 ( .A0(REG2[3]), .A1(n284), .B0(REG3[3]), .B1(n281), .Y(n213)
         );
  AOI22X1M U288 ( .A0(REG0[3]), .A1(n291), .B0(REG1[3]), .B1(n288), .Y(n212)
         );
  AOI21X1M U289 ( .A0(n213), .A1(n212), .B0(n262), .Y(n217) );
  AOI22X1M U290 ( .A0(\memory[6][3] ), .A1(n284), .B0(\memory[7][3] ), .B1(
        n281), .Y(n215) );
  AOI22X1M U291 ( .A0(\memory[4][3] ), .A1(n291), .B0(\memory[5][3] ), .B1(
        n288), .Y(n214) );
  AOI21X1M U292 ( .A0(n215), .A1(n214), .B0(n269), .Y(n216) );
  OR4X1M U293 ( .A(n219), .B(n218), .C(n217), .D(n216), .Y(N40) );
  AOI22X1M U294 ( .A0(\memory[10][4] ), .A1(n284), .B0(\memory[11][4] ), .B1(
        n281), .Y(n221) );
  AOI22X1M U295 ( .A0(\memory[8][4] ), .A1(n291), .B0(\memory[9][4] ), .B1(
        n288), .Y(n220) );
  AOI21X1M U296 ( .A0(n221), .A1(n220), .B0(n256), .Y(n231) );
  AOI22X1M U297 ( .A0(\memory[14][4] ), .A1(n284), .B0(\memory[15][4] ), .B1(
        n281), .Y(n223) );
  AOI22X1M U298 ( .A0(\memory[12][4] ), .A1(n291), .B0(\memory[13][4] ), .B1(
        n288), .Y(n222) );
  AOI21X1M U299 ( .A0(n223), .A1(n222), .B0(n259), .Y(n230) );
  AOI22X1M U300 ( .A0(REG2[4]), .A1(n284), .B0(REG3[4]), .B1(n281), .Y(n225)
         );
  AOI21X1M U301 ( .A0(n225), .A1(n224), .B0(n262), .Y(n229) );
  AOI22X1M U302 ( .A0(\memory[6][4] ), .A1(n284), .B0(\memory[7][4] ), .B1(
        n281), .Y(n227) );
  AOI22X1M U303 ( .A0(\memory[4][4] ), .A1(n291), .B0(\memory[5][4] ), .B1(
        n288), .Y(n226) );
  AOI21X1M U304 ( .A0(n227), .A1(n226), .B0(n269), .Y(n228) );
  OR4X1M U305 ( .A(n231), .B(n230), .C(n229), .D(n228), .Y(N39) );
  AOI22X1M U306 ( .A0(\memory[10][5] ), .A1(n284), .B0(\memory[11][5] ), .B1(
        n281), .Y(n233) );
  AOI22X1M U307 ( .A0(\memory[8][5] ), .A1(n291), .B0(\memory[9][5] ), .B1(
        n288), .Y(n232) );
  AOI21X1M U308 ( .A0(n233), .A1(n232), .B0(n256), .Y(n243) );
  AOI22X1M U309 ( .A0(\memory[14][5] ), .A1(n284), .B0(\memory[15][5] ), .B1(
        n281), .Y(n235) );
  AOI22X1M U310 ( .A0(\memory[12][5] ), .A1(n291), .B0(\memory[13][5] ), .B1(
        n288), .Y(n234) );
  AOI21X1M U311 ( .A0(n235), .A1(n234), .B0(n259), .Y(n242) );
  AOI22X1M U312 ( .A0(REG2[5]), .A1(n284), .B0(REG3[5]), .B1(n281), .Y(n237)
         );
  AOI21X1M U313 ( .A0(n237), .A1(n236), .B0(n262), .Y(n241) );
  AOI22X1M U314 ( .A0(\memory[6][5] ), .A1(n284), .B0(\memory[7][5] ), .B1(
        n281), .Y(n239) );
  AOI22X1M U315 ( .A0(\memory[4][5] ), .A1(n291), .B0(\memory[5][5] ), .B1(
        n288), .Y(n238) );
  AOI21X1M U316 ( .A0(n239), .A1(n238), .B0(n269), .Y(n240) );
  OR4X1M U317 ( .A(n243), .B(n242), .C(n241), .D(n240), .Y(N38) );
  AOI22X1M U318 ( .A0(\memory[10][6] ), .A1(n283), .B0(\memory[11][6] ), .B1(
        n280), .Y(n245) );
  AOI22X1M U319 ( .A0(\memory[8][6] ), .A1(n290), .B0(\memory[9][6] ), .B1(
        n287), .Y(n244) );
  AOI21X1M U320 ( .A0(n245), .A1(n244), .B0(n256), .Y(n255) );
  AOI22X1M U321 ( .A0(\memory[14][6] ), .A1(n283), .B0(\memory[15][6] ), .B1(
        n280), .Y(n247) );
  AOI22X1M U322 ( .A0(\memory[12][6] ), .A1(n290), .B0(\memory[13][6] ), .B1(
        n267), .Y(n246) );
  AOI21X1M U323 ( .A0(n247), .A1(n246), .B0(n259), .Y(n254) );
  AOI22X1M U324 ( .A0(REG2[6]), .A1(n283), .B0(REG3[6]), .B1(n280), .Y(n249)
         );
  AOI21X1M U325 ( .A0(n249), .A1(n248), .B0(n262), .Y(n253) );
  AOI22X1M U326 ( .A0(\memory[6][6] ), .A1(n283), .B0(\memory[7][6] ), .B1(
        n280), .Y(n251) );
  AOI22X1M U327 ( .A0(\memory[4][6] ), .A1(n290), .B0(\memory[5][6] ), .B1(
        n287), .Y(n250) );
  AOI21X1M U328 ( .A0(n251), .A1(n250), .B0(n269), .Y(n252) );
  OR4X1M U329 ( .A(n255), .B(n254), .C(n253), .D(n252), .Y(N37) );
  AOI22X1M U330 ( .A0(\memory[10][7] ), .A1(n283), .B0(\memory[11][7] ), .B1(
        n280), .Y(n258) );
  AOI22X1M U331 ( .A0(\memory[8][7] ), .A1(n290), .B0(\memory[9][7] ), .B1(
        n267), .Y(n257) );
  AOI21X1M U332 ( .A0(n258), .A1(n257), .B0(n256), .Y(n275) );
  AOI22X1M U333 ( .A0(\memory[14][7] ), .A1(n283), .B0(\memory[15][7] ), .B1(
        n280), .Y(n261) );
  AOI22X1M U334 ( .A0(\memory[12][7] ), .A1(n290), .B0(\memory[13][7] ), .B1(
        n267), .Y(n260) );
  AOI21X1M U335 ( .A0(n261), .A1(n260), .B0(n259), .Y(n274) );
  AOI22X1M U336 ( .A0(REG2[7]), .A1(n283), .B0(REG3[7]), .B1(n280), .Y(n264)
         );
  AOI21X1M U337 ( .A0(n264), .A1(n263), .B0(n262), .Y(n273) );
  AOI22X1M U338 ( .A0(\memory[6][7] ), .A1(n283), .B0(\memory[7][7] ), .B1(
        n280), .Y(n271) );
  AOI22X1M U339 ( .A0(\memory[4][7] ), .A1(n290), .B0(\memory[5][7] ), .B1(
        n287), .Y(n270) );
  AOI21X1M U340 ( .A0(n271), .A1(n270), .B0(n269), .Y(n272) );
  OR4X1M U341 ( .A(n275), .B(n274), .C(n273), .D(n272), .Y(N36) );
  AOI22XLM U342 ( .A0(n5), .A1(n290), .B0(REG1[7]), .B1(n287), .Y(n263) );
  AOI22XLM U343 ( .A0(REG0[6]), .A1(n290), .B0(n6), .B1(n287), .Y(n248) );
  MX2XLM U344 ( .A(n6), .B(WrData[6]), .S0(n7), .Y(n62) );
  MX2XLM U345 ( .A(REG1[7]), .B(WrData[7]), .S0(n7), .Y(n63) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_mem_depth8 ( WR_DATA_mem, W_CLK, W_RST, 
        wfull, winc, w_mem_addr, r_mem_addr, RD_DATA_mem );
  input [7:0] WR_DATA_mem;
  input [3:0] w_mem_addr;
  input [3:0] r_mem_addr;
  output [7:0] RD_DATA_mem;
  input W_CLK, W_RST, wfull, winc;
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
         \memory[0][0] , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141;
  assign N10 = r_mem_addr[0];
  assign N11 = r_mem_addr[1];
  assign N12 = r_mem_addr[2];

  DFFRQX2M \memory_reg[1][7]  ( .D(n37), .CK(W_CLK), .RN(n126), .Q(
        \memory[1][7] ) );
  DFFRQX2M \memory_reg[1][6]  ( .D(n36), .CK(W_CLK), .RN(n130), .Q(
        \memory[1][6] ) );
  DFFRQX2M \memory_reg[1][5]  ( .D(n35), .CK(W_CLK), .RN(n126), .Q(
        \memory[1][5] ) );
  DFFRQX2M \memory_reg[1][4]  ( .D(n34), .CK(W_CLK), .RN(n130), .Q(
        \memory[1][4] ) );
  DFFRQX2M \memory_reg[1][3]  ( .D(n33), .CK(W_CLK), .RN(n130), .Q(
        \memory[1][3] ) );
  DFFRQX2M \memory_reg[1][2]  ( .D(n32), .CK(W_CLK), .RN(n126), .Q(
        \memory[1][2] ) );
  DFFRQX2M \memory_reg[1][1]  ( .D(n31), .CK(W_CLK), .RN(n130), .Q(
        \memory[1][1] ) );
  DFFRQX2M \memory_reg[1][0]  ( .D(n30), .CK(W_CLK), .RN(n130), .Q(
        \memory[1][0] ) );
  DFFRQX2M \memory_reg[0][7]  ( .D(n29), .CK(W_CLK), .RN(n126), .Q(
        \memory[0][7] ) );
  DFFRQX2M \memory_reg[0][6]  ( .D(n28), .CK(W_CLK), .RN(n130), .Q(
        \memory[0][6] ) );
  DFFRQX2M \memory_reg[0][5]  ( .D(n27), .CK(W_CLK), .RN(n130), .Q(
        \memory[0][5] ) );
  DFFRQX2M \memory_reg[0][4]  ( .D(n26), .CK(W_CLK), .RN(n126), .Q(
        \memory[0][4] ) );
  DFFRQX2M \memory_reg[0][3]  ( .D(n25), .CK(W_CLK), .RN(n126), .Q(
        \memory[0][3] ) );
  DFFRQX2M \memory_reg[0][2]  ( .D(n24), .CK(W_CLK), .RN(n130), .Q(
        \memory[0][2] ) );
  DFFRQX2M \memory_reg[0][1]  ( .D(n23), .CK(W_CLK), .RN(n126), .Q(
        \memory[0][1] ) );
  DFFRQX2M \memory_reg[0][0]  ( .D(n22), .CK(W_CLK), .RN(n126), .Q(
        \memory[0][0] ) );
  DFFRQX2M \memory_reg[5][7]  ( .D(n69), .CK(W_CLK), .RN(n129), .Q(
        \memory[5][7] ) );
  DFFRQX2M \memory_reg[5][6]  ( .D(n68), .CK(W_CLK), .RN(n129), .Q(
        \memory[5][6] ) );
  DFFRQX2M \memory_reg[5][5]  ( .D(n67), .CK(W_CLK), .RN(n129), .Q(
        \memory[5][5] ) );
  DFFRQX2M \memory_reg[5][4]  ( .D(n66), .CK(W_CLK), .RN(n129), .Q(
        \memory[5][4] ) );
  DFFRQX2M \memory_reg[5][3]  ( .D(n65), .CK(W_CLK), .RN(n129), .Q(
        \memory[5][3] ) );
  DFFRQX2M \memory_reg[5][2]  ( .D(n64), .CK(W_CLK), .RN(n129), .Q(
        \memory[5][2] ) );
  DFFRQX2M \memory_reg[5][1]  ( .D(n63), .CK(W_CLK), .RN(n129), .Q(
        \memory[5][1] ) );
  DFFRQX2M \memory_reg[5][0]  ( .D(n62), .CK(W_CLK), .RN(n129), .Q(
        \memory[5][0] ) );
  DFFRQX2M \memory_reg[4][7]  ( .D(n61), .CK(W_CLK), .RN(n130), .Q(
        \memory[4][7] ) );
  DFFRQX2M \memory_reg[4][6]  ( .D(n60), .CK(W_CLK), .RN(n130), .Q(
        \memory[4][6] ) );
  DFFRQX2M \memory_reg[4][5]  ( .D(n59), .CK(W_CLK), .RN(n130), .Q(
        \memory[4][5] ) );
  DFFRQX2M \memory_reg[4][4]  ( .D(n58), .CK(W_CLK), .RN(n130), .Q(
        \memory[4][4] ) );
  DFFRQX2M \memory_reg[4][3]  ( .D(n57), .CK(W_CLK), .RN(n130), .Q(
        \memory[4][3] ) );
  DFFRQX2M \memory_reg[4][2]  ( .D(n56), .CK(W_CLK), .RN(n130), .Q(
        \memory[4][2] ) );
  DFFRQX2M \memory_reg[4][1]  ( .D(n55), .CK(W_CLK), .RN(n130), .Q(
        \memory[4][1] ) );
  DFFRQX2M \memory_reg[4][0]  ( .D(n54), .CK(W_CLK), .RN(n130), .Q(
        \memory[4][0] ) );
  DFFRQX2M \memory_reg[7][7]  ( .D(n85), .CK(W_CLK), .RN(n128), .Q(
        \memory[7][7] ) );
  DFFRQX2M \memory_reg[7][6]  ( .D(n84), .CK(W_CLK), .RN(n128), .Q(
        \memory[7][6] ) );
  DFFRQX2M \memory_reg[7][5]  ( .D(n83), .CK(W_CLK), .RN(n128), .Q(
        \memory[7][5] ) );
  DFFRQX2M \memory_reg[7][4]  ( .D(n82), .CK(W_CLK), .RN(n128), .Q(
        \memory[7][4] ) );
  DFFRQX2M \memory_reg[7][3]  ( .D(n81), .CK(W_CLK), .RN(n128), .Q(
        \memory[7][3] ) );
  DFFRQX2M \memory_reg[7][2]  ( .D(n80), .CK(W_CLK), .RN(n128), .Q(
        \memory[7][2] ) );
  DFFRQX2M \memory_reg[7][1]  ( .D(n79), .CK(W_CLK), .RN(n128), .Q(
        \memory[7][1] ) );
  DFFRQX2M \memory_reg[7][0]  ( .D(n78), .CK(W_CLK), .RN(n128), .Q(
        \memory[7][0] ) );
  DFFRQX2M \memory_reg[6][7]  ( .D(n77), .CK(W_CLK), .RN(n128), .Q(
        \memory[6][7] ) );
  DFFRQX2M \memory_reg[6][6]  ( .D(n76), .CK(W_CLK), .RN(n128), .Q(
        \memory[6][6] ) );
  DFFRQX2M \memory_reg[6][5]  ( .D(n75), .CK(W_CLK), .RN(n128), .Q(
        \memory[6][5] ) );
  DFFRQX2M \memory_reg[6][4]  ( .D(n74), .CK(W_CLK), .RN(n128), .Q(
        \memory[6][4] ) );
  DFFRQX2M \memory_reg[6][3]  ( .D(n73), .CK(W_CLK), .RN(n129), .Q(
        \memory[6][3] ) );
  DFFRQX2M \memory_reg[6][2]  ( .D(n72), .CK(W_CLK), .RN(n129), .Q(
        \memory[6][2] ) );
  DFFRQX2M \memory_reg[6][1]  ( .D(n71), .CK(W_CLK), .RN(n129), .Q(
        \memory[6][1] ) );
  DFFRQX2M \memory_reg[6][0]  ( .D(n70), .CK(W_CLK), .RN(n129), .Q(
        \memory[6][0] ) );
  DFFRQX2M \memory_reg[3][7]  ( .D(n53), .CK(W_CLK), .RN(n130), .Q(
        \memory[3][7] ) );
  DFFRQX2M \memory_reg[3][6]  ( .D(n52), .CK(W_CLK), .RN(n130), .Q(
        \memory[3][6] ) );
  DFFRQX2M \memory_reg[3][5]  ( .D(n51), .CK(W_CLK), .RN(n130), .Q(
        \memory[3][5] ) );
  DFFRQX2M \memory_reg[3][4]  ( .D(n50), .CK(W_CLK), .RN(n130), .Q(
        \memory[3][4] ) );
  DFFRQX2M \memory_reg[3][3]  ( .D(n49), .CK(W_CLK), .RN(n131), .Q(
        \memory[3][3] ) );
  DFFRQX2M \memory_reg[3][2]  ( .D(n48), .CK(W_CLK), .RN(n131), .Q(
        \memory[3][2] ) );
  DFFRQX2M \memory_reg[3][1]  ( .D(n47), .CK(W_CLK), .RN(n131), .Q(
        \memory[3][1] ) );
  DFFRQX2M \memory_reg[3][0]  ( .D(n46), .CK(W_CLK), .RN(n131), .Q(
        \memory[3][0] ) );
  DFFRQX2M \memory_reg[2][7]  ( .D(n45), .CK(W_CLK), .RN(n131), .Q(
        \memory[2][7] ) );
  DFFRQX2M \memory_reg[2][6]  ( .D(n44), .CK(W_CLK), .RN(n131), .Q(
        \memory[2][6] ) );
  DFFRQX2M \memory_reg[2][5]  ( .D(n43), .CK(W_CLK), .RN(n131), .Q(
        \memory[2][5] ) );
  DFFRQX2M \memory_reg[2][4]  ( .D(n42), .CK(W_CLK), .RN(n131), .Q(
        \memory[2][4] ) );
  DFFRQX2M \memory_reg[2][3]  ( .D(n41), .CK(W_CLK), .RN(n131), .Q(
        \memory[2][3] ) );
  DFFRQX2M \memory_reg[2][2]  ( .D(n40), .CK(W_CLK), .RN(n131), .Q(
        \memory[2][2] ) );
  DFFRQX2M \memory_reg[2][1]  ( .D(n39), .CK(W_CLK), .RN(n131), .Q(
        \memory[2][1] ) );
  DFFRQX2M \memory_reg[2][0]  ( .D(n38), .CK(W_CLK), .RN(n131), .Q(
        \memory[2][0] ) );
  BUFX4M U2 ( .A(n14), .Y(n123) );
  BUFX4M U3 ( .A(n15), .Y(n122) );
  BUFX4M U4 ( .A(n13), .Y(n124) );
  BUFX4M U5 ( .A(n19), .Y(n120) );
  BUFX4M U6 ( .A(n20), .Y(n119) );
  BUFX4M U7 ( .A(n21), .Y(n118) );
  INVX2M U8 ( .A(WR_DATA_mem[0]), .Y(n141) );
  INVX2M U9 ( .A(WR_DATA_mem[1]), .Y(n140) );
  INVX2M U10 ( .A(WR_DATA_mem[2]), .Y(n139) );
  INVX2M U11 ( .A(WR_DATA_mem[3]), .Y(n138) );
  INVX2M U12 ( .A(WR_DATA_mem[4]), .Y(n137) );
  INVX2M U13 ( .A(WR_DATA_mem[5]), .Y(n136) );
  INVX2M U14 ( .A(WR_DATA_mem[6]), .Y(n135) );
  INVX2M U15 ( .A(WR_DATA_mem[7]), .Y(n134) );
  BUFX4M U16 ( .A(n126), .Y(n131) );
  BUFX4M U17 ( .A(W_RST), .Y(n130) );
  BUFX4M U18 ( .A(n126), .Y(n129) );
  BUFX4M U19 ( .A(n126), .Y(n128) );
  BUFX2M U20 ( .A(n17), .Y(n121) );
  BUFX2M U21 ( .A(n11), .Y(n125) );
  INVX2M U22 ( .A(n127), .Y(n126) );
  INVX2M U23 ( .A(W_RST), .Y(n127) );
  NOR2BX2M U24 ( .AN(winc), .B(wfull), .Y(n16) );
  NAND3X2M U25 ( .A(n132), .B(n133), .C(n12), .Y(n11) );
  NAND3X2M U26 ( .A(n132), .B(n133), .C(n18), .Y(n17) );
  BUFX4M U27 ( .A(n108), .Y(n117) );
  NOR2X2M U28 ( .A(n112), .B(n113), .Y(n108) );
  INVX2M U29 ( .A(n115), .Y(n114) );
  NOR2BX2M U30 ( .AN(n16), .B(w_mem_addr[2]), .Y(n12) );
  OAI2BB2X1M U31 ( .B0(n141), .B1(n124), .A0N(\memory[1][0] ), .A1N(n124), .Y(
        n30) );
  OAI2BB2X1M U32 ( .B0(n140), .B1(n124), .A0N(\memory[1][1] ), .A1N(n124), .Y(
        n31) );
  OAI2BB2X1M U33 ( .B0(n139), .B1(n124), .A0N(\memory[1][2] ), .A1N(n124), .Y(
        n32) );
  OAI2BB2X1M U34 ( .B0(n138), .B1(n124), .A0N(\memory[1][3] ), .A1N(n124), .Y(
        n33) );
  OAI2BB2X1M U35 ( .B0(n137), .B1(n124), .A0N(\memory[1][4] ), .A1N(n124), .Y(
        n34) );
  OAI2BB2X1M U36 ( .B0(n136), .B1(n124), .A0N(\memory[1][5] ), .A1N(n124), .Y(
        n35) );
  OAI2BB2X1M U37 ( .B0(n135), .B1(n124), .A0N(\memory[1][6] ), .A1N(n124), .Y(
        n36) );
  OAI2BB2X1M U38 ( .B0(n134), .B1(n124), .A0N(\memory[1][7] ), .A1N(n124), .Y(
        n37) );
  OAI2BB2X1M U39 ( .B0(n141), .B1(n123), .A0N(\memory[2][0] ), .A1N(n123), .Y(
        n38) );
  OAI2BB2X1M U40 ( .B0(n140), .B1(n123), .A0N(\memory[2][1] ), .A1N(n123), .Y(
        n39) );
  OAI2BB2X1M U41 ( .B0(n139), .B1(n123), .A0N(\memory[2][2] ), .A1N(n123), .Y(
        n40) );
  OAI2BB2X1M U42 ( .B0(n138), .B1(n123), .A0N(\memory[2][3] ), .A1N(n123), .Y(
        n41) );
  OAI2BB2X1M U43 ( .B0(n137), .B1(n123), .A0N(\memory[2][4] ), .A1N(n123), .Y(
        n42) );
  OAI2BB2X1M U44 ( .B0(n136), .B1(n123), .A0N(\memory[2][5] ), .A1N(n123), .Y(
        n43) );
  OAI2BB2X1M U45 ( .B0(n135), .B1(n123), .A0N(\memory[2][6] ), .A1N(n123), .Y(
        n44) );
  OAI2BB2X1M U46 ( .B0(n134), .B1(n123), .A0N(\memory[2][7] ), .A1N(n123), .Y(
        n45) );
  OAI2BB2X1M U47 ( .B0(n141), .B1(n122), .A0N(\memory[3][0] ), .A1N(n122), .Y(
        n46) );
  OAI2BB2X1M U48 ( .B0(n140), .B1(n122), .A0N(\memory[3][1] ), .A1N(n122), .Y(
        n47) );
  OAI2BB2X1M U49 ( .B0(n139), .B1(n122), .A0N(\memory[3][2] ), .A1N(n122), .Y(
        n48) );
  OAI2BB2X1M U50 ( .B0(n138), .B1(n122), .A0N(\memory[3][3] ), .A1N(n122), .Y(
        n49) );
  OAI2BB2X1M U51 ( .B0(n137), .B1(n122), .A0N(\memory[3][4] ), .A1N(n122), .Y(
        n50) );
  OAI2BB2X1M U52 ( .B0(n136), .B1(n122), .A0N(\memory[3][5] ), .A1N(n122), .Y(
        n51) );
  OAI2BB2X1M U53 ( .B0(n135), .B1(n122), .A0N(\memory[3][6] ), .A1N(n122), .Y(
        n52) );
  OAI2BB2X1M U54 ( .B0(n134), .B1(n122), .A0N(\memory[3][7] ), .A1N(n122), .Y(
        n53) );
  OAI2BB2X1M U55 ( .B0(n141), .B1(n121), .A0N(\memory[4][0] ), .A1N(n121), .Y(
        n54) );
  OAI2BB2X1M U56 ( .B0(n140), .B1(n121), .A0N(\memory[4][1] ), .A1N(n121), .Y(
        n55) );
  OAI2BB2X1M U57 ( .B0(n139), .B1(n121), .A0N(\memory[4][2] ), .A1N(n121), .Y(
        n56) );
  OAI2BB2X1M U58 ( .B0(n138), .B1(n17), .A0N(\memory[4][3] ), .A1N(n121), .Y(
        n57) );
  OAI2BB2X1M U59 ( .B0(n137), .B1(n17), .A0N(\memory[4][4] ), .A1N(n121), .Y(
        n58) );
  OAI2BB2X1M U60 ( .B0(n136), .B1(n17), .A0N(\memory[4][5] ), .A1N(n121), .Y(
        n59) );
  OAI2BB2X1M U61 ( .B0(n135), .B1(n17), .A0N(\memory[4][6] ), .A1N(n121), .Y(
        n60) );
  OAI2BB2X1M U62 ( .B0(n134), .B1(n17), .A0N(\memory[4][7] ), .A1N(n121), .Y(
        n61) );
  OAI2BB2X1M U63 ( .B0(n141), .B1(n120), .A0N(\memory[5][0] ), .A1N(n120), .Y(
        n62) );
  OAI2BB2X1M U64 ( .B0(n140), .B1(n120), .A0N(\memory[5][1] ), .A1N(n120), .Y(
        n63) );
  OAI2BB2X1M U65 ( .B0(n139), .B1(n120), .A0N(\memory[5][2] ), .A1N(n120), .Y(
        n64) );
  OAI2BB2X1M U66 ( .B0(n138), .B1(n120), .A0N(\memory[5][3] ), .A1N(n120), .Y(
        n65) );
  OAI2BB2X1M U67 ( .B0(n137), .B1(n120), .A0N(\memory[5][4] ), .A1N(n120), .Y(
        n66) );
  OAI2BB2X1M U68 ( .B0(n136), .B1(n120), .A0N(\memory[5][5] ), .A1N(n120), .Y(
        n67) );
  OAI2BB2X1M U69 ( .B0(n135), .B1(n120), .A0N(\memory[5][6] ), .A1N(n120), .Y(
        n68) );
  OAI2BB2X1M U70 ( .B0(n134), .B1(n120), .A0N(\memory[5][7] ), .A1N(n120), .Y(
        n69) );
  OAI2BB2X1M U71 ( .B0(n141), .B1(n119), .A0N(\memory[6][0] ), .A1N(n119), .Y(
        n70) );
  OAI2BB2X1M U72 ( .B0(n140), .B1(n119), .A0N(\memory[6][1] ), .A1N(n119), .Y(
        n71) );
  OAI2BB2X1M U73 ( .B0(n139), .B1(n119), .A0N(\memory[6][2] ), .A1N(n119), .Y(
        n72) );
  OAI2BB2X1M U74 ( .B0(n138), .B1(n119), .A0N(\memory[6][3] ), .A1N(n119), .Y(
        n73) );
  OAI2BB2X1M U75 ( .B0(n137), .B1(n119), .A0N(\memory[6][4] ), .A1N(n119), .Y(
        n74) );
  OAI2BB2X1M U76 ( .B0(n136), .B1(n119), .A0N(\memory[6][5] ), .A1N(n119), .Y(
        n75) );
  OAI2BB2X1M U77 ( .B0(n135), .B1(n119), .A0N(\memory[6][6] ), .A1N(n119), .Y(
        n76) );
  OAI2BB2X1M U78 ( .B0(n134), .B1(n119), .A0N(\memory[6][7] ), .A1N(n119), .Y(
        n77) );
  OAI2BB2X1M U79 ( .B0(n141), .B1(n118), .A0N(\memory[7][0] ), .A1N(n118), .Y(
        n78) );
  OAI2BB2X1M U80 ( .B0(n140), .B1(n118), .A0N(\memory[7][1] ), .A1N(n118), .Y(
        n79) );
  OAI2BB2X1M U81 ( .B0(n139), .B1(n118), .A0N(\memory[7][2] ), .A1N(n118), .Y(
        n80) );
  OAI2BB2X1M U82 ( .B0(n138), .B1(n118), .A0N(\memory[7][3] ), .A1N(n118), .Y(
        n81) );
  OAI2BB2X1M U83 ( .B0(n137), .B1(n118), .A0N(\memory[7][4] ), .A1N(n118), .Y(
        n82) );
  OAI2BB2X1M U84 ( .B0(n136), .B1(n118), .A0N(\memory[7][5] ), .A1N(n118), .Y(
        n83) );
  OAI2BB2X1M U85 ( .B0(n135), .B1(n118), .A0N(\memory[7][6] ), .A1N(n118), .Y(
        n84) );
  OAI2BB2X1M U86 ( .B0(n134), .B1(n118), .A0N(\memory[7][7] ), .A1N(n118), .Y(
        n85) );
  NAND3X2M U87 ( .A(n12), .B(n133), .C(w_mem_addr[0]), .Y(n13) );
  NAND3X2M U88 ( .A(w_mem_addr[1]), .B(w_mem_addr[0]), .C(n18), .Y(n21) );
  NAND3X2M U89 ( .A(n12), .B(n132), .C(w_mem_addr[1]), .Y(n14) );
  NAND3X2M U90 ( .A(w_mem_addr[0]), .B(n12), .C(w_mem_addr[1]), .Y(n15) );
  NAND3X2M U91 ( .A(w_mem_addr[0]), .B(n133), .C(n18), .Y(n19) );
  NAND3X2M U92 ( .A(w_mem_addr[1]), .B(n132), .C(n18), .Y(n20) );
  OAI2BB2X1M U93 ( .B0(n125), .B1(n141), .A0N(\memory[0][0] ), .A1N(n125), .Y(
        n22) );
  OAI2BB2X1M U94 ( .B0(n125), .B1(n140), .A0N(\memory[0][1] ), .A1N(n125), .Y(
        n23) );
  OAI2BB2X1M U95 ( .B0(n125), .B1(n139), .A0N(\memory[0][2] ), .A1N(n125), .Y(
        n24) );
  OAI2BB2X1M U96 ( .B0(n125), .B1(n138), .A0N(\memory[0][3] ), .A1N(n125), .Y(
        n25) );
  OAI2BB2X1M U97 ( .B0(n11), .B1(n137), .A0N(\memory[0][4] ), .A1N(n125), .Y(
        n26) );
  OAI2BB2X1M U98 ( .B0(n11), .B1(n136), .A0N(\memory[0][5] ), .A1N(n125), .Y(
        n27) );
  OAI2BB2X1M U99 ( .B0(n11), .B1(n135), .A0N(\memory[0][6] ), .A1N(n125), .Y(
        n28) );
  OAI2BB2X1M U100 ( .B0(n11), .B1(n134), .A0N(\memory[0][7] ), .A1N(n125), .Y(
        n29) );
  AND2X2M U101 ( .A(w_mem_addr[2]), .B(n16), .Y(n18) );
  INVX2M U102 ( .A(w_mem_addr[0]), .Y(n132) );
  INVX2M U103 ( .A(w_mem_addr[1]), .Y(n133) );
  NOR2X6M U104 ( .A(n113), .B(N12), .Y(n106) );
  NOR2X6M U105 ( .A(N11), .B(N12), .Y(n105) );
  INVX2M U106 ( .A(N12), .Y(n112) );
  INVX2M U107 ( .A(N11), .Y(n113) );
  BUFX4M U108 ( .A(n109), .Y(n116) );
  NOR2X2M U109 ( .A(n112), .B(N11), .Y(n109) );
  BUFX2M U110 ( .A(N10), .Y(n115) );
  AO22X1M U111 ( .A0(\memory[3][0] ), .A1(n106), .B0(\memory[1][0] ), .B1(n105), .Y(n1) );
  AOI221XLM U112 ( .A0(\memory[5][0] ), .A1(n116), .B0(\memory[7][0] ), .B1(
        n117), .C0(n1), .Y(n4) );
  AO22X1M U113 ( .A0(\memory[2][0] ), .A1(n106), .B0(\memory[0][0] ), .B1(n105), .Y(n2) );
  AOI221XLM U114 ( .A0(\memory[4][0] ), .A1(n116), .B0(\memory[6][0] ), .B1(
        n117), .C0(n2), .Y(n3) );
  OAI22X1M U115 ( .A0(n114), .A1(n4), .B0(n115), .B1(n3), .Y(RD_DATA_mem[0])
         );
  AO22X1M U116 ( .A0(\memory[3][1] ), .A1(n106), .B0(\memory[1][1] ), .B1(n105), .Y(n5) );
  AOI221XLM U117 ( .A0(\memory[5][1] ), .A1(n116), .B0(\memory[7][1] ), .B1(
        n117), .C0(n5), .Y(n8) );
  AO22X1M U118 ( .A0(\memory[2][1] ), .A1(n106), .B0(\memory[0][1] ), .B1(n105), .Y(n6) );
  AOI221XLM U119 ( .A0(\memory[4][1] ), .A1(n116), .B0(\memory[6][1] ), .B1(
        n117), .C0(n6), .Y(n7) );
  OAI22X1M U120 ( .A0(n114), .A1(n8), .B0(n115), .B1(n7), .Y(RD_DATA_mem[1])
         );
  AO22X1M U121 ( .A0(\memory[3][2] ), .A1(n106), .B0(\memory[1][2] ), .B1(n105), .Y(n9) );
  AOI221XLM U122 ( .A0(\memory[5][2] ), .A1(n116), .B0(\memory[7][2] ), .B1(
        n117), .C0(n9), .Y(n87) );
  AO22X1M U123 ( .A0(\memory[2][2] ), .A1(n106), .B0(\memory[0][2] ), .B1(n105), .Y(n10) );
  AOI221XLM U124 ( .A0(\memory[4][2] ), .A1(n116), .B0(\memory[6][2] ), .B1(
        n117), .C0(n10), .Y(n86) );
  OAI22X1M U125 ( .A0(n114), .A1(n87), .B0(n115), .B1(n86), .Y(RD_DATA_mem[2])
         );
  AO22X1M U126 ( .A0(\memory[3][3] ), .A1(n106), .B0(\memory[1][3] ), .B1(n105), .Y(n88) );
  AOI221XLM U127 ( .A0(\memory[5][3] ), .A1(n116), .B0(\memory[7][3] ), .B1(
        n117), .C0(n88), .Y(n91) );
  AO22X1M U128 ( .A0(\memory[2][3] ), .A1(n106), .B0(\memory[0][3] ), .B1(n105), .Y(n89) );
  AOI221XLM U129 ( .A0(\memory[4][3] ), .A1(n116), .B0(\memory[6][3] ), .B1(
        n117), .C0(n89), .Y(n90) );
  OAI22X1M U130 ( .A0(n114), .A1(n91), .B0(n115), .B1(n90), .Y(RD_DATA_mem[3])
         );
  AO22X1M U131 ( .A0(\memory[3][4] ), .A1(n106), .B0(\memory[1][4] ), .B1(n105), .Y(n92) );
  AOI221XLM U132 ( .A0(\memory[5][4] ), .A1(n116), .B0(\memory[7][4] ), .B1(
        n117), .C0(n92), .Y(n95) );
  AO22X1M U133 ( .A0(\memory[2][4] ), .A1(n106), .B0(\memory[0][4] ), .B1(n105), .Y(n93) );
  AOI221XLM U134 ( .A0(\memory[4][4] ), .A1(n116), .B0(\memory[6][4] ), .B1(
        n117), .C0(n93), .Y(n94) );
  OAI22X1M U135 ( .A0(n114), .A1(n95), .B0(n115), .B1(n94), .Y(RD_DATA_mem[4])
         );
  AO22X1M U136 ( .A0(\memory[3][5] ), .A1(n106), .B0(\memory[1][5] ), .B1(n105), .Y(n96) );
  AOI221XLM U137 ( .A0(\memory[5][5] ), .A1(n116), .B0(\memory[7][5] ), .B1(
        n117), .C0(n96), .Y(n99) );
  AO22X1M U138 ( .A0(\memory[2][5] ), .A1(n106), .B0(\memory[0][5] ), .B1(n105), .Y(n97) );
  AOI221XLM U139 ( .A0(\memory[4][5] ), .A1(n116), .B0(\memory[6][5] ), .B1(
        n117), .C0(n97), .Y(n98) );
  OAI22X1M U140 ( .A0(n114), .A1(n99), .B0(n115), .B1(n98), .Y(RD_DATA_mem[5])
         );
  AO22X1M U141 ( .A0(\memory[3][6] ), .A1(n106), .B0(\memory[1][6] ), .B1(n105), .Y(n100) );
  AOI221XLM U142 ( .A0(\memory[5][6] ), .A1(n116), .B0(\memory[7][6] ), .B1(
        n117), .C0(n100), .Y(n103) );
  AO22X1M U143 ( .A0(\memory[2][6] ), .A1(n106), .B0(\memory[0][6] ), .B1(n105), .Y(n101) );
  AOI221XLM U144 ( .A0(\memory[4][6] ), .A1(n116), .B0(\memory[6][6] ), .B1(
        n117), .C0(n101), .Y(n102) );
  OAI22X1M U145 ( .A0(n114), .A1(n103), .B0(n115), .B1(n102), .Y(
        RD_DATA_mem[6]) );
  AO22X1M U146 ( .A0(\memory[3][7] ), .A1(n106), .B0(\memory[1][7] ), .B1(n105), .Y(n104) );
  AOI221XLM U147 ( .A0(\memory[5][7] ), .A1(n116), .B0(\memory[7][7] ), .B1(
        n117), .C0(n104), .Y(n111) );
  AO22X1M U148 ( .A0(\memory[2][7] ), .A1(n106), .B0(\memory[0][7] ), .B1(n105), .Y(n107) );
  AOI221XLM U149 ( .A0(\memory[4][7] ), .A1(n116), .B0(\memory[6][7] ), .B1(
        n117), .C0(n107), .Y(n110) );
  OAI22X1M U150 ( .A0(n111), .A1(n114), .B0(n115), .B1(n110), .Y(
        RD_DATA_mem[7]) );
endmodule


module DF_SYNC_BUS_WIDTH4_0 ( CLK, RST, Async, sync );
  input [3:0] Async;
  output [3:0] sync;
  input CLK, RST;
  wire   n1, n2;
  wire   [3:0] meta_flop;

  DFFRQX2M \sync_reg[2]  ( .D(meta_flop[2]), .CK(CLK), .RN(n1), .Q(sync[2]) );
  DFFRQX2M \sync_reg[1]  ( .D(meta_flop[1]), .CK(CLK), .RN(n1), .Q(sync[1]) );
  DFFRQX2M \sync_reg[0]  ( .D(meta_flop[0]), .CK(CLK), .RN(n1), .Q(sync[0]) );
  DFFRQX2M \sync_reg[3]  ( .D(meta_flop[3]), .CK(CLK), .RN(n1), .Q(sync[3]) );
  DFFRQX2M \meta_flop_reg[3]  ( .D(Async[3]), .CK(CLK), .RN(n1), .Q(
        meta_flop[3]) );
  DFFRQX2M \meta_flop_reg[2]  ( .D(Async[2]), .CK(CLK), .RN(n1), .Q(
        meta_flop[2]) );
  DFFRQX2M \meta_flop_reg[1]  ( .D(Async[1]), .CK(CLK), .RN(n1), .Q(
        meta_flop[1]) );
  DFFRQX2M \meta_flop_reg[0]  ( .D(Async[0]), .CK(CLK), .RN(n1), .Q(
        meta_flop[0]) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module DF_SYNC_BUS_WIDTH4_1 ( CLK, RST, Async, sync );
  input [3:0] Async;
  output [3:0] sync;
  input CLK, RST;
  wire   n1, n2;
  wire   [3:0] meta_flop;

  DFFRQX1M \sync_reg[3]  ( .D(meta_flop[3]), .CK(CLK), .RN(n1), .Q(sync[3]) );
  DFFRQX1M \sync_reg[2]  ( .D(meta_flop[2]), .CK(CLK), .RN(n1), .Q(sync[2]) );
  DFFRQX1M \sync_reg[1]  ( .D(meta_flop[1]), .CK(CLK), .RN(n1), .Q(sync[1]) );
  DFFRQX1M \sync_reg[0]  ( .D(meta_flop[0]), .CK(CLK), .RN(n1), .Q(sync[0]) );
  DFFRQX1M \meta_flop_reg[3]  ( .D(Async[3]), .CK(CLK), .RN(n1), .Q(
        meta_flop[3]) );
  DFFRQX1M \meta_flop_reg[2]  ( .D(Async[2]), .CK(CLK), .RN(n1), .Q(
        meta_flop[2]) );
  DFFRQX1M \meta_flop_reg[1]  ( .D(Async[1]), .CK(CLK), .RN(n1), .Q(
        meta_flop[1]) );
  DFFRQX1M \meta_flop_reg[0]  ( .D(Async[0]), .CK(CLK), .RN(n1), .Q(
        meta_flop[0]) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module FIFO_WR_address4 ( W_INC, W_CLK, W_RST, sync_rd, w_full, w_ptr, w_addr
 );
  input [3:0] sync_rd;
  output [3:0] w_ptr;
  output [3:0] w_addr;
  input W_INC, W_CLK, W_RST;
  output w_full;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [2:0] w_ptr_comb;

  DFFRQX2M \w_addr_reg[3]  ( .D(n11), .CK(W_CLK), .RN(n15), .Q(w_addr[3]) );
  DFFRQX2M \w_addr_reg[2]  ( .D(n12), .CK(W_CLK), .RN(n15), .Q(w_addr[2]) );
  DFFRQX2M \w_ptr_reg[2]  ( .D(w_ptr_comb[2]), .CK(W_CLK), .RN(n15), .Q(
        w_ptr[2]) );
  DFFRQX2M \w_ptr_reg[1]  ( .D(w_ptr_comb[1]), .CK(W_CLK), .RN(n15), .Q(
        w_ptr[1]) );
  DFFRQX2M \w_ptr_reg[0]  ( .D(w_ptr_comb[0]), .CK(W_CLK), .RN(n15), .Q(
        w_ptr[0]) );
  DFFRQX2M \w_addr_reg[1]  ( .D(n13), .CK(W_CLK), .RN(n15), .Q(w_addr[1]) );
  DFFRQX2M \w_ptr_reg[3]  ( .D(w_addr[3]), .CK(W_CLK), .RN(n15), .Q(w_ptr[3])
         );
  DFFRX1M \w_addr_reg[0]  ( .D(n14), .CK(W_CLK), .RN(n15), .Q(w_addr[0]), .QN(
        n1) );
  INVX2M U3 ( .A(n16), .Y(n15) );
  INVX2M U4 ( .A(W_RST), .Y(n16) );
  NAND2X2M U5 ( .A(W_INC), .B(n2), .Y(n6) );
  INVX2M U6 ( .A(n2), .Y(w_full) );
  NAND2X2M U7 ( .A(n5), .B(w_addr[1]), .Y(n4) );
  NOR2X2M U8 ( .A(n6), .B(n1), .Y(n5) );
  XNOR2X2M U9 ( .A(w_addr[3]), .B(n3), .Y(n11) );
  NAND2BX2M U10 ( .AN(n4), .B(w_addr[2]), .Y(n3) );
  CLKXOR2X2M U11 ( .A(w_addr[3]), .B(w_addr[2]), .Y(w_ptr_comb[2]) );
  XNOR2X2M U12 ( .A(n1), .B(w_addr[1]), .Y(w_ptr_comb[0]) );
  CLKXOR2X2M U13 ( .A(w_addr[1]), .B(w_addr[2]), .Y(w_ptr_comb[1]) );
  XNOR2X2M U14 ( .A(w_ptr_comb[0]), .B(sync_rd[0]), .Y(n8) );
  CLKXOR2X2M U15 ( .A(w_addr[1]), .B(n5), .Y(n13) );
  XNOR2X2M U16 ( .A(w_addr[2]), .B(n4), .Y(n12) );
  NAND4X2M U17 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  CLKXOR2X2M U18 ( .A(w_addr[3]), .B(sync_rd[3]), .Y(n10) );
  CLKXOR2X2M U19 ( .A(sync_rd[2]), .B(w_ptr_comb[2]), .Y(n9) );
  XNOR2X2M U20 ( .A(w_ptr_comb[1]), .B(sync_rd[1]), .Y(n7) );
  CLKXOR2X2M U21 ( .A(n1), .B(n6), .Y(n14) );
endmodule


module FIFO_RD_address4 ( R_INC, R_CLK, R_RST, sync_wr, r_empty, r_ptr, r_addr
 );
  input [3:0] sync_wr;
  output [3:0] r_ptr;
  output [3:0] r_addr;
  input R_INC, R_CLK, R_RST;
  output r_empty;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [2:0] r_ptr_comb;

  DFFRQX1M \r_addr_reg[3]  ( .D(n11), .CK(R_CLK), .RN(R_RST), .Q(r_addr[3]) );
  DFFRX1M \r_addr_reg[0]  ( .D(n14), .CK(R_CLK), .RN(R_RST), .Q(r_addr[0]), 
        .QN(n1) );
  DFFRQX2M \r_addr_reg[1]  ( .D(n13), .CK(R_CLK), .RN(R_RST), .Q(r_addr[1]) );
  DFFRQX4M \r_addr_reg[2]  ( .D(n12), .CK(R_CLK), .RN(R_RST), .Q(r_addr[2]) );
  DFFRQX1M \r_ptr_reg[2]  ( .D(r_ptr_comb[2]), .CK(R_CLK), .RN(R_RST), .Q(
        r_ptr[2]) );
  DFFRQX1M \r_ptr_reg[1]  ( .D(r_ptr_comb[1]), .CK(R_CLK), .RN(R_RST), .Q(
        r_ptr[1]) );
  DFFRQX1M \r_ptr_reg[0]  ( .D(r_ptr_comb[0]), .CK(R_CLK), .RN(R_RST), .Q(
        r_ptr[0]) );
  DFFRQX1M \r_ptr_reg[3]  ( .D(r_addr[3]), .CK(R_CLK), .RN(R_RST), .Q(r_ptr[3]) );
  INVX2M U3 ( .A(n2), .Y(r_empty) );
  CLKXOR2X2M U4 ( .A(r_addr[1]), .B(r_addr[2]), .Y(r_ptr_comb[1]) );
  CLKXOR2X2M U5 ( .A(r_addr[3]), .B(r_addr[2]), .Y(r_ptr_comb[2]) );
  XNOR2X2M U6 ( .A(n1), .B(r_addr[1]), .Y(r_ptr_comb[0]) );
  XNOR2X2M U7 ( .A(r_ptr_comb[1]), .B(sync_wr[1]), .Y(n7) );
  NAND4X2M U8 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  XNOR2X2M U9 ( .A(r_addr[3]), .B(sync_wr[3]), .Y(n9) );
  XNOR2X2M U10 ( .A(r_ptr_comb[2]), .B(sync_wr[2]), .Y(n10) );
  XNOR2X2M U11 ( .A(r_ptr_comb[0]), .B(sync_wr[0]), .Y(n8) );
  NOR2X2M U12 ( .A(n6), .B(n1), .Y(n5) );
  NAND2X2M U13 ( .A(R_INC), .B(n2), .Y(n6) );
  CLKXOR2X2M U14 ( .A(r_addr[1]), .B(n5), .Y(n13) );
  NAND2X2M U15 ( .A(n5), .B(r_addr[1]), .Y(n4) );
  CLKXOR2X2M U16 ( .A(n1), .B(n6), .Y(n14) );
  XNOR2X2M U17 ( .A(r_addr[2]), .B(n4), .Y(n12) );
  XNOR2X2M U18 ( .A(r_addr[3]), .B(n3), .Y(n11) );
  NAND2BX2M U19 ( .AN(n4), .B(r_addr[2]), .Y(n3) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, 
        WR_DATA, RD_DATA, FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   n1, n2, n3, n4;
  wire   [3:0] Wr_addr;
  wire   [3:0] Rd_addr;
  wire   [3:0] rptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] wptr;
  wire   [3:0] rq2_wptr;

  FIFO_MEM_CNTRL_DATA_WIDTH8_mem_depth8 U0_memory ( .WR_DATA_mem(WR_DATA), 
        .W_CLK(W_CLK), .W_RST(n3), .wfull(FULL), .winc(W_INC), .w_mem_addr(
        Wr_addr), .r_mem_addr(Rd_addr), .RD_DATA_mem(RD_DATA) );
  DF_SYNC_BUS_WIDTH4_0 U0_SYNC_r2w ( .CLK(W_CLK), .RST(n3), .Async(rptr), 
        .sync(wq2_rptr) );
  DF_SYNC_BUS_WIDTH4_1 U0_SYNC_w2r ( .CLK(R_CLK), .RST(n1), .Async(wptr), 
        .sync(rq2_wptr) );
  FIFO_WR_address4 U0_FIFO_WR ( .W_INC(W_INC), .W_CLK(W_CLK), .W_RST(n3), 
        .sync_rd(wq2_rptr), .w_full(FULL), .w_ptr(wptr), .w_addr(Wr_addr) );
  FIFO_RD_address4 U0_FIFO_RD ( .R_INC(R_INC), .R_CLK(R_CLK), .R_RST(n1), 
        .sync_wr(rq2_wptr), .r_empty(EMPTY), .r_ptr(rptr), .r_addr(Rd_addr) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_RST), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_RST), .Y(n2) );
endmodule


module DATA_SYN_BUS_WIDTH8 ( bus_enable, CLK, RST, unsync_bus, sync_bus, 
        enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [1:0] sync_reg;

  DFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .CK(CLK), .RN(n10), .Q(
        enable_flop) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(CLK), .RN(n10), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(n10), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(n10), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(n10), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(n10), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(n10), .Q(sync_bus[2]) );
  DFFRQX2M enable_pulse_reg ( .D(n12), .CK(CLK), .RN(n10), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(n10), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(n10), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(n10), .Q(sync_bus[1]) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(n10), .Q(
        sync_reg[0]) );
  NAND2BX2M U3 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n12) );
  INVX4M U5 ( .A(n11), .Y(n10) );
  INVX2M U6 ( .A(RST), .Y(n11) );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n12), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[6]), .A1(n12), .B0(sync_bus[6]), .B1(n1), .Y(n8)
         );
  AO22X1M U9 ( .A0(unsync_bus[1]), .A1(n12), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n12), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[0]), .A1(n12), .B0(sync_bus[0]), .B1(n1), .Y(n2) );
  AO22X1M U12 ( .A0(unsync_bus[3]), .A1(n12), .B0(sync_bus[3]), .B1(n1), .Y(n5) );
  AO22X1M U13 ( .A0(unsync_bus[4]), .A1(n12), .B0(sync_bus[4]), .B1(n1), .Y(n6) );
  AO22X1M U14 ( .A0(unsync_bus[7]), .A1(n12), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
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

  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  INVXLM U1 ( .A(B[1]), .Y(n8) );
  INVXLM U2 ( .A(B[2]), .Y(n7) );
  NAND2BX2M U3 ( .AN(n9), .B(n1), .Y(carry[1]) );
  INVXLM U4 ( .A(B[3]), .Y(n6) );
  INVXLM U5 ( .A(B[4]), .Y(n5) );
  INVX2M U6 ( .A(B[0]), .Y(n9) );
  INVX2M U7 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U8 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U9 ( .A(B[6]), .Y(n3) );
  INVX2M U10 ( .A(B[5]), .Y(n4) );
  INVXLM U11 ( .A(B[7]), .Y(n2) );
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
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
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
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  CLKXOR2X2M U2 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n13) );
  CLKXOR2X2M U4 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  INVX2M U5 ( .A(n7), .Y(SUM[6]) );
  INVX2M U6 ( .A(A[6]), .Y(n7) );
  BUFX2M U7 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U8 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U9 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U10 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U11 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U12 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U13 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U14 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U15 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U16 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U17 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  OAI21X1M U18 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U19 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  OAI21BX1M U20 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  XNOR2X1M U21 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U22 ( .A(n21), .B(n19), .Y(n22) );
  NOR2X1M U23 ( .A(B[11]), .B(A[11]), .Y(n19) );
  AND2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U25 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U26 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AOI2BB1X1M U27 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  AND2X1M U28 ( .A(B[9]), .B(A[9]), .Y(n10) );
  NOR2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n11) );
  OA21X1M U30 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U31 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NOR2X1M U32 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2BX1M U33 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U34 ( .A(B[10]), .B(A[10]), .Y(n25) );
  NOR2X1M U35 ( .A(B[10]), .B(A[10]), .Y(n23) );
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
         n27, n28, n29, n30, n31, n32;

  ALU_op_width8_out_width16_func_width4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n11, n15, n16, 
        n14, n13, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n7), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n6), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n4), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  CLKINVX2M U2 ( .A(B[5]), .Y(n19) );
  AND2X2M U3 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U4 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n4) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n6) );
  AND2X2M U7 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n7) );
  AND2X2M U8 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U9 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U10 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U11 ( .A(B[6]), .Y(n18) );
  NOR2XLM U12 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2XLM U13 ( .A(n18), .B(n29), .Y(\ab[3][6] ) );
  NOR2XLM U14 ( .A(n18), .B(n28), .Y(\ab[4][6] ) );
  NOR2XLM U15 ( .A(n18), .B(n27), .Y(\ab[5][6] ) );
  NOR2XLM U16 ( .A(n25), .B(n18), .Y(\ab[7][6] ) );
  NOR2XLM U17 ( .A(n18), .B(n26), .Y(\ab[6][6] ) );
  NOR2XLM U18 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  CLKINVX2M U19 ( .A(B[2]), .Y(n22) );
  CLKINVX2M U20 ( .A(B[3]), .Y(n21) );
  CLKINVX2M U21 ( .A(B[1]), .Y(n23) );
  CLKINVX2M U22 ( .A(B[4]), .Y(n20) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U25 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n11) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U28 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U29 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  AND2X2M U30 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  AND2X2M U31 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  CLKXOR2X2M U32 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U33 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  AND2X2M U34 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  AND2X2M U35 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  AND2X2M U36 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n16) );
  CLKXOR2X2M U37 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  CLKXOR2X2M U38 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U39 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  INVX2M U40 ( .A(B[0]), .Y(n24) );
  INVX2M U41 ( .A(A[1]), .Y(n31) );
  INVX2M U42 ( .A(A[2]), .Y(n30) );
  CLKXOR2X2M U43 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  CLKXOR2X2M U44 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U45 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  INVX2M U46 ( .A(A[3]), .Y(n29) );
  INVX2M U47 ( .A(A[4]), .Y(n28) );
  INVX2M U48 ( .A(A[5]), .Y(n27) );
  INVX2M U49 ( .A(A[7]), .Y(n25) );
  INVX2M U50 ( .A(A[6]), .Y(n26) );
  INVX2M U51 ( .A(A[0]), .Y(n32) );
  INVX2M U52 ( .A(B[7]), .Y(n17) );
  NOR2X1M U54 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n25), .B(n19), .Y(\ab[7][5] ) );
  NOR2X1M U56 ( .A(n25), .B(n20), .Y(\ab[7][4] ) );
  NOR2X1M U57 ( .A(n25), .B(n21), .Y(\ab[7][3] ) );
  NOR2X1M U58 ( .A(n25), .B(n22), .Y(\ab[7][2] ) );
  NOR2X1M U59 ( .A(n25), .B(n23), .Y(\ab[7][1] ) );
  NOR2X1M U60 ( .A(n25), .B(n24), .Y(\ab[7][0] ) );
  NOR2X1M U61 ( .A(n17), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U62 ( .A(n19), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U63 ( .A(n20), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U64 ( .A(n21), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U65 ( .A(n22), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U66 ( .A(n23), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U67 ( .A(n24), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U68 ( .A(n17), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U69 ( .A(n19), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U70 ( .A(n20), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U71 ( .A(n21), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U72 ( .A(n22), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U73 ( .A(n23), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U74 ( .A(n24), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U75 ( .A(n17), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U76 ( .A(n19), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U77 ( .A(n20), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U78 ( .A(n21), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U79 ( .A(n22), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U80 ( .A(n23), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U81 ( .A(n24), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U82 ( .A(n17), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U83 ( .A(n19), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U84 ( .A(n20), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U85 ( .A(n21), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U86 ( .A(n22), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U87 ( .A(n23), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U88 ( .A(n24), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U89 ( .A(n17), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U90 ( .A(n18), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U91 ( .A(n19), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U92 ( .A(n20), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U93 ( .A(n21), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U94 ( .A(n22), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U95 ( .A(n23), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U96 ( .A(n24), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U97 ( .A(n17), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U98 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X1M U99 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X1M U100 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X1M U101 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  NOR2X1M U102 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  NOR2X1M U103 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  NOR2X1M U104 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X1M U105 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X1M U106 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X1M U107 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X1M U108 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X1M U109 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X1M U110 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
endmodule


module ALU_op_width8_out_width16_func_width4_DW_div_uns_1 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][3] , \u_div/SumTmp[2][0] ,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] ,
         \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] ,
         \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[4][1] ,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n112, n114,
         n115, n116, n117, n118, n119, n120, n121, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146;
  wire   [7:0] \u_div/BInv ;

  ADDFHX8M \u_div/u_fa_PartRem_0_5_2  ( .A(n100), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_2  ( .A(n103), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), 
        .S(\u_div/SumTmp[1][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_3  ( .A(n14), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/BInv [7]), .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_4  ( .A(n93), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_3  ( .A(n97), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_2  ( .A(n13), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_3  ( .A(n96), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/BInv [1]), .B(
        \u_div/PartRem[1][1] ), .CI(\u_div/CryTmp[0][1] ), .CO(
        \u_div/CryTmp[0][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_4  ( .A(n98), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_5  ( .A(n95), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_0  ( .A(a[3]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[3][1] ), .S(\u_div/SumTmp[3][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_0  ( .A(a[2]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_0  ( .A(a[1]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  NAND2X4M U1 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[0][1] ) );
  CLKINVX8M U2 ( .A(\u_div/BInv [0]), .Y(n1) );
  CLKINVX8M U3 ( .A(a[0]), .Y(n2) );
  NAND2X4M U4 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[6][1] ) );
  XNOR2X8M U5 ( .A(\u_div/BInv [0]), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  CLKINVX8M U6 ( .A(\u_div/BInv [0]), .Y(n3) );
  CLKINVX8M U7 ( .A(a[6]), .Y(n4) );
  NAND2X4M U8 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  XNOR2X8M U9 ( .A(\u_div/BInv [0]), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  CLKINVX8M U10 ( .A(\u_div/BInv [0]), .Y(n5) );
  CLKINVX8M U11 ( .A(a[4]), .Y(n6) );
  INVXLM U12 ( .A(\u_div/CryTmp[1][5] ), .Y(n7) );
  INVX2M U13 ( .A(n7), .Y(n8) );
  INVXLM U14 ( .A(\u_div/CryTmp[1][4] ), .Y(n9) );
  INVX2M U15 ( .A(n9), .Y(n10) );
  INVXLM U16 ( .A(\u_div/CryTmp[1][6] ), .Y(n11) );
  INVX2M U17 ( .A(n11), .Y(n12) );
  XNOR2XLM U18 ( .A(n8), .B(n53), .Y(n20) );
  NAND2X6M U19 ( .A(\u_div/CryTmp[1][5] ), .B(\u_div/PartRem[2][5] ), .Y(n54)
         );
  CLKNAND2X12M U20 ( .A(\u_div/CryTmp[1][5] ), .B(\u_div/BInv [5]), .Y(n55) );
  INVX12M U21 ( .A(\u_div/CryTmp[4][4] ), .Y(n132) );
  INVX14M U22 ( .A(n129), .Y(\u_div/PartRem[4][1] ) );
  XNOR2XLM U23 ( .A(n10), .B(n27), .Y(n19) );
  MXI2XLM U24 ( .A(n116), .B(n20), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  INVX14M U25 ( .A(n146), .Y(quotient[1]) );
  XNOR2XLM U26 ( .A(n12), .B(n57), .Y(n18) );
  NAND2X6M U27 ( .A(\u_div/CryTmp[1][4] ), .B(\u_div/PartRem[2][4] ), .Y(n28)
         );
  MXI2XLM U28 ( .A(n117), .B(n19), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  INVX4M U29 ( .A(n117), .Y(\u_div/PartRem[2][4] ) );
  MXI2XLM U30 ( .A(n96), .B(\u_div/SumTmp[2][3] ), .S0(n87), .Y(n117) );
  CLKMX2X12M U31 ( .A(n110), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(
        n96) );
  NAND2X12M U32 ( .A(n88), .B(\u_div/CryTmp[2][1] ), .Y(n85) );
  NAND2X5M U33 ( .A(\u_div/CryTmp[1][6] ), .B(\u_div/PartRem[2][6] ), .Y(n58)
         );
  NAND2X8M U34 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/BInv [2]), .Y(n38) );
  XNOR2XLM U35 ( .A(n37), .B(\u_div/CryTmp[1][2] ), .Y(n21) );
  NAND2X12M U36 ( .A(\u_div/BInv [2]), .B(\u_div/CryTmp[1][2] ), .Y(n40) );
  NAND3X12M U37 ( .A(n34), .B(n35), .C(n36), .Y(\u_div/CryTmp[1][2] ) );
  CLKINVX24M U38 ( .A(n89), .Y(quotient[3]) );
  NAND2X8M U39 ( .A(n84), .B(n23), .Y(\u_div/CryTmp[2][2] ) );
  CLKAND2X16M U40 ( .A(n85), .B(n86), .Y(n23) );
  NAND2X5M U41 ( .A(a[3]), .B(n89), .Y(n26) );
  MX2X8M U42 ( .A(n75), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n97) );
  AND2X4M U43 ( .A(n143), .B(\u_div/CryTmp[5][3] ), .Y(quotient[5]) );
  NAND2X6M U44 ( .A(\u_div/CryTmp[1][6] ), .B(\u_div/BInv [6]), .Y(n59) );
  NOR2BX12M U45 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n140) );
  NAND3X12M U46 ( .A(n58), .B(n59), .C(n60), .Y(\u_div/CryTmp[1][7] ) );
  MXI2X12M U47 ( .A(n138), .B(n139), .S0(n140), .Y(\u_div/PartRem[1][1] ) );
  NAND2BX8M U48 ( .AN(b[7]), .B(\u_div/CryTmp[1][7] ), .Y(n146) );
  CLKNAND2X12M U49 ( .A(\u_div/CryTmp[3][2] ), .B(n110), .Y(n69) );
  CLKNAND2X16M U50 ( .A(\u_div/CryTmp[3][2] ), .B(\u_div/BInv [2]), .Y(n70) );
  NAND2X12M U51 ( .A(n32), .B(n33), .Y(n110) );
  NAND2X8M U52 ( .A(\u_div/SumTmp[4][1] ), .B(quotient[4]), .Y(n33) );
  CLKNAND2X8M U53 ( .A(n105), .B(n31), .Y(n32) );
  CLKINVX16M U54 ( .A(quotient[4]), .Y(n31) );
  NAND2X12M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/BInv [1]), .Y(n66) );
  NAND2X8M U56 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/CryTmp[3][1] ), .Y(n65)
         );
  NAND2X6M U57 ( .A(n110), .B(\u_div/BInv [2]), .Y(n71) );
  NAND2X8M U58 ( .A(\u_div/CryTmp[1][4] ), .B(\u_div/BInv [4]), .Y(n29) );
  INVX6M U59 ( .A(quotient[4]), .Y(n61) );
  XOR2XLM U60 ( .A(\u_div/CryTmp[3][2] ), .B(n68), .Y(\u_div/SumTmp[3][2] ) );
  OR2X12M U61 ( .A(n134), .B(n133), .Y(n89) );
  NAND2X6M U62 ( .A(n105), .B(\u_div/CryTmp[4][1] ), .Y(n42) );
  NAND2X8M U63 ( .A(n105), .B(\u_div/BInv [1]), .Y(n43) );
  INVX6M U64 ( .A(\u_div/CryTmp[6][2] ), .Y(n124) );
  INVX12M U65 ( .A(\u_div/CryTmp[2][6] ), .Y(n137) );
  MXI2X12M U66 ( .A(n106), .B(n107), .S0(n125), .Y(n105) );
  BUFX16M U67 ( .A(n99), .Y(n87) );
  NAND2X8M U68 ( .A(n108), .B(\u_div/BInv [1]), .Y(n77) );
  NAND2X1M U69 ( .A(n103), .B(n61), .Y(n62) );
  NAND3X12M U70 ( .A(n42), .B(n43), .C(n44), .Y(\u_div/CryTmp[4][2] ) );
  INVX12M U71 ( .A(n118), .Y(\u_div/PartRem[2][3] ) );
  MXI2X8M U72 ( .A(n13), .B(\u_div/SumTmp[2][2] ), .S0(n87), .Y(n118) );
  MXI2X12M U73 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n15), .Y(n120) );
  BUFX10M U74 ( .A(n135), .Y(n15) );
  INVX12M U75 ( .A(n73), .Y(\u_div/PartRem[2][2] ) );
  NAND3X4M U76 ( .A(n45), .B(n46), .C(n47), .Y(\u_div/CryTmp[3][4] ) );
  XNOR2X2M U77 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OR2X8M U78 ( .A(\u_div/BInv [0]), .B(a[5]), .Y(\u_div/CryTmp[5][1] ) );
  XOR2X4M U79 ( .A(\u_div/BInv [0]), .B(a[5]), .Y(n107) );
  CLKINVX12M U80 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  NAND2X8M U81 ( .A(\u_div/SumTmp[7][0] ), .B(quotient[7]), .Y(n91) );
  OR2X12M U82 ( .A(n109), .B(quotient[7]), .Y(n90) );
  AND2X12M U83 ( .A(n143), .B(n52), .Y(quotient[7]) );
  BUFX18M U84 ( .A(n104), .Y(quotient[4]) );
  NAND3X12M U85 ( .A(n54), .B(n55), .C(n56), .Y(\u_div/CryTmp[1][6] ) );
  BUFX12M U86 ( .A(n101), .Y(n13) );
  MXI2X6M U87 ( .A(n102), .B(n17), .S0(quotient[3]), .Y(n101) );
  MXI2X8M U88 ( .A(n114), .B(n16), .S0(quotient[5]), .Y(n103) );
  CLKNAND2X8M U89 ( .A(b[0]), .B(n109), .Y(\u_div/CryTmp[7][1] ) );
  INVX12M U90 ( .A(a[7]), .Y(n109) );
  BUFX8M U91 ( .A(n119), .Y(n73) );
  NAND2X6M U92 ( .A(\u_div/CryTmp[3][3] ), .B(\u_div/BInv [3]), .Y(n46) );
  CLKNAND2X4M U93 ( .A(\u_div/CryTmp[3][3] ), .B(n94), .Y(n45) );
  NAND3X12M U94 ( .A(n69), .B(n70), .C(n71), .Y(\u_div/CryTmp[3][3] ) );
  BUFX6M U95 ( .A(\u_div/PartRem[1][3] ), .Y(n14) );
  MXI2XLM U96 ( .A(n73), .B(n21), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  MXI2X3M U97 ( .A(n120), .B(n22), .S0(quotient[1]), .Y(\u_div/PartRem[1][2] )
         );
  CLKINVX2M U98 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  NAND2XLM U99 ( .A(\u_div/CryTmp[3][1] ), .B(\u_div/BInv [1]), .Y(n67) );
  XOR2X2M U100 ( .A(n92), .B(n48), .Y(\u_div/SumTmp[6][1] ) );
  MX2X6M U101 ( .A(n94), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n98)
         );
  INVX4M U102 ( .A(n116), .Y(\u_div/PartRem[2][5] ) );
  NAND2X4M U103 ( .A(n92), .B(\u_div/CryTmp[6][1] ), .Y(n49) );
  MXI2X1M U104 ( .A(n88), .B(\u_div/SumTmp[2][1] ), .S0(n87), .Y(n119) );
  NAND2X2M U105 ( .A(n88), .B(\u_div/BInv [1]), .Y(n84) );
  NAND2X4M U106 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/BInv [1]), .Y(n34) );
  NAND2X4M U107 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/CryTmp[1][1] ), .Y(n35)
         );
  INVX2M U108 ( .A(n74), .Y(n75) );
  CLKXOR2X2M U109 ( .A(\u_div/CryTmp[6][1] ), .B(\u_div/BInv [1]), .Y(n48) );
  INVX2M U110 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  INVX2M U111 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  MX2X2M U112 ( .A(n93), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n95)
         );
  NAND2X2M U113 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/BInv [6]), .Y(n60) );
  NAND2X2M U114 ( .A(n94), .B(\u_div/BInv [3]), .Y(n47) );
  INVX4M U115 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  NAND2X2M U116 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/BInv [5]), .Y(n56) );
  INVX2M U117 ( .A(n115), .Y(\u_div/PartRem[2][6] ) );
  INVX6M U118 ( .A(\u_div/CryTmp[3][5] ), .Y(n134) );
  NAND3X4M U119 ( .A(n49), .B(n50), .C(n51), .Y(\u_div/CryTmp[6][2] ) );
  AND3X6M U120 ( .A(n142), .B(n141), .C(\u_div/CryTmp[7][1] ), .Y(n52) );
  INVX2M U121 ( .A(b[2]), .Y(n142) );
  NOR2X2M U122 ( .A(n137), .B(n136), .Y(n135) );
  NOR2X2M U123 ( .A(n136), .B(n137), .Y(n99) );
  XNOR2X2M U124 ( .A(n108), .B(n76), .Y(n16) );
  XNOR2X2M U125 ( .A(\u_div/PartRem[4][1] ), .B(n64), .Y(n17) );
  XNOR3X2M U126 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/BInv [1]), .C(
        \u_div/CryTmp[1][1] ), .Y(n22) );
  MXI2X1M U127 ( .A(n118), .B(n128), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][4] ) );
  MXI2X1M U128 ( .A(n115), .B(n18), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  NAND2X8M U129 ( .A(n92), .B(\u_div/BInv [1]), .Y(n50) );
  INVX12M U130 ( .A(n131), .Y(n144) );
  NAND2X6M U131 ( .A(n62), .B(n63), .Y(n94) );
  INVX8M U132 ( .A(\u_div/CryTmp[5][3] ), .Y(n127) );
  NAND2X6M U133 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/CryTmp[1][2] ), .Y(n39)
         );
  INVX16M U134 ( .A(n120), .Y(\u_div/PartRem[2][1] ) );
  MX2X6M U135 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(n108)
         );
  NAND2X8M U136 ( .A(\u_div/SumTmp[3][0] ), .B(quotient[3]), .Y(n25) );
  NAND2X12M U137 ( .A(n25), .B(n26), .Y(n88) );
  XOR2XLM U138 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/BInv [4]), .Y(n27) );
  NAND2X6M U139 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/BInv [4]), .Y(n30) );
  NAND3X12M U140 ( .A(n28), .B(n29), .C(n30), .Y(\u_div/CryTmp[1][5] ) );
  XOR2XLM U141 ( .A(n105), .B(n41), .Y(\u_div/SumTmp[4][1] ) );
  XOR2XLM U142 ( .A(n110), .B(\u_div/BInv [2]), .Y(n68) );
  NAND2X2M U143 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[1][1] ), .Y(n36) );
  XOR2XLM U144 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/BInv [2]), .Y(n37) );
  NAND3X12M U145 ( .A(n38), .B(n39), .C(n40), .Y(\u_div/CryTmp[1][3] ) );
  XOR2XLM U146 ( .A(\u_div/CryTmp[4][1] ), .B(\u_div/BInv [1]), .Y(n41) );
  NAND2XLM U147 ( .A(\u_div/CryTmp[4][1] ), .B(\u_div/BInv [1]), .Y(n44) );
  INVX10M U148 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  XOR3XLM U149 ( .A(n94), .B(\u_div/CryTmp[3][3] ), .C(\u_div/BInv [3]), .Y(
        \u_div/SumTmp[3][3] ) );
  NAND2X2M U150 ( .A(\u_div/CryTmp[6][1] ), .B(\u_div/BInv [1]), .Y(n51) );
  INVX4M U151 ( .A(b[1]), .Y(n141) );
  INVX14M U152 ( .A(n126), .Y(n143) );
  XOR2XLM U153 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/BInv [5]), .Y(n53) );
  XOR2XLM U154 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/BInv [6]), .Y(n57) );
  INVX1M U155 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  NAND2X1M U156 ( .A(\u_div/SumTmp[4][2] ), .B(quotient[4]), .Y(n63) );
  XOR2XLM U157 ( .A(\u_div/CryTmp[3][1] ), .B(\u_div/BInv [1]), .Y(n64) );
  NAND3X12M U158 ( .A(n65), .B(n66), .C(n67), .Y(\u_div/CryTmp[3][2] ) );
  MX2X1M U159 ( .A(n97), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n93)
         );
  INVX2M U160 ( .A(quotient[6]), .Y(n80) );
  INVXLM U161 ( .A(n92), .Y(n121) );
  CLKNAND2X16M U162 ( .A(n90), .B(n91), .Y(n92) );
  CLKNAND2X12M U163 ( .A(n81), .B(n82), .Y(n100) );
  INVXLM U164 ( .A(n108), .Y(n114) );
  NAND2BX4M U165 ( .AN(n121), .B(n80), .Y(n81) );
  NAND2X8M U166 ( .A(n108), .B(\u_div/CryTmp[5][1] ), .Y(n78) );
  NOR2X4M U167 ( .A(n131), .B(n132), .Y(n104) );
  NAND3X12M U168 ( .A(n77), .B(n78), .C(n79), .Y(\u_div/CryTmp[5][2] ) );
  MXI2X6M U169 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(n130), .Y(n129) );
  INVXLM U170 ( .A(n100), .Y(n74) );
  XOR2XLM U171 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[5][1] ), .Y(n76) );
  NAND2XLM U172 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[5][1] ), .Y(n79) );
  NAND2X2M U173 ( .A(\u_div/SumTmp[6][1] ), .B(quotient[6]), .Y(n82) );
  XOR2XLM U174 ( .A(n88), .B(n83), .Y(\u_div/SumTmp[2][1] ) );
  NAND2XLM U175 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[2][1] ), .Y(n86) );
  XOR2XLM U176 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[2][1] ), .Y(n83) );
  NAND2BXLM U177 ( .AN(b[2]), .B(n143), .Y(n123) );
  INVXLM U178 ( .A(\u_div/PartRem[4][1] ), .Y(n102) );
  INVX2M U179 ( .A(a[5]), .Y(n106) );
  NOR2X12M U180 ( .A(b[4]), .B(b[5]), .Y(n145) );
  MXI2X1M U181 ( .A(n95), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n115)
         );
  MXI2X1M U182 ( .A(n98), .B(\u_div/SumTmp[2][4] ), .S0(n87), .Y(n116) );
  NAND2BX1M U183 ( .AN(n136), .B(\u_div/BInv [5]), .Y(n133) );
  INVX2M U184 ( .A(a[1]), .Y(n138) );
  INVX2M U185 ( .A(\u_div/SumTmp[1][0] ), .Y(n139) );
  INVX2M U186 ( .A(\u_div/SumTmp[1][3] ), .Y(n128) );
  INVXLM U187 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  OR2X12M U188 ( .A(b[7]), .B(b[6]), .Y(n136) );
  NOR2BX8M U189 ( .AN(n143), .B(n127), .Y(n125) );
  INVXLM U190 ( .A(n87), .Y(n112) );
  INVX2M U191 ( .A(n112), .Y(quotient[2]) );
  NAND2BX12M U192 ( .AN(n136), .B(n145), .Y(n131) );
  NOR2X12M U193 ( .A(n124), .B(n123), .Y(quotient[6]) );
  NAND2BX12M U194 ( .AN(b[3]), .B(n144), .Y(n126) );
  NOR2X6M U195 ( .A(n132), .B(n131), .Y(n130) );
endmodule


module ALU_op_width8_out_width16_func_width4 ( A, B, ALU_FUN, EN, CLK, RST, 
        out_valid, ALU_OUT );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST;
  output out_valid;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n31, n32,
         n33, n34, n36, n43, n44, n45, n46, n47, n48, n54, n55, n56, n60, n61,
         n62, n66, n67, n68, n72, n73, n74, n78, n79, n80, n83, n84, n85, n86,
         n87, n88, n89, n90, n92, n101, n103, n104, n106, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n35, n37, n38, n39, n40,
         n41, n42, n49, n50, n51, n52, n53, n57, n58, n59, n63, n64, n65, n69,
         n70, n71, n75, n76, n77, n81, n82, n91, n93, n94, n95, n96, n97, n98,
         n99, n100, n102, n105, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162;
  wire   [15:0] ALU_OUT_COMB;

  ALU_op_width8_out_width16_func_width4_DW01_sub_0 sub_40 ( .A({1'b0, n22, n21, 
        n20, n19, n18, n17, n16, A[0]}), .B({1'b0, B[7], n15, B[5:0]}), .CI(
        1'b0), .DIFF({N108, N107, N106, N105, N104, N103, N102, N101, N100})
         );
  ALU_op_width8_out_width16_func_width4_DW01_add_0 add_37 ( .A({1'b0, n22, n21, 
        n20, n19, n18, n17, n16, A[0]}), .B({1'b0, B[7], n15, B[5:0]}), .CI(
        1'b0), .SUM({N99, N98, N97, N96, N95, N94, N93, N92, N91}) );
  ALU_op_width8_out_width16_func_width4_DW02_mult_0 mult_43 ( .A({n22, n21, 
        n20, n19, n18, n17, n16, A[0]}), .B({B[7], n15, B[5:0]}), .TC(1'b0), 
        .PRODUCT({N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109}) );
  ALU_op_width8_out_width16_func_width4_DW_div_uns_1 div_46 ( .a({n22, n21, 
        n20, n19, n18, n17, n16, A[0]}), .b({B[7], n15, B[5:0]}), .quotient({
        N132, N131, N130, N129, N128, N127, N126, N125}) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(ALU_OUT_COMB[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_COMB[7]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_COMB[6]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_COMB[5]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_COMB[4]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_COMB[3]), .CK(CLK), .RN(n25), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_COMB[15]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_COMB[14]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_COMB[13]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_COMB[12]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_COMB[11]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_COMB[10]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_COMB[9]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_COMB[8]), .CK(CLK), .RN(n24), .Q(
        ALU_OUT[8]) );
  DFFRQX2M out_valid_reg ( .D(EN), .CK(CLK), .RN(n25), .Q(out_valid) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(ALU_OUT_COMB[1]), .CK(CLK), .RN(n25), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_COMB[2]), .CK(CLK), .RN(n25), .Q(
        ALU_OUT[2]) );
  BUFX20M U3 ( .A(B[6]), .Y(n15) );
  CLKAND2X16M U4 ( .A(n107), .B(n4), .Y(n109) );
  NAND2BXLM U7 ( .AN(n20), .B(B[5]), .Y(n139) );
  BUFX4M U8 ( .A(A[1]), .Y(n16) );
  BUFX4M U9 ( .A(A[3]), .Y(n18) );
  BUFX4M U10 ( .A(A[5]), .Y(n20) );
  BUFX6M U11 ( .A(A[6]), .Y(n21) );
  AND3X2M U12 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n9), .Y(n12) );
  BUFX8M U13 ( .A(A[7]), .Y(n22) );
  AND3X2M U14 ( .A(n10), .B(ALU_FUN[1]), .C(n28), .Y(n11) );
  AND2X2M U15 ( .A(n108), .B(n103), .Y(n4) );
  AOI2B1X1M U16 ( .A1N(n38), .A0(N101), .B0(n29), .Y(n30) );
  AND2X2M U17 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n3) );
  CLKAND2X16M U18 ( .A(n6), .B(n5), .Y(n107) );
  NAND2X12M U19 ( .A(n12), .B(n16), .Y(n5) );
  NAND2X8M U20 ( .A(N125), .B(n11), .Y(n6) );
  OAI2BB1XLM U21 ( .A0N(N126), .A1N(n11), .B0(n83), .Y(n29) );
  AOI22XLM U22 ( .A0(n18), .A1(n12), .B0(N127), .B1(n11), .Y(n42) );
  AOI22XLM U23 ( .A0(n20), .A1(n12), .B0(N129), .B1(n11), .Y(n59) );
  OAI21XLM U24 ( .A0(B[1]), .A1(n87), .B0(n88), .Y(n84) );
  OAI222XLM U25 ( .A0(n79), .A1(n149), .B0(B[2]), .B1(n80), .C0(n36), .C1(n116), .Y(n78) );
  OAI222XLM U26 ( .A0(n73), .A1(n151), .B0(B[3]), .B1(n74), .C0(n36), .C1(n161), .Y(n72) );
  OAI222XLM U27 ( .A0(n67), .A1(n157), .B0(B[4]), .B1(n68), .C0(n36), .C1(n160), .Y(n66) );
  INVXLM U28 ( .A(B[4]), .Y(n157) );
  AOI21XLM U29 ( .A0(n119), .A1(n116), .B0(B[1]), .Y(n120) );
  INVXLM U30 ( .A(B[2]), .Y(n149) );
  INVXLM U31 ( .A(B[3]), .Y(n151) );
  BUFX4M U32 ( .A(n113), .Y(n14) );
  INVX2M U33 ( .A(n95), .Y(n113) );
  BUFX4M U34 ( .A(n112), .Y(n13) );
  INVX2M U35 ( .A(n99), .Y(n112) );
  INVX2M U36 ( .A(n38), .Y(n115) );
  INVX2M U37 ( .A(n23), .Y(n98) );
  INVX2M U38 ( .A(n47), .Y(n94) );
  OAI2BB1X2M U39 ( .A0N(N123), .A1N(n31), .B0(n32), .Y(ALU_OUT_COMB[14]) );
  OAI2BB1X2M U40 ( .A0N(N124), .A1N(n31), .B0(n32), .Y(ALU_OUT_COMB[15]) );
  OAI2BB1X2M U41 ( .A0N(N121), .A1N(n31), .B0(n32), .Y(ALU_OUT_COMB[12]) );
  OAI2BB1X2M U42 ( .A0N(N122), .A1N(n31), .B0(n32), .Y(ALU_OUT_COMB[13]) );
  OAI2BB1X2M U43 ( .A0N(N119), .A1N(n31), .B0(n32), .Y(ALU_OUT_COMB[10]) );
  OAI2BB1X2M U44 ( .A0N(N120), .A1N(n31), .B0(n32), .Y(ALU_OUT_COMB[11]) );
  OAI2BB1X2M U45 ( .A0N(n7), .A1N(n9), .B0(n101), .Y(n48) );
  AND2X2M U46 ( .A(n27), .B(n118), .Y(n7) );
  OAI2BB1X2M U47 ( .A0N(N118), .A1N(n31), .B0(n32), .Y(ALU_OUT_COMB[9]) );
  OAI2BB1X2M U48 ( .A0N(n3), .A1N(n10), .B0(n101), .Y(n47) );
  BUFX2M U49 ( .A(n46), .Y(n23) );
  NOR2BX4M U50 ( .AN(n114), .B(n154), .Y(n31) );
  AND2X2M U51 ( .A(n106), .B(n7), .Y(n8) );
  INVX2M U52 ( .A(n93), .Y(n114) );
  NAND2X2M U53 ( .A(EN), .B(n153), .Y(n32) );
  INVX2M U54 ( .A(ALU_FUN[0]), .Y(n118) );
  AOI31X2M U55 ( .A0(N158), .A1(ALU_FUN[3]), .A2(n89), .B0(n90), .Y(n88) );
  NOR3X2M U56 ( .A(n118), .B(ALU_FUN[2]), .C(n117), .Y(n89) );
  INVX2M U57 ( .A(ALU_FUN[1]), .Y(n117) );
  AND2X2M U58 ( .A(ALU_FUN[2]), .B(n117), .Y(n9) );
  AOI31X2M U59 ( .A0(N157), .A1(ALU_FUN[3]), .A2(n104), .B0(n90), .Y(n103) );
  NOR3X2M U60 ( .A(n117), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n104) );
  INVX2M U61 ( .A(ALU_FUN[3]), .Y(n27) );
  AND2X2M U62 ( .A(ALU_FUN[0]), .B(n27), .Y(n10) );
  INVX2M U63 ( .A(n92), .Y(n153) );
  AOI211X2M U64 ( .A0(N108), .A1(n115), .B0(n14), .C0(n47), .Y(n92) );
  AOI21X2M U65 ( .A0(n33), .A1(n34), .B0(n154), .Y(ALU_OUT_COMB[8]) );
  AOI21X2M U66 ( .A0(N99), .A1(n8), .B0(n153), .Y(n33) );
  AOI2BB2XLM U67 ( .B0(N117), .B1(n114), .A0N(n146), .A1N(n36), .Y(n34) );
  AND4X2M U68 ( .A(N159), .B(n9), .C(ALU_FUN[3]), .D(n118), .Y(n90) );
  AND3X2M U69 ( .A(n106), .B(n118), .C(ALU_FUN[3]), .Y(n46) );
  NAND3X2M U70 ( .A(n3), .B(n118), .C(ALU_FUN[3]), .Y(n36) );
  NOR2X2M U71 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n106) );
  NAND3X2M U72 ( .A(n106), .B(ALU_FUN[0]), .C(ALU_FUN[3]), .Y(n101) );
  INVX2M U73 ( .A(ALU_FUN[2]), .Y(n28) );
  AO22X1M U74 ( .A0(N96), .A1(n8), .B0(n158), .B1(n14), .Y(n63) );
  AO22X1M U75 ( .A0(N97), .A1(n8), .B0(n145), .B1(n14), .Y(n70) );
  INVX2M U76 ( .A(EN), .Y(n154) );
  INVX4M U77 ( .A(n26), .Y(n24) );
  INVX2M U78 ( .A(n26), .Y(n25) );
  AOI22X1M U79 ( .A0(N100), .A1(n115), .B0(N91), .B1(n8), .Y(n111) );
  AOI2B1X1M U80 ( .A1N(n93), .A0(N109), .B0(n91), .Y(n110) );
  MX2X2M U81 ( .A(n95), .B(n99), .S0(n16), .Y(n35) );
  AOI22X1M U82 ( .A0(N92), .A1(n8), .B0(N110), .B1(n114), .Y(n37) );
  AOI22X1M U83 ( .A0(N102), .A1(n115), .B0(n17), .B1(n13), .Y(n41) );
  AOI211X2M U84 ( .A0(N111), .A1(n114), .B0(n39), .C0(n78), .Y(n40) );
  AOI22X1M U85 ( .A0(N103), .A1(n115), .B0(n18), .B1(n13), .Y(n51) );
  AOI211X2M U86 ( .A0(N112), .A1(n114), .B0(n49), .C0(n72), .Y(n50) );
  AOI22XLM U87 ( .A0(n19), .A1(n12), .B0(N128), .B1(n11), .Y(n52) );
  AOI221XLM U88 ( .A0(n23), .A1(n145), .B0(n21), .B1(n48), .C0(n13), .Y(n55)
         );
  AOI221XLM U89 ( .A0(n21), .A1(n46), .B0(n47), .B1(n145), .C0(n14), .Y(n56)
         );
  AOI221XLM U90 ( .A0(n23), .A1(n146), .B0(n22), .B1(n48), .C0(n13), .Y(n44)
         );
  AOI221XLM U91 ( .A0(n23), .A1(n22), .B0(n47), .B1(n146), .C0(n14), .Y(n45)
         );
  INVX2M U92 ( .A(n21), .Y(n145) );
  AOI221XLM U93 ( .A0(n46), .A1(n116), .B0(n16), .B1(n48), .C0(n13), .Y(n86)
         );
  AOI221XLM U94 ( .A0(n16), .A1(n23), .B0(n47), .B1(n116), .C0(n14), .Y(n87)
         );
  OAI222X1M U95 ( .A0(n61), .A1(n156), .B0(B[5]), .B1(n62), .C0(n36), .C1(n159), .Y(n60) );
  INVX2M U96 ( .A(B[5]), .Y(n156) );
  AOI221XLM U97 ( .A0(n20), .A1(n46), .B0(n47), .B1(n158), .C0(n14), .Y(n62)
         );
  AOI221XLM U98 ( .A0(n23), .A1(n158), .B0(n20), .B1(n48), .C0(n13), .Y(n61)
         );
  INVX2M U99 ( .A(n16), .Y(n116) );
  AOI22X1M U100 ( .A0(N104), .A1(n115), .B0(n19), .B1(n13), .Y(n58) );
  AOI211X2M U101 ( .A0(N113), .A1(n114), .B0(n53), .C0(n66), .Y(n57) );
  AOI22X1M U102 ( .A0(N105), .A1(n115), .B0(n20), .B1(n13), .Y(n65) );
  AOI211X2M U103 ( .A0(N114), .A1(n114), .B0(n63), .C0(n60), .Y(n64) );
  AOI22X1M U104 ( .A0(n22), .A1(n13), .B0(n146), .B1(n14), .Y(n81) );
  AOI221XLM U105 ( .A0(N98), .A1(n8), .B0(N116), .B1(n114), .C0(n43), .Y(n77)
         );
  AOI22XLM U106 ( .A0(n22), .A1(n12), .B0(N131), .B1(n11), .Y(n76) );
  AOI22X1M U107 ( .A0(N106), .A1(n115), .B0(n21), .B1(n13), .Y(n75) );
  AOI211X2M U108 ( .A0(N115), .A1(n114), .B0(n70), .C0(n54), .Y(n71) );
  INVX2M U109 ( .A(B[0]), .Y(n147) );
  MX2X2M U110 ( .A(n98), .B(n97), .S0(B[0]), .Y(n100) );
  INVX2M U111 ( .A(n48), .Y(n97) );
  MX2X2M U112 ( .A(n14), .B(n13), .S0(B[0]), .Y(n91) );
  AO22X1M U113 ( .A0(N93), .A1(n8), .B0(n161), .B1(n14), .Y(n39) );
  AO22X1M U114 ( .A0(N94), .A1(n8), .B0(n160), .B1(n14), .Y(n49) );
  AO22X1M U115 ( .A0(N95), .A1(n8), .B0(n159), .B1(n14), .Y(n53) );
  INVX2M U116 ( .A(n22), .Y(n146) );
  INVX2M U117 ( .A(n17), .Y(n161) );
  INVX2M U118 ( .A(n18), .Y(n160) );
  INVX2M U119 ( .A(n19), .Y(n159) );
  INVX2M U120 ( .A(n20), .Y(n158) );
  INVX2M U121 ( .A(RST), .Y(n26) );
  AOI211X2M U122 ( .A0(n17), .A1(n12), .B0(n84), .C0(n85), .Y(n83) );
  OAI2B2X1M U123 ( .A1N(B[1]), .A0(n86), .B0(n36), .B1(n162), .Y(n85) );
  BUFX4M U124 ( .A(A[4]), .Y(n19) );
  BUFX4M U125 ( .A(A[2]), .Y(n17) );
  INVX2M U126 ( .A(n130), .Y(n150) );
  INVX2M U127 ( .A(n119), .Y(n148) );
  AOI221XLM U128 ( .A0(n17), .A1(n46), .B0(n47), .B1(n161), .C0(n14), .Y(n80)
         );
  AOI221XLM U129 ( .A0(n23), .A1(n161), .B0(n17), .B1(n48), .C0(n13), .Y(n79)
         );
  AOI221XLM U130 ( .A0(n18), .A1(n46), .B0(n47), .B1(n160), .C0(n14), .Y(n74)
         );
  AOI221XLM U131 ( .A0(n23), .A1(n160), .B0(n18), .B1(n48), .C0(n13), .Y(n73)
         );
  AOI221XLM U132 ( .A0(n19), .A1(n46), .B0(n47), .B1(n159), .C0(n14), .Y(n68)
         );
  AOI221XLM U133 ( .A0(n23), .A1(n159), .B0(n19), .B1(n48), .C0(n13), .Y(n67)
         );
  MXI2X1M U134 ( .A(n105), .B(n102), .S0(A[0]), .Y(n108) );
  MX2X2M U135 ( .A(n94), .B(n98), .S0(B[0]), .Y(n96) );
  INVX2M U136 ( .A(A[0]), .Y(n162) );
  OAI222XLM U137 ( .A0(n55), .A1(n152), .B0(n15), .B1(n56), .C0(n36), .C1(n158), .Y(n54) );
  AOI32XLM U138 ( .A0(n125), .A1(n135), .A2(n138), .B0(n15), .B1(n145), .Y(
        n126) );
  INVXLM U139 ( .A(n15), .Y(n152) );
  XNOR2XLM U140 ( .A(n21), .B(n15), .Y(n138) );
  OAI222XLM U141 ( .A0(n44), .A1(n155), .B0(B[7]), .B1(n45), .C0(n36), .C1(
        n145), .Y(n43) );
  INVXLM U142 ( .A(B[7]), .Y(n155) );
  NOR2XLM U143 ( .A(n146), .B(B[7]), .Y(n141) );
  NAND2XLM U144 ( .A(B[7]), .B(n146), .Y(n142) );
  AOI22XLM U145 ( .A0(n21), .A1(n12), .B0(N130), .B1(n11), .Y(n69) );
  AOI22XLM U146 ( .A0(N132), .A1(n11), .B0(N107), .B1(n115), .Y(n82) );
  AOI31X4M U147 ( .A0(n111), .A1(n110), .A2(n109), .B0(n154), .Y(
        ALU_OUT_COMB[0]) );
  NAND3X2M U148 ( .A(n7), .B(ALU_FUN[1]), .C(n28), .Y(n93) );
  NAND2X2M U149 ( .A(n7), .B(n3), .Y(n95) );
  NAND2X2M U150 ( .A(n9), .B(n10), .Y(n99) );
  NAND2X2M U151 ( .A(n10), .B(n106), .Y(n38) );
  AOI31X2M U152 ( .A0(n37), .A1(n35), .A2(n30), .B0(n154), .Y(ALU_OUT_COMB[1])
         );
  AOI31X2M U153 ( .A0(n42), .A1(n41), .A2(n40), .B0(n154), .Y(ALU_OUT_COMB[2])
         );
  AOI31X2M U154 ( .A0(n52), .A1(n51), .A2(n50), .B0(n154), .Y(ALU_OUT_COMB[3])
         );
  AOI31X2M U155 ( .A0(n59), .A1(n58), .A2(n57), .B0(n154), .Y(ALU_OUT_COMB[4])
         );
  AOI31X2M U156 ( .A0(n69), .A1(n65), .A2(n64), .B0(n154), .Y(ALU_OUT_COMB[5])
         );
  AOI31X2M U157 ( .A0(n76), .A1(n75), .A2(n71), .B0(n154), .Y(ALU_OUT_COMB[6])
         );
  AOI31X2M U158 ( .A0(n82), .A1(n81), .A2(n77), .B0(n154), .Y(ALU_OUT_COMB[7])
         );
  NAND2X2M U159 ( .A(n96), .B(n95), .Y(n105) );
  NAND2X2M U160 ( .A(n100), .B(n99), .Y(n102) );
  NAND2BX1M U161 ( .AN(B[4]), .B(n19), .Y(n134) );
  NAND2BX1M U162 ( .AN(n19), .B(B[4]), .Y(n123) );
  CLKNAND2X2M U163 ( .A(n134), .B(n123), .Y(n136) );
  NOR2X1M U164 ( .A(n151), .B(n18), .Y(n131) );
  NOR2X1M U165 ( .A(n149), .B(n17), .Y(n122) );
  NOR2X1M U166 ( .A(n147), .B(A[0]), .Y(n119) );
  CLKNAND2X2M U167 ( .A(n17), .B(n149), .Y(n133) );
  NAND2BX1M U168 ( .AN(n122), .B(n133), .Y(n128) );
  AOI211X1M U169 ( .A0(n16), .A1(n148), .B0(n128), .C0(n120), .Y(n121) );
  CLKNAND2X2M U170 ( .A(n18), .B(n151), .Y(n132) );
  OAI31X1M U171 ( .A0(n131), .A1(n122), .A2(n121), .B0(n132), .Y(n124) );
  OAI211X1M U172 ( .A0(n136), .A1(n124), .B0(n123), .C0(n139), .Y(n125) );
  NAND2BX1M U173 ( .AN(B[5]), .B(n20), .Y(n135) );
  OAI21X1M U174 ( .A0(n141), .A1(n126), .B0(n142), .Y(N159) );
  CLKNAND2X2M U175 ( .A(A[0]), .B(n147), .Y(n129) );
  OA21X1M U176 ( .A0(n129), .A1(n116), .B0(B[1]), .Y(n127) );
  AOI211X1M U177 ( .A0(n129), .A1(n116), .B0(n128), .C0(n127), .Y(n130) );
  AOI31X1M U178 ( .A0(n150), .A1(n133), .A2(n132), .B0(n131), .Y(n137) );
  OAI2B11X1M U179 ( .A1N(n137), .A0(n136), .B0(n135), .C0(n134), .Y(n140) );
  AOI32X1M U180 ( .A0(n140), .A1(n139), .A2(n138), .B0(n21), .B1(n152), .Y(
        n143) );
  AOI2B1X1M U181 ( .A1N(n143), .A0(n142), .B0(n141), .Y(n144) );
  CLKINVX1M U182 ( .A(n144), .Y(N158) );
  NOR2X1M U183 ( .A(N159), .B(N158), .Y(N157) );
endmodule


module data_sampling_scale_size6_count_num6 ( RX_IN, prescale, CLK, RST, 
        dat_samp_en, edge_cnt, sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input RX_IN, CLK, RST, dat_samp_en;
  output sampled_bit;
  wire   N25, n19, n20, n21, \add_17/carry[4] , \add_17/carry[3] ,
         \add_17/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;
  wire   [4:0] half_edge;
  wire   [4:0] half_edge_n1;
  wire   [4:0] half_edge_p1;
  wire   [2:0] store;

  DFFRQX2M \store_reg[2]  ( .D(n21), .CK(CLK), .RN(RST), .Q(store[2]) );
  DFFRQX2M \store_reg[1]  ( .D(n20), .CK(CLK), .RN(RST), .Q(store[1]) );
  DFFRQX2M \store_reg[0]  ( .D(n19), .CK(CLK), .RN(RST), .Q(store[0]) );
  DFFRQX2M sampled_bit_reg ( .D(N25), .CK(CLK), .RN(RST), .Q(sampled_bit) );
  AO21X2M U3 ( .A0(prescale[1]), .A1(prescale[2]), .B0(n1), .Y(half_edge[1])
         );
  NAND2XLM U4 ( .A(dat_samp_en), .B(RX_IN), .Y(n10) );
  NAND2XLM U5 ( .A(store[2]), .B(dat_samp_en), .Y(n9) );
  XOR2XLM U6 ( .A(half_edge[1]), .B(edge_cnt[1]), .Y(n31) );
  XNOR2X2M U7 ( .A(prescale[4]), .B(n2), .Y(half_edge[3]) );
  INVX2M U8 ( .A(half_edge[2]), .Y(n8) );
  ADDHX1M U9 ( .A(half_edge[2]), .B(\add_17/carry[2] ), .CO(\add_17/carry[3] ), 
        .S(half_edge_p1[2]) );
  ADDHX1M U10 ( .A(half_edge[3]), .B(\add_17/carry[3] ), .CO(\add_17/carry[4] ), .S(half_edge_p1[3]) );
  ADDHX1M U11 ( .A(half_edge[1]), .B(half_edge[0]), .CO(\add_17/carry[2] ), 
        .S(half_edge_p1[1]) );
  INVX2M U12 ( .A(prescale[3]), .Y(n4) );
  CLKINVX1M U13 ( .A(prescale[1]), .Y(half_edge[0]) );
  NOR2X1M U14 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  CLKNAND2X2M U15 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U16 ( .A0(n1), .A1(n4), .B0(n2), .Y(half_edge[2]) );
  NOR2X1M U17 ( .A(prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U18 ( .A(prescale[5]), .B(n3), .Y(half_edge[4]) );
  NOR2X1M U19 ( .A(half_edge[1]), .B(half_edge[0]), .Y(n5) );
  AO21XLM U20 ( .A0(half_edge[0]), .A1(half_edge[1]), .B0(n5), .Y(
        half_edge_n1[1]) );
  CLKNAND2X2M U21 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U22 ( .A0(n5), .A1(n8), .B0(n6), .Y(half_edge_n1[2]) );
  XNOR2X1M U23 ( .A(half_edge[3]), .B(n6), .Y(half_edge_n1[3]) );
  NOR2X1M U24 ( .A(half_edge[3]), .B(n6), .Y(n7) );
  CLKXOR2X2M U25 ( .A(half_edge[4]), .B(n7), .Y(half_edge_n1[4]) );
  CLKXOR2X2M U26 ( .A(\add_17/carry[4] ), .B(half_edge[4]), .Y(half_edge_p1[4]) );
  MXI2X1M U27 ( .A(n9), .B(n10), .S0(n11), .Y(n21) );
  NOR4X1M U28 ( .A(n12), .B(n13), .C(n14), .D(n15), .Y(n11) );
  CLKXOR2X2M U29 ( .A(prescale[1]), .B(edge_cnt[0]), .Y(n15) );
  OR2X1M U30 ( .A(edge_cnt[5]), .B(n16), .Y(n13) );
  NAND4X1M U31 ( .A(n17), .B(n18), .C(n22), .D(n23), .Y(n12) );
  XNOR2X1M U32 ( .A(edge_cnt[1]), .B(half_edge_p1[1]), .Y(n23) );
  XNOR2X1M U33 ( .A(edge_cnt[2]), .B(half_edge_p1[2]), .Y(n22) );
  XNOR2X1M U34 ( .A(edge_cnt[3]), .B(half_edge_p1[3]), .Y(n18) );
  CLKXOR2X2M U35 ( .A(n24), .B(half_edge_p1[4]), .Y(n17) );
  MXI2X1M U36 ( .A(n25), .B(n10), .S0(n14), .Y(n20) );
  AND4X1M U37 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n14) );
  NOR4X1M U38 ( .A(edge_cnt[5]), .B(n16), .C(n30), .D(n31), .Y(n29) );
  CLKXOR2X2M U39 ( .A(half_edge[0]), .B(edge_cnt[0]), .Y(n30) );
  XNOR2X1M U40 ( .A(edge_cnt[3]), .B(half_edge[3]), .Y(n28) );
  CLKXOR2X2M U41 ( .A(n24), .B(half_edge[4]), .Y(n27) );
  CLKINVX1M U42 ( .A(edge_cnt[4]), .Y(n24) );
  XNOR2X1M U43 ( .A(edge_cnt[2]), .B(half_edge[2]), .Y(n26) );
  CLKNAND2X2M U44 ( .A(store[1]), .B(dat_samp_en), .Y(n25) );
  MXI2X1M U45 ( .A(n32), .B(n10), .S0(n16), .Y(n19) );
  AND4X1M U46 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n16) );
  NOR3X1M U47 ( .A(n37), .B(edge_cnt[5]), .C(n38), .Y(n36) );
  CLKXOR2X2M U48 ( .A(prescale[1]), .B(edge_cnt[0]), .Y(n38) );
  CLKXOR2X2M U49 ( .A(half_edge_n1[4]), .B(edge_cnt[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(edge_cnt[2]), .B(half_edge_n1[2]), .Y(n35) );
  XNOR2X1M U51 ( .A(edge_cnt[3]), .B(half_edge_n1[3]), .Y(n34) );
  XNOR2X1M U52 ( .A(edge_cnt[1]), .B(half_edge_n1[1]), .Y(n33) );
  CLKNAND2X2M U53 ( .A(store[0]), .B(dat_samp_en), .Y(n32) );
  AOI21BX1M U54 ( .A0(n39), .A1(n40), .B0N(dat_samp_en), .Y(N25) );
  OAI21X1M U55 ( .A0(store[0]), .A1(store[1]), .B0(store[2]), .Y(n40) );
  CLKNAND2X2M U56 ( .A(store[0]), .B(store[1]), .Y(n39) );
endmodule


module stop_check ( sampl_bit_stp, stop_en, CLK, RST, stp_error );
  input sampl_bit_stp, stop_en, CLK, RST;
  output stp_error;
  wire   N1;

  DFFRQX2M stp_error_reg ( .D(N1), .CK(CLK), .RN(RST), .Q(stp_error) );
  NOR2BX2M U3 ( .AN(stop_en), .B(sampl_bit_stp), .Y(N1) );
endmodule


module start_check ( sampl_bit_strt, start_en, strt_glitch );
  input sampl_bit_strt, start_en;
  output strt_glitch;


  AND2X2M U1 ( .A(start_en), .B(sampl_bit_strt), .Y(strt_glitch) );
endmodule


module par_check_DATA_WIDTH8_count_num6_scale_size6 ( sampl_bit_par, PAR_TYP, 
        par_chk_en, CLK, RST, prescale, bit_cnt, edge_cnt, P_DATA_PAR, par_err
 );
  input [5:0] prescale;
  input [3:0] bit_cnt;
  input [5:0] edge_cnt;
  input [7:0] P_DATA_PAR;
  input sampl_bit_par, PAR_TYP, par_chk_en, CLK, RST;
  output par_err;
  wire   par_bit, N15, n3, n5, n6, n7, n8, n9, n10, n11, n12, n13, n1, n2, n4,
         n14, n15, n16, n17, n18, n19, n20;

  DFFRQX2M par_bit_reg ( .D(n12), .CK(CLK), .RN(RST), .Q(par_bit) );
  DFFRQX2M par_err_reg ( .D(n13), .CK(CLK), .RN(RST), .Q(par_err) );
  INVX2M U3 ( .A(par_chk_en), .Y(n20) );
  OAI2BB2X1M U4 ( .B0(n9), .B1(n20), .A0N(n10), .A1N(par_err), .Y(n13) );
  XNOR2X2M U5 ( .A(par_bit), .B(sampl_bit_par), .Y(n9) );
  AOI31X2M U6 ( .A0(bit_cnt[3]), .A1(bit_cnt[1]), .A2(n11), .B0(par_chk_en), 
        .Y(n10) );
  NOR3BX2M U7 ( .AN(N15), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n11) );
  OAI2BB2X1M U8 ( .B0(n3), .B1(n20), .A0N(n20), .A1N(par_bit), .Y(n12) );
  XOR3XLM U9 ( .A(n5), .B(PAR_TYP), .C(n6), .Y(n3) );
  XOR3XLM U10 ( .A(P_DATA_PAR[1]), .B(P_DATA_PAR[0]), .C(n7), .Y(n6) );
  XOR3XLM U11 ( .A(P_DATA_PAR[5]), .B(P_DATA_PAR[4]), .C(n8), .Y(n5) );
  CLKXOR2X2M U12 ( .A(P_DATA_PAR[7]), .B(P_DATA_PAR[6]), .Y(n8) );
  XNOR2X2M U13 ( .A(P_DATA_PAR[3]), .B(P_DATA_PAR[2]), .Y(n7) );
  NOR2BX1M U14 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n1) );
  OAI2B2X1M U15 ( .A1N(prescale[1]), .A0(n1), .B0(edge_cnt[1]), .B1(n1), .Y(
        n15) );
  NOR2BX1M U16 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n2) );
  OAI2B2X1M U17 ( .A1N(edge_cnt[1]), .A0(n2), .B0(prescale[1]), .B1(n2), .Y(
        n14) );
  XNOR2X1M U18 ( .A(prescale[5]), .B(edge_cnt[5]), .Y(n4) );
  NAND3X1M U19 ( .A(n15), .B(n14), .C(n4), .Y(n19) );
  CLKXOR2X2M U20 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n18) );
  CLKXOR2X2M U21 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n17) );
  CLKXOR2X2M U22 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n16) );
  NOR4X1M U23 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(N15) );
endmodule


module deserializer_DATA_WIDTH8_count_num6_scale_size6 ( sampled_bit, deser_en, 
        prescale, edge_cnt, CLK, RST, P_DATA );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  output [7:0] P_DATA;
  input sampled_bit, deser_en, CLK, RST;
  wire   N1, N2, N3, N4, N5, N6, N7, N8, n1, n10, n11, n12, n13, n14, n15, n16,
         n17, n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30;

  DFFRQX2M \P_DATA_reg[0]  ( .D(n10), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n11), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n13), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n17), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n12), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  INVX2M U3 ( .A(n1), .Y(n23) );
  OAI22X1M U4 ( .A0(n23), .A1(n30), .B0(n1), .B1(n29), .Y(n11) );
  OAI22X1M U5 ( .A0(n23), .A1(n29), .B0(n1), .B1(n28), .Y(n12) );
  OAI22X1M U6 ( .A0(n23), .A1(n28), .B0(n1), .B1(n27), .Y(n13) );
  OAI22X1M U7 ( .A0(n23), .A1(n27), .B0(n1), .B1(n26), .Y(n14) );
  OAI22X1M U8 ( .A0(n23), .A1(n26), .B0(n1), .B1(n25), .Y(n15) );
  OAI22X1M U9 ( .A0(n23), .A1(n25), .B0(n1), .B1(n24), .Y(n16) );
  OAI2BB2X1M U10 ( .B0(n23), .B1(n24), .A0N(sampled_bit), .A1N(n23), .Y(n17)
         );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n30), .A0N(P_DATA[0]), .A1N(n1), .Y(n10) );
  NAND2X2M U12 ( .A(deser_en), .B(N8), .Y(n1) );
  INVX2M U13 ( .A(P_DATA[6]), .Y(n25) );
  INVX2M U14 ( .A(P_DATA[2]), .Y(n29) );
  INVX2M U15 ( .A(P_DATA[7]), .Y(n24) );
  INVX2M U16 ( .A(P_DATA[3]), .Y(n28) );
  INVX2M U17 ( .A(P_DATA[1]), .Y(n30) );
  INVX2M U18 ( .A(P_DATA[5]), .Y(n26) );
  INVX2M U19 ( .A(P_DATA[4]), .Y(n27) );
  OR2X2M U20 ( .A(prescale[1]), .B(prescale[0]), .Y(n2) );
  CLKINVX1M U21 ( .A(prescale[0]), .Y(N1) );
  OAI2BB1X1M U22 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n2), .Y(N2) );
  OR2X1M U23 ( .A(n2), .B(prescale[2]), .Y(n3) );
  OAI2BB1X1M U24 ( .A0N(n2), .A1N(prescale[2]), .B0(n3), .Y(N3) );
  OR2X1M U25 ( .A(n3), .B(prescale[3]), .Y(n4) );
  OAI2BB1X1M U26 ( .A0N(n3), .A1N(prescale[3]), .B0(n4), .Y(N4) );
  OR2X1M U27 ( .A(n4), .B(prescale[4]), .Y(n5) );
  OAI2BB1X1M U28 ( .A0N(n4), .A1N(prescale[4]), .B0(n5), .Y(N5) );
  NOR2X1M U29 ( .A(n5), .B(prescale[5]), .Y(N7) );
  AO21XLM U30 ( .A0(n5), .A1(prescale[5]), .B0(N7), .Y(N6) );
  NOR2BX1M U31 ( .AN(N1), .B(edge_cnt[0]), .Y(n6) );
  OAI2B2X1M U32 ( .A1N(edge_cnt[1]), .A0(n6), .B0(N2), .B1(n6), .Y(n18) );
  XNOR2X1M U33 ( .A(N6), .B(edge_cnt[5]), .Y(n9) );
  NOR2BX1M U34 ( .AN(edge_cnt[0]), .B(N1), .Y(n7) );
  OAI2B2X1M U35 ( .A1N(N2), .A0(n7), .B0(edge_cnt[1]), .B1(n7), .Y(n8) );
  NAND4BX1M U36 ( .AN(N7), .B(n18), .C(n9), .D(n8), .Y(n22) );
  CLKXOR2X2M U37 ( .A(N5), .B(edge_cnt[4]), .Y(n21) );
  CLKXOR2X2M U38 ( .A(N3), .B(edge_cnt[2]), .Y(n20) );
  CLKXOR2X2M U39 ( .A(N4), .B(edge_cnt[3]), .Y(n19) );
  NOR4X1M U40 ( .A(n22), .B(n21), .C(n20), .D(n19), .Y(N8) );
endmodule


module edge_bit_counter_count_num6_scale_size6 ( RST, CLK, prescale, enable, 
        PAR_EN, bit_cnt, edge_cnt );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edge_cnt;
  input RST, CLK, enable, PAR_EN;
  wire   edge_high, N13, N14, N15, N16, N17, N18, N40, N41, N42, N43, N44, N45,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, \add_25/carry[5] , \add_25/carry[4] , \add_25/carry[3] ,
         \add_25/carry[2] , n1, n2, n3, n4, n5, n6, n7, n24, n25, n26, n27,
         n28, n29, n30, n31, n32;

  DFFRQX2M \bit_cnt_reg[1]  ( .D(n21), .CK(CLK), .RN(n1), .Q(bit_cnt[1]) );
  DFFRQX2M \bit_cnt_reg[3]  ( .D(n23), .CK(CLK), .RN(n1), .Q(bit_cnt[3]) );
  DFFRQX2M \bit_cnt_reg[2]  ( .D(n20), .CK(CLK), .RN(n1), .Q(bit_cnt[2]) );
  DFFRQX2M \bit_cnt_reg[0]  ( .D(n22), .CK(CLK), .RN(n1), .Q(bit_cnt[0]) );
  DFFRQX2M \edge_cnt_reg[5]  ( .D(N45), .CK(CLK), .RN(n1), .Q(edge_cnt[5]) );
  DFFRQX2M \edge_cnt_reg[4]  ( .D(N44), .CK(CLK), .RN(n1), .Q(edge_cnt[4]) );
  DFFRQX2M \edge_cnt_reg[3]  ( .D(N43), .CK(CLK), .RN(n1), .Q(edge_cnt[3]) );
  DFFRQX2M \edge_cnt_reg[2]  ( .D(N42), .CK(CLK), .RN(n1), .Q(edge_cnt[2]) );
  DFFRQX2M \edge_cnt_reg[1]  ( .D(N41), .CK(CLK), .RN(n1), .Q(edge_cnt[1]) );
  DFFRX2M \edge_cnt_reg[0]  ( .D(N40), .CK(CLK), .RN(n1), .Q(edge_cnt[0]), 
        .QN(N13) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
  INVX2M U5 ( .A(n10), .Y(n28) );
  NAND2XLM U6 ( .A(enable), .B(n29), .Y(n10) );
  OAI22X1M U7 ( .A0(n32), .A1(n10), .B0(n11), .B1(n12), .Y(n21) );
  NOR2BX2M U8 ( .AN(n13), .B(n14), .Y(n11) );
  AND2X1M U9 ( .A(enable), .B(n29), .Y(n17) );
  AND2X2M U10 ( .A(N14), .B(n17), .Y(N41) );
  AND2X2M U11 ( .A(N15), .B(n17), .Y(N42) );
  AND2X2M U12 ( .A(N16), .B(n17), .Y(N43) );
  AND2X2M U13 ( .A(N17), .B(n17), .Y(N44) );
  INVX2M U14 ( .A(edge_high), .Y(n29) );
  NAND2X1M U15 ( .A(n18), .B(enable), .Y(n12) );
  AOI31X2M U16 ( .A0(n19), .A1(n30), .A2(bit_cnt[3]), .B0(n29), .Y(n18) );
  INVX2M U17 ( .A(bit_cnt[2]), .Y(n30) );
  OAI2BB2X1M U18 ( .B0(PAR_EN), .B1(n13), .A0N(n14), .A1N(PAR_EN), .Y(n19) );
  OAI2BB2X1M U19 ( .B0(bit_cnt[0]), .B1(n12), .A0N(bit_cnt[0]), .A1N(n28), .Y(
        n22) );
  OAI2BB1X2M U20 ( .A0N(N13), .A1N(n17), .B0(n12), .Y(N40) );
  OAI32X1M U21 ( .A0(n15), .A1(bit_cnt[3]), .A2(n12), .B0(n16), .B1(n31), .Y(
        n23) );
  INVX2M U22 ( .A(bit_cnt[3]), .Y(n31) );
  AOI2B1X1M U23 ( .A1N(n12), .A0(n15), .B0(n28), .Y(n16) );
  NAND3X2M U24 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .Y(n15) );
  NOR2BXLM U25 ( .AN(enable), .B(n8), .Y(n20) );
  CLKXOR2X2M U26 ( .A(n9), .B(bit_cnt[2]), .Y(n8) );
  NAND3X1M U27 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .C(edge_high), .Y(n9) );
  AND2X2M U28 ( .A(N18), .B(n17), .Y(N45) );
  NOR2X2M U29 ( .A(n32), .B(bit_cnt[0]), .Y(n14) );
  NAND2X2M U30 ( .A(bit_cnt[0]), .B(n32), .Y(n13) );
  INVX2M U31 ( .A(bit_cnt[1]), .Y(n32) );
  ADDHX1M U32 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_25/carry[2] ), .S(
        N14) );
  ADDHX1M U33 ( .A(edge_cnt[2]), .B(\add_25/carry[2] ), .CO(\add_25/carry[3] ), 
        .S(N15) );
  ADDHX1M U34 ( .A(edge_cnt[3]), .B(\add_25/carry[3] ), .CO(\add_25/carry[4] ), 
        .S(N16) );
  ADDHX1M U35 ( .A(edge_cnt[4]), .B(\add_25/carry[4] ), .CO(\add_25/carry[5] ), 
        .S(N17) );
  CLKXOR2X2M U36 ( .A(\add_25/carry[5] ), .B(edge_cnt[5]), .Y(N18) );
  NOR2BX1M U37 ( .AN(edge_cnt[0]), .B(prescale[0]), .Y(n3) );
  OAI2B2X1M U38 ( .A1N(prescale[1]), .A0(n3), .B0(edge_cnt[1]), .B1(n3), .Y(n7) );
  NOR2BX1M U39 ( .AN(prescale[0]), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U40 ( .A1N(edge_cnt[1]), .A0(n4), .B0(prescale[1]), .B1(n4), .Y(n6) );
  XNOR2X1M U41 ( .A(prescale[5]), .B(edge_cnt[5]), .Y(n5) );
  NAND3X1M U42 ( .A(n7), .B(n6), .C(n5), .Y(n27) );
  CLKXOR2X2M U43 ( .A(prescale[4]), .B(edge_cnt[4]), .Y(n26) );
  CLKXOR2X2M U44 ( .A(prescale[2]), .B(edge_cnt[2]), .Y(n25) );
  CLKXOR2X2M U45 ( .A(prescale[3]), .B(edge_cnt[3]), .Y(n24) );
  NOR4X1M U46 ( .A(n27), .B(n26), .C(n25), .D(n24), .Y(edge_high) );
endmodule


module FSM_RX_count_num6_scale_size6 ( RX_IN, prescale, RST, CLK, PAR_EN, 
        bit_cnt_fsm, edge_cnt_fsm, par_err_fsm, strt_glitch_fsm, stp_err_fsm, 
        count_en_fsm, data_en_fsm, par_en_fsm, strt_en_fsm, stp_en_fsm, 
        deser_en_fsm, data_valid );
  input [5:0] prescale;
  input [3:0] bit_cnt_fsm;
  input [5:0] edge_cnt_fsm;
  input RX_IN, RST, CLK, PAR_EN, par_err_fsm, strt_glitch_fsm, stp_err_fsm;
  output count_en_fsm, data_en_fsm, par_en_fsm, strt_en_fsm, stp_en_fsm,
         deser_en_fsm, data_valid;
  wire   data_valid_c, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38;
  wire   [5:0] er_chk_edge;
  wire   [2:0] current;
  wire   [2:0] next;

  DFFRQX2M \current_reg[2]  ( .D(next[2]), .CK(CLK), .RN(RST), .Q(current[2])
         );
  DFFRQX2M \current_reg[1]  ( .D(next[1]), .CK(CLK), .RN(RST), .Q(current[1])
         );
  DFFRQX2M data_valid_reg ( .D(data_valid_c), .CK(CLK), .RN(RST), .Q(
        data_valid) );
  DFFRX1M \current_reg[0]  ( .D(next[0]), .CK(CLK), .RN(RST), .Q(current[0]), 
        .QN(n30) );
  NAND3X2M U3 ( .A(n6), .B(n12), .C(n14), .Y(data_en_fsm) );
  OR2X2M U4 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  INVX2M U5 ( .A(prescale[3]), .Y(n5) );
  CLKINVX1M U6 ( .A(prescale[0]), .Y(er_chk_edge[0]) );
  OAI2BB1X1M U7 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(
        er_chk_edge[1]) );
  NOR2X1M U8 ( .A(n1), .B(prescale[2]), .Y(n2) );
  AO21XLM U9 ( .A0(n1), .A1(prescale[2]), .B0(n2), .Y(er_chk_edge[2]) );
  CLKNAND2X2M U10 ( .A(n2), .B(n5), .Y(n3) );
  OAI21X1M U11 ( .A0(n2), .A1(n5), .B0(n3), .Y(er_chk_edge[3]) );
  XNOR2X1M U12 ( .A(prescale[4]), .B(n3), .Y(er_chk_edge[4]) );
  NOR2X1M U13 ( .A(prescale[4]), .B(n3), .Y(n4) );
  CLKXOR2X2M U14 ( .A(prescale[5]), .B(n4), .Y(er_chk_edge[5]) );
  NOR2X1M U15 ( .A(current[0]), .B(n6), .Y(par_en_fsm) );
  OAI21BX1M U16 ( .A0(n7), .A1(n8), .B0N(n9), .Y(next[2]) );
  OAI31X1M U17 ( .A0(n10), .A1(PAR_EN), .A2(n11), .B0(n12), .Y(n9) );
  OAI211X1M U18 ( .A0(n8), .A1(n13), .B0(n7), .C0(n6), .Y(next[1]) );
  NAND2BX1M U19 ( .AN(n14), .B(n15), .Y(n13) );
  OAI221X1M U20 ( .A0(RX_IN), .A1(n16), .B0(n17), .B1(n10), .C0(n18), .Y(
        next[0]) );
  AOI2BB2XLM U21 ( .B0(strt_en_fsm), .B1(n15), .A0N(n12), .A1N(n19), .Y(n18)
         );
  CLKINVX1M U22 ( .A(strt_glitch_fsm), .Y(n15) );
  NOR2X1M U23 ( .A(n14), .B(current[1]), .Y(strt_en_fsm) );
  CLKINVX1M U24 ( .A(deser_en_fsm), .Y(n10) );
  CLKINVX1M U25 ( .A(n11), .Y(n17) );
  NAND3BX1M U26 ( .AN(n8), .B(bit_cnt_fsm[3]), .C(n20), .Y(n11) );
  NOR3X1M U27 ( .A(bit_cnt_fsm[0]), .B(bit_cnt_fsm[2]), .C(bit_cnt_fsm[1]), 
        .Y(n20) );
  NAND4X1M U28 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(n8) );
  NOR3X1M U29 ( .A(n25), .B(n26), .C(n27), .Y(n24) );
  CLKXOR2X2M U30 ( .A(prescale[0]), .B(edge_cnt_fsm[0]), .Y(n27) );
  CLKXOR2X2M U31 ( .A(prescale[2]), .B(edge_cnt_fsm[2]), .Y(n26) );
  CLKXOR2X2M U32 ( .A(prescale[1]), .B(edge_cnt_fsm[1]), .Y(n25) );
  XNOR2X1M U33 ( .A(edge_cnt_fsm[4]), .B(prescale[4]), .Y(n23) );
  XNOR2X1M U34 ( .A(edge_cnt_fsm[5]), .B(prescale[5]), .Y(n22) );
  XNOR2X1M U35 ( .A(edge_cnt_fsm[3]), .B(prescale[3]), .Y(n21) );
  MXI2X1M U36 ( .A(n28), .B(n29), .S0(current[0]), .Y(n16) );
  AND2X1M U37 ( .A(current[1]), .B(current[2]), .Y(n29) );
  NOR2X1M U38 ( .A(current[2]), .B(current[1]), .Y(n28) );
  NOR2X1M U39 ( .A(n6), .B(n30), .Y(deser_en_fsm) );
  NOR4X1M U40 ( .A(stp_err_fsm), .B(par_err_fsm), .C(n19), .D(n12), .Y(
        data_valid_c) );
  NAND4X1M U41 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n19) );
  NOR3X1M U42 ( .A(n35), .B(n36), .C(n37), .Y(n34) );
  CLKXOR2X2M U43 ( .A(er_chk_edge[0]), .B(edge_cnt_fsm[0]), .Y(n37) );
  CLKXOR2X2M U44 ( .A(er_chk_edge[2]), .B(edge_cnt_fsm[2]), .Y(n36) );
  CLKXOR2X2M U45 ( .A(er_chk_edge[1]), .B(edge_cnt_fsm[1]), .Y(n35) );
  XNOR2X1M U46 ( .A(edge_cnt_fsm[4]), .B(er_chk_edge[4]), .Y(n33) );
  XNOR2X1M U47 ( .A(edge_cnt_fsm[5]), .B(er_chk_edge[5]), .Y(n32) );
  XNOR2X1M U48 ( .A(edge_cnt_fsm[3]), .B(er_chk_edge[3]), .Y(n31) );
  OAI21BX1M U49 ( .A0(current[2]), .A1(RX_IN), .B0N(data_en_fsm), .Y(
        count_en_fsm) );
  CLKNAND2X2M U50 ( .A(current[0]), .B(n38), .Y(n14) );
  CLKINVX1M U51 ( .A(stp_en_fsm), .Y(n12) );
  NOR2X1M U52 ( .A(n38), .B(n7), .Y(stp_en_fsm) );
  CLKNAND2X2M U53 ( .A(current[1]), .B(n30), .Y(n7) );
  CLKNAND2X2M U54 ( .A(current[1]), .B(n38), .Y(n6) );
  CLKINVX1M U55 ( .A(current[2]), .Y(n38) );
endmodule


module UART_RX_scale_size6_DATA_WIDTH8 ( RX_IN, CLK, RST, prescale, PAR_EN, 
        PAR_TYP, P_DATA, Parity_error, stop_error, data_valid );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, CLK, RST, PAR_EN, PAR_TYP;
  output Parity_error, stop_error, data_valid;
  wire   dat_samp_en, sampled_bit, stop_en, start_en, strt_glitch, par_chk_en,
         deser_en, enable, n1, n2;
  wire   [5:0] edge_cnt;
  wire   [3:0] bit_cnt;

  data_sampling_scale_size6_count_num6 U0_SAMP ( .RX_IN(RX_IN), .prescale(
        prescale), .CLK(CLK), .RST(n1), .dat_samp_en(dat_samp_en), .edge_cnt(
        edge_cnt), .sampled_bit(sampled_bit) );
  stop_check U0_STOP ( .sampl_bit_stp(sampled_bit), .stop_en(stop_en), .CLK(
        CLK), .RST(n1), .stp_error(stop_error) );
  start_check U0_START ( .sampl_bit_strt(sampled_bit), .start_en(start_en), 
        .strt_glitch(strt_glitch) );
  par_check_DATA_WIDTH8_count_num6_scale_size6 U0_PARITY ( .sampl_bit_par(
        sampled_bit), .PAR_TYP(PAR_TYP), .par_chk_en(par_chk_en), .CLK(CLK), 
        .RST(n1), .prescale(prescale), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), 
        .P_DATA_PAR(P_DATA), .par_err(Parity_error) );
  deserializer_DATA_WIDTH8_count_num6_scale_size6 U0_desrializer ( 
        .sampled_bit(sampled_bit), .deser_en(deser_en), .prescale(prescale), 
        .edge_cnt(edge_cnt), .CLK(CLK), .RST(n1), .P_DATA(P_DATA) );
  edge_bit_counter_count_num6_scale_size6 U0_count ( .RST(n1), .CLK(CLK), 
        .prescale(prescale), .enable(enable), .PAR_EN(PAR_EN), .bit_cnt(
        bit_cnt), .edge_cnt(edge_cnt) );
  FSM_RX_count_num6_scale_size6 U0_FSM ( .RX_IN(RX_IN), .prescale(prescale), 
        .RST(n1), .CLK(CLK), .PAR_EN(PAR_EN), .bit_cnt_fsm(bit_cnt), 
        .edge_cnt_fsm(edge_cnt), .par_err_fsm(Parity_error), .strt_glitch_fsm(
        strt_glitch), .stp_err_fsm(stop_error), .count_en_fsm(enable), 
        .data_en_fsm(dat_samp_en), .par_en_fsm(par_chk_en), .strt_en_fsm(
        start_en), .stp_en_fsm(stop_en), .deser_en_fsm(deser_en), .data_valid(
        data_valid) );
  INVX4M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module MUX_4x1 ( IN0, IN1, IN2, IN3, CLK, RST, SEL, out );
  input [1:0] SEL;
  input IN0, IN1, IN2, IN3, CLK, RST;
  output out;
  wire   mux_out, n2, n3, n1;

  DFFRQX2M out_reg ( .D(mux_out), .CK(CLK), .RN(RST), .Q(out) );
  INVX2M U3 ( .A(SEL[0]), .Y(n1) );
  OAI2B2X1M U4 ( .A1N(SEL[1]), .A0(n2), .B0(SEL[1]), .B1(n3), .Y(mux_out) );
  AOI22X1M U5 ( .A0(IN0), .A1(n1), .B0(SEL[0]), .B1(IN1), .Y(n3) );
  AOI22X1M U6 ( .A0(IN2), .A1(n1), .B0(IN3), .B1(SEL[0]), .Y(n2) );
endmodule


module parity_calc_DATA_WIDTH8 ( CLK, RST, P_DATA_par, PARITY_TYPE, 
        Data_Valid_par, busy, parity_bit );
  input [7:0] P_DATA_par;
  input CLK, RST, PARITY_TYPE, Data_Valid_par, busy;
  output parity_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX1M parity_bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(parity_bit) );
  XOR3XLM U2 ( .A(P_DATA_par[5]), .B(P_DATA_par[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_DATA_par[7]), .B(P_DATA_par[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_DATA_par[3]), .B(P_DATA_par[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(parity_bit), .A1N(n2), .Y(n7) );
  NAND2BX2M U6 ( .AN(busy), .B(Data_Valid_par), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PARITY_TYPE), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA_par[1]), .B(P_DATA_par[0]), .C(n5), .Y(n4) );
endmodule


module Serializer_DATA_WIDTH8 ( P_DATA_SER, CLK, RST, ser_en, DATA_VALID, busy, 
        ser_done, SER_OUT );
  input [7:0] P_DATA_SER;
  input CLK, RST, ser_en, DATA_VALID, busy;
  output ser_done, SER_OUT;
  wire   n1, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n2, n3, n4, n5, n6, n7, n8, n37, n38, n39;
  wire   [7:0] Regester;
  wire   [3:0] counter;

  DFFRQX1M \Regester_reg[7]  ( .D(n27), .CK(CLK), .RN(n3), .Q(Regester[7]) );
  DFFRQX1M \Regester_reg[6]  ( .D(n28), .CK(CLK), .RN(n3), .Q(Regester[6]) );
  DFFRQX1M \Regester_reg[5]  ( .D(n29), .CK(CLK), .RN(n3), .Q(Regester[5]) );
  DFFRQX1M \Regester_reg[4]  ( .D(n30), .CK(CLK), .RN(n3), .Q(Regester[4]) );
  DFFRQX1M \Regester_reg[3]  ( .D(n31), .CK(CLK), .RN(n3), .Q(Regester[3]) );
  DFFRQX1M \Regester_reg[2]  ( .D(n32), .CK(CLK), .RN(n3), .Q(Regester[2]) );
  DFFRQX1M \Regester_reg[1]  ( .D(n33), .CK(CLK), .RN(n3), .Q(Regester[1]) );
  DFFRX1M \Regester_reg[0]  ( .D(n34), .CK(CLK), .RN(n3), .QN(n1) );
  DFFRQX1M \counter_reg[3]  ( .D(n35), .CK(CLK), .RN(n3), .Q(counter[3]) );
  DFFRQX1M \counter_reg[2]  ( .D(n26), .CK(CLK), .RN(n3), .Q(counter[2]) );
  DFFRQX1M \counter_reg[0]  ( .D(n36), .CK(CLK), .RN(n3), .Q(counter[0]) );
  DFFRQX1M \counter_reg[1]  ( .D(n25), .CK(CLK), .RN(n3), .Q(counter[1]) );
  NOR2X4M U3 ( .A(n24), .B(n2), .Y(n15) );
  BUFX2M U4 ( .A(n12), .Y(n2) );
  INVX4M U5 ( .A(n4), .Y(n3) );
  INVX2M U6 ( .A(RST), .Y(n4) );
  NAND2X2M U7 ( .A(n5), .B(n7), .Y(n13) );
  INVX2M U8 ( .A(n15), .Y(n7) );
  AOI21X2M U9 ( .A0(n8), .A1(n15), .B0(n2), .Y(n9) );
  INVX2M U10 ( .A(n2), .Y(n5) );
  NOR2BX2M U11 ( .AN(DATA_VALID), .B(busy), .Y(n12) );
  AO2B2X2M U12 ( .B0(P_DATA_SER[7]), .B1(n2), .A0(Regester[7]), .A1N(n13), .Y(
        n27) );
  OAI32X1M U13 ( .A0(n37), .A1(counter[2]), .A2(n10), .B0(n6), .B1(n38), .Y(
        n26) );
  INVX2M U14 ( .A(n11), .Y(n6) );
  NOR4X2M U15 ( .A(n39), .B(counter[0]), .C(counter[1]), .D(counter[2]), .Y(
        ser_done) );
  OAI21X2M U16 ( .A0(counter[1]), .A1(n7), .B0(n9), .Y(n11) );
  NAND2X2M U17 ( .A(counter[0]), .B(n15), .Y(n10) );
  OAI22X1M U18 ( .A0(n9), .A1(n37), .B0(counter[1]), .B1(n10), .Y(n25) );
  OAI22X1M U19 ( .A0(n8), .A1(n5), .B0(counter[0]), .B1(n7), .Y(n36) );
  OAI2B1X2M U20 ( .A1N(Regester[1]), .A0(n13), .B0(n20), .Y(n33) );
  AOI22X1M U21 ( .A0(Regester[2]), .A1(n15), .B0(P_DATA_SER[1]), .B1(n2), .Y(
        n20) );
  OAI2B1X2M U22 ( .A1N(Regester[2]), .A0(n13), .B0(n19), .Y(n32) );
  AOI22X1M U23 ( .A0(Regester[3]), .A1(n15), .B0(P_DATA_SER[2]), .B1(n2), .Y(
        n19) );
  OAI2B1X2M U24 ( .A1N(Regester[3]), .A0(n13), .B0(n18), .Y(n31) );
  AOI22X1M U25 ( .A0(Regester[4]), .A1(n15), .B0(P_DATA_SER[3]), .B1(n2), .Y(
        n18) );
  OAI2B1X2M U26 ( .A1N(Regester[4]), .A0(n13), .B0(n17), .Y(n30) );
  AOI22X1M U27 ( .A0(Regester[5]), .A1(n15), .B0(P_DATA_SER[4]), .B1(n2), .Y(
        n17) );
  OAI2B1X2M U28 ( .A1N(Regester[5]), .A0(n13), .B0(n16), .Y(n29) );
  AOI22X1M U29 ( .A0(Regester[6]), .A1(n15), .B0(P_DATA_SER[5]), .B1(n2), .Y(
        n16) );
  OAI2B1X2M U30 ( .A1N(Regester[6]), .A0(n13), .B0(n14), .Y(n28) );
  AOI22X1M U31 ( .A0(Regester[7]), .A1(n15), .B0(P_DATA_SER[6]), .B1(n2), .Y(
        n14) );
  OAI21X2M U32 ( .A0(n13), .A1(n1), .B0(n21), .Y(n34) );
  AOI22X1M U33 ( .A0(Regester[1]), .A1(n15), .B0(P_DATA_SER[0]), .B1(n2), .Y(
        n21) );
  NAND2BX2M U34 ( .AN(ser_done), .B(ser_en), .Y(n24) );
  OAI32X1M U35 ( .A0(n22), .A1(n37), .A2(n38), .B0(n23), .B1(n39), .Y(n35) );
  OR2X2M U36 ( .A(n10), .B(counter[3]), .Y(n22) );
  AOI21X2M U37 ( .A0(n15), .A1(n38), .B0(n11), .Y(n23) );
  INVX2M U38 ( .A(counter[3]), .Y(n39) );
  NOR2X2M U39 ( .A(n24), .B(n1), .Y(SER_OUT) );
  INVX2M U40 ( .A(counter[1]), .Y(n37) );
  INVX2M U41 ( .A(counter[0]), .Y(n8) );
  INVX2M U42 ( .A(counter[2]), .Y(n38) );
endmodule


module FSM ( CLK, RST, VALID_FSM, PAR_EN_FSM, ser_done_fsm, ser_en_fsm, 
        SEL_FSM, busy );
  output [1:0] SEL_FSM;
  input CLK, RST, VALID_FSM, PAR_EN_FSM, ser_done_fsm;
  output ser_en_fsm, busy;
  wire   busy_c, n7, n8, n9, n10, n11, n12, n1, n2, n3, n4, n5, n6;
  wire   [2:0] current;
  wire   [2:0] next;

  DFFRQX1M busy_reg ( .D(busy_c), .CK(CLK), .RN(RST), .Q(busy) );
  DFFRQX1M \current_reg[2]  ( .D(next[2]), .CK(CLK), .RN(RST), .Q(current[2])
         );
  DFFRQX1M \current_reg[0]  ( .D(next[0]), .CK(CLK), .RN(RST), .Q(current[0])
         );
  DFFRQX1M \current_reg[1]  ( .D(next[1]), .CK(CLK), .RN(RST), .Q(current[1])
         );
  OAI21BX1M U3 ( .A0(n10), .A1(n1), .B0N(next[1]), .Y(busy_c) );
  OAI21X2M U4 ( .A0(n10), .A1(n1), .B0(n11), .Y(next[0]) );
  INVX2M U5 ( .A(VALID_FSM), .Y(n1) );
  INVX2M U6 ( .A(n12), .Y(n2) );
  OAI211X2M U7 ( .A0(VALID_FSM), .A1(n10), .B0(n9), .C0(n5), .Y(n12) );
  NAND3X2M U8 ( .A(n4), .B(n5), .C(n3), .Y(n10) );
  OA21X2M U9 ( .A0(ser_done_fsm), .A1(n8), .B0(n7), .Y(n11) );
  NAND3X2M U10 ( .A(n8), .B(n7), .C(n9), .Y(next[1]) );
  INVX2M U11 ( .A(ser_done_fsm), .Y(n6) );
  OAI211X2M U12 ( .A0(PAR_EN_FSM), .A1(n8), .B0(n11), .C0(n2), .Y(SEL_FSM[0])
         );
  NAND3X2M U13 ( .A(n4), .B(n5), .C(current[0]), .Y(n7) );
  OAI21X2M U14 ( .A0(n8), .A1(n6), .B0(n2), .Y(SEL_FSM[1]) );
  INVX2M U15 ( .A(current[2]), .Y(n5) );
  OAI31X1M U16 ( .A0(n3), .A1(ser_done_fsm), .A2(current[2]), .B0(n7), .Y(
        ser_en_fsm) );
  INVX2M U17 ( .A(current[0]), .Y(n3) );
  INVX2M U18 ( .A(current[1]), .Y(n4) );
  NAND3X2M U19 ( .A(current[0]), .B(n5), .C(current[1]), .Y(n8) );
  NAND3X2M U20 ( .A(n3), .B(n5), .C(current[1]), .Y(n9) );
  OAI31X1M U21 ( .A0(n6), .A1(PAR_EN_FSM), .A2(n8), .B0(n9), .Y(next[2]) );
endmodule


module UART_TX_DATA_WIDTH8 ( P_DATA, DATA_VALID, PAR_EN, PAR_TYP, CLK, RST, 
        TX_OUT, busy );
  input [7:0] P_DATA;
  input DATA_VALID, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, busy;
  wire   ser_data, par_bit, ser_en, ser_done, n1, n2;
  wire   [1:0] mux_sel;

  MUX_4x1 U0_MUX ( .IN0(1'b0), .IN1(ser_data), .IN2(par_bit), .IN3(1'b1), 
        .CLK(CLK), .RST(n1), .SEL(mux_sel), .out(TX_OUT) );
  parity_calc_DATA_WIDTH8 U0_PARITY ( .CLK(CLK), .RST(n1), .P_DATA_par(P_DATA), 
        .PARITY_TYPE(PAR_TYP), .Data_Valid_par(DATA_VALID), .busy(busy), 
        .parity_bit(par_bit) );
  Serializer_DATA_WIDTH8 U0_SER ( .P_DATA_SER(P_DATA), .CLK(CLK), .RST(n1), 
        .ser_en(ser_en), .DATA_VALID(DATA_VALID), .busy(busy), .ser_done(
        ser_done), .SER_OUT(ser_data) );
  FSM U0_FSM ( .CLK(CLK), .RST(n1), .VALID_FSM(DATA_VALID), .PAR_EN_FSM(PAR_EN), .ser_done_fsm(ser_done), .ser_en_fsm(ser_en), .SEL_FSM(mux_sel), .busy(busy)
         );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RST), .Y(n2) );
endmodule


module UART_DATA_WIDTH8_scale_size6 ( TX_IN_P, TX_IN_V, TX_CLK, RST, RX_IN_S, 
        RX_CLK, prescale, PAR_EN, PAR_TYP, TX_OUT_S, TX_OUT_V, RX_OUT_P, 
        Parity_error, stop_error, RX_OUT_V );
  input [7:0] TX_IN_P;
  input [5:0] prescale;
  output [7:0] RX_OUT_P;
  input TX_IN_V, TX_CLK, RST, RX_IN_S, RX_CLK, PAR_EN, PAR_TYP;
  output TX_OUT_S, TX_OUT_V, Parity_error, stop_error, RX_OUT_V;
  wire   n1, n2;

  UART_RX_scale_size6_DATA_WIDTH8 U0_rx ( .RX_IN(RX_IN_S), .CLK(RX_CLK), .RST(
        n1), .prescale(prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .P_DATA(
        RX_OUT_P), .Parity_error(Parity_error), .stop_error(stop_error), 
        .data_valid(RX_OUT_V) );
  UART_TX_DATA_WIDTH8 U0_tx ( .P_DATA(TX_IN_P), .DATA_VALID(TX_IN_V), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n1), .TX_OUT(TX_OUT_S), 
        .busy(TX_OUT_V) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX4M CLK_GATE_U0 ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module RST_SYNC_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module RST_SYNC_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, pulse_SIG );
  input CLK, RST, LVL_SIG;
  output pulse_SIG;
  wire   pulse_flop, LVL_SIG_flop;

  DFFRQX1M pulse_flop_reg ( .D(LVL_SIG_flop), .CK(CLK), .RN(RST), .Q(
        pulse_flop) );
  DFFRQX1M LVL_SIG_flop_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(LVL_SIG_flop) );
  NOR2BX2M U3 ( .AN(LVL_SIG_flop), .B(pulse_flop), .Y(pulse_SIG) );
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


module ClkDiv_divide_ratio8_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, flag, N14, N15, N16, N17, N18, N19, N20, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45;
  wire   [6:0] counter;
  wire   [6:0] half_tog;

  ClkDiv_divide_ratio8_0_DW01_inc_0 add_53 ( .A(counter), .SUM({N20, N19, N18, 
        N17, N16, N15, N14}) );
  DFFRQX2M div_clk_reg ( .D(n17), .CK(i_ref_clk), .RN(n4), .Q(div_clk) );
  DFFSQX2M flag_reg ( .D(n18), .CK(i_ref_clk), .SN(n4), .Q(flag) );
  DFFRQX2M \counter_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(n4), .Q(counter[6])
         );
  DFFRQX2M \counter_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(n4), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(n4), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(n4), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(n4), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(n4), .Q(counter[2])
         );
  DFFRQX2M \counter_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(n4), .Q(counter[1])
         );
  CLKMX2X4M U3 ( .A(i_ref_clk), .B(div_clk), .S0(n1), .Y(o_div_clk) );
  OR2X2M U4 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n6) );
  INVX2M U5 ( .A(n5), .Y(n4) );
  INVX2M U6 ( .A(i_rst_n), .Y(n5) );
  AOI21BX2M U7 ( .A0(n2), .A1(n3), .B0N(i_clk_en), .Y(n1) );
  INVX2M U8 ( .A(n1), .Y(n12) );
  NOR4X1M U9 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n2) );
  NOR3X2M U10 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), 
        .Y(n3) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n11) );
  CLKINVX1M U12 ( .A(i_div_ratio[1]), .Y(half_tog[0]) );
  OAI2BB1X1M U13 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n6), .Y(
        half_tog[1]) );
  OR2X1M U14 ( .A(n6), .B(i_div_ratio[3]), .Y(n7) );
  OAI2BB1X1M U15 ( .A0N(n6), .A1N(i_div_ratio[3]), .B0(n7), .Y(half_tog[2]) );
  NOR2X1M U16 ( .A(n7), .B(i_div_ratio[4]), .Y(n8) );
  AO21XLM U17 ( .A0(n7), .A1(i_div_ratio[4]), .B0(n8), .Y(half_tog[3]) );
  CLKNAND2X2M U18 ( .A(n8), .B(n11), .Y(n9) );
  OAI21X1M U19 ( .A0(n8), .A1(n11), .B0(n9), .Y(half_tog[4]) );
  XNOR2X1M U20 ( .A(i_div_ratio[6]), .B(n9), .Y(half_tog[5]) );
  NOR2X1M U21 ( .A(i_div_ratio[6]), .B(n9), .Y(n10) );
  CLKXOR2X2M U22 ( .A(i_div_ratio[7]), .B(n10), .Y(half_tog[6]) );
  AO22X1M U23 ( .A0(n12), .A1(counter[0]), .B0(N14), .B1(n13), .Y(n25) );
  AO22X1M U24 ( .A0(n12), .A1(counter[1]), .B0(N15), .B1(n13), .Y(n24) );
  AO22X1M U25 ( .A0(n12), .A1(counter[2]), .B0(N16), .B1(n13), .Y(n23) );
  AO22X1M U26 ( .A0(n12), .A1(counter[3]), .B0(N17), .B1(n13), .Y(n22) );
  AO22X1M U27 ( .A0(n12), .A1(counter[4]), .B0(N18), .B1(n13), .Y(n21) );
  AO22X1M U28 ( .A0(n12), .A1(counter[5]), .B0(N19), .B1(n13), .Y(n20) );
  AO22X1M U29 ( .A0(n12), .A1(counter[6]), .B0(N20), .B1(n13), .Y(n19) );
  AND3X1M U30 ( .A(n14), .B(n15), .C(n1), .Y(n13) );
  XNOR2X1M U31 ( .A(flag), .B(n16), .Y(n18) );
  OR2X1M U32 ( .A(n15), .B(n12), .Y(n16) );
  CLKXOR2X2M U33 ( .A(div_clk), .B(n26), .Y(n17) );
  AOI21X1M U34 ( .A0(n15), .A1(n14), .B0(n12), .Y(n26) );
  OR2X1M U35 ( .A(n27), .B(i_div_ratio[0]), .Y(n14) );
  CLKNAND2X2M U36 ( .A(n28), .B(i_div_ratio[0]), .Y(n15) );
  MXI2X1M U37 ( .A(n29), .B(n27), .S0(flag), .Y(n28) );
  NAND4X1M U38 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n27) );
  NOR4X1M U39 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n33) );
  CLKXOR2X2M U40 ( .A(half_tog[2]), .B(counter[2]), .Y(n37) );
  CLKXOR2X2M U41 ( .A(half_tog[1]), .B(counter[1]), .Y(n36) );
  CLKXOR2X2M U42 ( .A(half_tog[0]), .B(counter[0]), .Y(n35) );
  CLKXOR2X2M U43 ( .A(half_tog[6]), .B(counter[6]), .Y(n34) );
  XNOR2X1M U44 ( .A(counter[4]), .B(half_tog[4]), .Y(n32) );
  XNOR2X1M U45 ( .A(counter[5]), .B(half_tog[5]), .Y(n31) );
  XNOR2X1M U46 ( .A(counter[3]), .B(half_tog[3]), .Y(n30) );
  NAND4X1M U47 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n29) );
  NOR4X1M U48 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n41) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n45) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n44) );
  CLKXOR2X2M U51 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n43) );
  CLKXOR2X2M U52 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n42) );
  XNOR2X1M U53 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n40) );
  XNOR2X1M U54 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n39) );
  XNOR2X1M U55 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n38) );
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


module ClkDiv_divide_ratio8_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, flag, N14, N15, N16, N17, N18, N19, N20, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;
  wire   [6:0] counter;
  wire   [6:0] half_tog;

  ClkDiv_divide_ratio8_1_DW01_inc_0 add_53 ( .A(counter), .SUM({N20, N19, N18, 
        N17, N16, N15, N14}) );
  DFFRQX2M div_clk_reg ( .D(n54), .CK(i_ref_clk), .RN(n4), .Q(div_clk) );
  DFFSQX2M flag_reg ( .D(n53), .CK(i_ref_clk), .SN(n4), .Q(flag) );
  DFFRQX2M \counter_reg[6]  ( .D(n52), .CK(i_ref_clk), .RN(n4), .Q(counter[6])
         );
  DFFRQX2M \counter_reg[5]  ( .D(n51), .CK(i_ref_clk), .RN(n4), .Q(counter[5])
         );
  DFFRQX2M \counter_reg[4]  ( .D(n50), .CK(i_ref_clk), .RN(n4), .Q(counter[4])
         );
  DFFRQX2M \counter_reg[3]  ( .D(n49), .CK(i_ref_clk), .RN(n4), .Q(counter[3])
         );
  DFFRQX2M \counter_reg[0]  ( .D(n46), .CK(i_ref_clk), .RN(n4), .Q(counter[0])
         );
  DFFRQX2M \counter_reg[2]  ( .D(n48), .CK(i_ref_clk), .RN(n4), .Q(counter[2])
         );
  DFFRQX2M \counter_reg[1]  ( .D(n47), .CK(i_ref_clk), .RN(n4), .Q(counter[1])
         );
  CLKMX2X4M U3 ( .A(i_ref_clk), .B(div_clk), .S0(n1), .Y(o_div_clk) );
  INVX2M U4 ( .A(n5), .Y(n4) );
  INVX2M U5 ( .A(i_rst_n), .Y(n5) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n6) );
  AOI21BX2M U7 ( .A0(n2), .A1(n3), .B0N(i_clk_en), .Y(n1) );
  INVX2M U8 ( .A(n1), .Y(n12) );
  NOR4X1M U9 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n2) );
  NOR3X2M U10 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), 
        .Y(n3) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n11) );
  CLKINVX1M U12 ( .A(i_div_ratio[1]), .Y(half_tog[0]) );
  OAI2BB1X1M U13 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n6), .Y(
        half_tog[1]) );
  OR2X1M U14 ( .A(n6), .B(i_div_ratio[3]), .Y(n7) );
  OAI2BB1X1M U15 ( .A0N(n6), .A1N(i_div_ratio[3]), .B0(n7), .Y(half_tog[2]) );
  NOR2X1M U16 ( .A(n7), .B(i_div_ratio[4]), .Y(n8) );
  AO21XLM U17 ( .A0(n7), .A1(i_div_ratio[4]), .B0(n8), .Y(half_tog[3]) );
  CLKNAND2X2M U18 ( .A(n8), .B(n11), .Y(n9) );
  OAI21X1M U19 ( .A0(n8), .A1(n11), .B0(n9), .Y(half_tog[4]) );
  XNOR2X1M U20 ( .A(i_div_ratio[6]), .B(n9), .Y(half_tog[5]) );
  NOR2X1M U21 ( .A(i_div_ratio[6]), .B(n9), .Y(n10) );
  CLKXOR2X2M U22 ( .A(i_div_ratio[7]), .B(n10), .Y(half_tog[6]) );
  AO22X1M U23 ( .A0(n12), .A1(counter[0]), .B0(N14), .B1(n13), .Y(n46) );
  AO22X1M U24 ( .A0(n12), .A1(counter[1]), .B0(N15), .B1(n13), .Y(n47) );
  AO22X1M U25 ( .A0(n12), .A1(counter[2]), .B0(N16), .B1(n13), .Y(n48) );
  AO22X1M U26 ( .A0(n12), .A1(counter[3]), .B0(N17), .B1(n13), .Y(n49) );
  AO22X1M U27 ( .A0(n12), .A1(counter[4]), .B0(N18), .B1(n13), .Y(n50) );
  AO22X1M U28 ( .A0(n12), .A1(counter[5]), .B0(N19), .B1(n13), .Y(n51) );
  AO22X1M U29 ( .A0(n12), .A1(counter[6]), .B0(N20), .B1(n13), .Y(n52) );
  AND3X1M U30 ( .A(n14), .B(n15), .C(n1), .Y(n13) );
  XNOR2X1M U31 ( .A(flag), .B(n16), .Y(n53) );
  OR2X1M U32 ( .A(n15), .B(n12), .Y(n16) );
  CLKXOR2X2M U33 ( .A(div_clk), .B(n26), .Y(n54) );
  AOI21X1M U34 ( .A0(n15), .A1(n14), .B0(n12), .Y(n26) );
  OR2X1M U35 ( .A(n27), .B(i_div_ratio[0]), .Y(n14) );
  CLKNAND2X2M U36 ( .A(n28), .B(i_div_ratio[0]), .Y(n15) );
  MXI2X1M U37 ( .A(n29), .B(n27), .S0(flag), .Y(n28) );
  NAND4X1M U38 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n27) );
  NOR4X1M U39 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n33) );
  CLKXOR2X2M U40 ( .A(half_tog[2]), .B(counter[2]), .Y(n37) );
  CLKXOR2X2M U41 ( .A(half_tog[1]), .B(counter[1]), .Y(n36) );
  CLKXOR2X2M U42 ( .A(half_tog[0]), .B(counter[0]), .Y(n35) );
  CLKXOR2X2M U43 ( .A(half_tog[6]), .B(counter[6]), .Y(n34) );
  XNOR2X1M U44 ( .A(counter[4]), .B(half_tog[4]), .Y(n32) );
  XNOR2X1M U45 ( .A(counter[5]), .B(half_tog[5]), .Y(n31) );
  XNOR2X1M U46 ( .A(counter[3]), .B(half_tog[3]), .Y(n30) );
  NAND4X1M U47 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n29) );
  NOR4X1M U48 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n41) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n45) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[2]), .B(counter[1]), .Y(n44) );
  CLKXOR2X2M U51 ( .A(i_div_ratio[1]), .B(counter[0]), .Y(n43) );
  CLKXOR2X2M U52 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n42) );
  XNOR2X1M U53 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n40) );
  XNOR2X1M U54 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n39) );
  XNOR2X1M U55 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n38) );
endmodule


module clk_div_mux_divide_ratio8_scale_size6 ( prescale, i_div_ratio );
  input [5:0] prescale;
  output [7:0] i_div_ratio;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(i_div_ratio[7]) );
  INVX2M U5 ( .A(1'b1), .Y(i_div_ratio[6]) );
  INVX2M U7 ( .A(1'b1), .Y(i_div_ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(i_div_ratio[4]) );
  NOR3X4M U11 ( .A(n7), .B(prescale[1]), .C(prescale[0]), .Y(i_div_ratio[1])
         );
  NOR3X4M U12 ( .A(n6), .B(prescale[1]), .C(prescale[0]), .Y(i_div_ratio[2])
         );
  NAND4BX1M U13 ( .AN(prescale[3]), .B(prescale[4]), .C(n15), .D(n14), .Y(n7)
         );
  NAND4BX1M U14 ( .AN(prescale[4]), .B(prescale[3]), .C(n15), .D(n14), .Y(n6)
         );
  NOR4X2M U15 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        i_div_ratio[3]) );
  NAND3X2M U16 ( .A(n17), .B(n16), .C(prescale[2]), .Y(n5) );
  INVX2M U17 ( .A(prescale[2]), .Y(n15) );
  OAI211X2M U18 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(i_div_ratio[0]) );
  NAND2X2M U19 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U20 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n15), 
        .Y(n8) );
  INVX2M U21 ( .A(prescale[1]), .Y(n16) );
  INVX2M U22 ( .A(prescale[0]), .Y(n17) );
  INVX2M U23 ( .A(prescale[5]), .Y(n14) );
endmodule


module SYS_CTRL_ALU_width16_func_WIDTH4_addr_width4_DATA_WIDTH8 ( ALU_OUT, 
        out_valid, CLK, RST, RX_D_VLD, RX_P_DATA, RdData, RdData_vld, 
        FIFO_FULL, CLK_EN, ALU_EN, ALU_FUN, addr, WrEn, RdEn, WrData, 
        Tx_P_DATA, Tx_D_VLD, clk_div_en );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] addr;
  output [7:0] WrData;
  output [7:0] Tx_P_DATA;
  input out_valid, CLK, RST, RX_D_VLD, RdData_vld, FIFO_FULL;
  output CLK_EN, ALU_EN, WrEn, RdEn, Tx_D_VLD, clk_div_en;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17,
         n18, n19, n20, n22, n23, n24, n26, n28, n30, n31, n32, n33, n34, n37,
         n38, n39, n40, n49, n50, n51, n52, n53, n55, n57, n60, n61, n62, n63,
         n64, n65, n66, n67, n69, n70, n71, n72, n21, n25, n27, n29, n35, n36,
         n41, n42, n43, n44, n45, n46, n47, n48, n54, n56, n58, n59, n68, n73,
         n74, n75, n76, n77;
  wire   [3:0] current;
  wire   [3:0] next;
  wire   [3:0] Store;

  OAI221X4M U36 ( .A0(n76), .A1(n51), .B0(n50), .B1(n58), .C0(n11), .Y(addr[0]) );
  DFFRQX2M \Store_reg[3]  ( .D(n72), .CK(CLK), .RN(n21), .Q(Store[3]) );
  DFFRQX2M \Store_reg[2]  ( .D(n71), .CK(CLK), .RN(n21), .Q(Store[2]) );
  DFFRQX2M \Store_reg[1]  ( .D(n70), .CK(CLK), .RN(n21), .Q(Store[1]) );
  DFFRQX2M \Store_reg[0]  ( .D(n69), .CK(CLK), .RN(n21), .Q(Store[0]) );
  DFFRQX2M \current_reg[0]  ( .D(next[0]), .CK(CLK), .RN(n21), .Q(current[0])
         );
  DFFRQX2M \current_reg[2]  ( .D(next[2]), .CK(CLK), .RN(n21), .Q(current[2])
         );
  DFFRQX2M \current_reg[3]  ( .D(next[3]), .CK(CLK), .RN(n21), .Q(current[3])
         );
  DFFRQX2M \current_reg[1]  ( .D(next[1]), .CK(CLK), .RN(n21), .Q(current[1])
         );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  OAI22X4M U5 ( .A0(n67), .A1(n48), .B0(n9), .B1(n38), .Y(ALU_FUN[3]) );
  OAI22X4M U6 ( .A0(n50), .A1(n54), .B0(n74), .B1(n51), .Y(addr[2]) );
  NOR3BX2M U7 ( .AN(n39), .B(current[1]), .C(current[2]), .Y(n28) );
  NOR2X2M U8 ( .A(n46), .B(current[1]), .Y(n6) );
  NOR2X2M U9 ( .A(current[3]), .B(current[0]), .Y(n5) );
  INVX2M U10 ( .A(n33), .Y(n36) );
  INVX2M U11 ( .A(WrEn), .Y(n29) );
  INVX2M U12 ( .A(n67), .Y(CLK_EN) );
  NOR2X4M U13 ( .A(n45), .B(n44), .Y(n67) );
  NOR2X2M U14 ( .A(n59), .B(n9), .Y(n33) );
  NOR2X2M U15 ( .A(n59), .B(n55), .Y(WrEn) );
  INVX2M U16 ( .A(FIFO_FULL), .Y(n27) );
  OAI22X4M U17 ( .A0(n67), .A1(n54), .B0(n74), .B1(n36), .Y(ALU_FUN[2]) );
  OAI22X4M U18 ( .A0(n50), .A1(n56), .B0(n75), .B1(n51), .Y(addr[1]) );
  OAI22X4M U19 ( .A0(n67), .A1(n58), .B0(n76), .B1(n36), .Y(ALU_FUN[0]) );
  OAI22X4M U20 ( .A0(n67), .A1(n56), .B0(n75), .B1(n36), .Y(ALU_FUN[1]) );
  AOI21X2M U21 ( .A0(n6), .A1(n5), .B0(n7), .Y(n9) );
  NOR2X2M U22 ( .A(n28), .B(n42), .Y(n49) );
  INVX2M U23 ( .A(n14), .Y(n45) );
  NAND2BX2M U24 ( .AN(n49), .B(RX_D_VLD), .Y(n51) );
  INVX2M U25 ( .A(n53), .Y(n42) );
  AND2X2M U26 ( .A(n52), .B(n23), .Y(n50) );
  OAI22X4M U27 ( .A0(n49), .A1(n38), .B0(n50), .B1(n48), .Y(addr[3]) );
  INVX2M U28 ( .A(RX_D_VLD), .Y(n59) );
  NAND2X2M U29 ( .A(n39), .B(n6), .Y(n11) );
  INVX2M U30 ( .A(n1), .Y(n44) );
  NOR2X2M U31 ( .A(n53), .B(n59), .Y(RdEn) );
  AND3X2M U32 ( .A(n11), .B(n30), .C(n52), .Y(n55) );
  NOR2X2M U33 ( .A(n68), .B(n29), .Y(WrData[7]) );
  NOR2X2M U34 ( .A(n55), .B(n38), .Y(WrData[3]) );
  INVX2M U35 ( .A(n23), .Y(n43) );
  NOR2X2M U37 ( .A(n76), .B(n29), .Y(WrData[0]) );
  NOR2X2M U38 ( .A(n75), .B(n29), .Y(WrData[1]) );
  NOR2X2M U39 ( .A(n74), .B(n29), .Y(WrData[2]) );
  NOR2X2M U40 ( .A(n73), .B(n29), .Y(WrData[4]) );
  INVX2M U41 ( .A(n14), .Y(ALU_EN) );
  NAND4X2M U42 ( .A(n8), .B(n3), .C(n9), .D(n10), .Y(next[2]) );
  NOR3BX2M U43 ( .AN(n11), .B(RdEn), .C(n35), .Y(n10) );
  NAND3X2M U44 ( .A(n31), .B(n24), .C(n32), .Y(next[0]) );
  AOI32X1M U45 ( .A0(n76), .A1(n73), .A2(n20), .B0(n39), .B1(n59), .Y(n31) );
  NOR4X1M U46 ( .A(n33), .B(n45), .C(n35), .D(n28), .Y(n32) );
  OA21X2M U47 ( .A0(n22), .A1(n23), .B0(n24), .Y(n8) );
  NOR2X2M U48 ( .A(FIFO_FULL), .B(n77), .Y(n22) );
  OA21X2M U49 ( .A0(n1), .A1(n27), .B0(n34), .Y(n24) );
  NAND4X2M U50 ( .A(n15), .B(n16), .C(n76), .D(n73), .Y(n34) );
  AND3X2M U51 ( .A(n5), .B(n47), .C(n46), .Y(n15) );
  OAI211X2M U52 ( .A0(n1), .A1(n27), .B0(n3), .C0(n4), .Y(next[3]) );
  AOI31X2M U53 ( .A0(n5), .A1(n6), .A2(RX_D_VLD), .B0(n7), .Y(n4) );
  INVX2M U54 ( .A(n30), .Y(n35) );
  OAI22X1M U55 ( .A0(n59), .A1(n76), .B0(RX_D_VLD), .B1(n58), .Y(n69) );
  OAI22X1M U56 ( .A0(n59), .A1(n75), .B0(RX_D_VLD), .B1(n56), .Y(n70) );
  OAI22X1M U57 ( .A0(n59), .A1(n74), .B0(RX_D_VLD), .B1(n54), .Y(n71) );
  OAI21X2M U58 ( .A0(RX_D_VLD), .A1(n48), .B0(n38), .Y(n72) );
  INVX2M U59 ( .A(n25), .Y(n21) );
  INVX2M U60 ( .A(RST), .Y(n25) );
  NAND3X2M U61 ( .A(n5), .B(current[2]), .C(current[1]), .Y(n23) );
  NOR2X2M U62 ( .A(n41), .B(current[3]), .Y(n39) );
  NAND3X2M U63 ( .A(current[3]), .B(n6), .C(current[0]), .Y(n14) );
  NAND3X2M U64 ( .A(n5), .B(n46), .C(current[1]), .Y(n53) );
  NAND3X2M U65 ( .A(current[1]), .B(n46), .C(n39), .Y(n52) );
  INVX2M U66 ( .A(current[2]), .Y(n46) );
  AND3X2M U67 ( .A(n6), .B(n41), .C(current[3]), .Y(n7) );
  INVX2M U68 ( .A(current[0]), .Y(n41) );
  NAND2X2M U69 ( .A(RX_P_DATA[3]), .B(RX_D_VLD), .Y(n38) );
  NAND4X2M U70 ( .A(current[1]), .B(current[0]), .C(current[3]), .D(current[2]), .Y(n1) );
  INVX2M U71 ( .A(RX_P_DATA[0]), .Y(n76) );
  INVX2M U72 ( .A(RX_P_DATA[1]), .Y(n75) );
  INVX2M U73 ( .A(Store[0]), .Y(n58) );
  NAND3X2M U74 ( .A(current[1]), .B(current[2]), .C(n39), .Y(n30) );
  OAI2B2X1M U75 ( .A1N(out_valid), .A0(n67), .B0(n77), .B1(n23), .Y(Tx_D_VLD)
         );
  INVX2M U76 ( .A(RX_P_DATA[2]), .Y(n74) );
  INVX2M U77 ( .A(Store[3]), .Y(n48) );
  INVX2M U78 ( .A(Store[1]), .Y(n56) );
  INVX2M U79 ( .A(Store[2]), .Y(n54) );
  OAI2BB1X2M U80 ( .A0N(ALU_OUT[0]), .A1N(n45), .B0(n66), .Y(Tx_P_DATA[0]) );
  AOI22X1M U81 ( .A0(RdData[0]), .A1(n43), .B0(ALU_OUT[8]), .B1(n44), .Y(n66)
         );
  OAI2BB1X2M U82 ( .A0N(ALU_OUT[1]), .A1N(n45), .B0(n65), .Y(Tx_P_DATA[1]) );
  AOI22X1M U83 ( .A0(RdData[1]), .A1(n43), .B0(ALU_OUT[9]), .B1(n44), .Y(n65)
         );
  OAI2BB1X2M U84 ( .A0N(ALU_OUT[2]), .A1N(n45), .B0(n64), .Y(Tx_P_DATA[2]) );
  AOI22X1M U85 ( .A0(RdData[2]), .A1(n43), .B0(ALU_OUT[10]), .B1(n44), .Y(n64)
         );
  OAI2BB1X2M U86 ( .A0N(ALU_OUT[3]), .A1N(n45), .B0(n63), .Y(Tx_P_DATA[3]) );
  AOI22X1M U87 ( .A0(RdData[3]), .A1(n43), .B0(ALU_OUT[11]), .B1(n44), .Y(n63)
         );
  OAI2BB1X2M U88 ( .A0N(ALU_OUT[4]), .A1N(n45), .B0(n62), .Y(Tx_P_DATA[4]) );
  AOI22X1M U89 ( .A0(RdData[4]), .A1(n43), .B0(ALU_OUT[12]), .B1(n44), .Y(n62)
         );
  OAI2BB1X2M U90 ( .A0N(ALU_OUT[5]), .A1N(n45), .B0(n61), .Y(Tx_P_DATA[5]) );
  AOI22X1M U91 ( .A0(RdData[5]), .A1(n43), .B0(ALU_OUT[13]), .B1(n44), .Y(n61)
         );
  OAI2BB1X2M U92 ( .A0N(ALU_OUT[6]), .A1N(n45), .B0(n60), .Y(Tx_P_DATA[6]) );
  AOI22X1M U93 ( .A0(RdData[6]), .A1(n43), .B0(ALU_OUT[14]), .B1(n44), .Y(n60)
         );
  OAI2BB1X2M U94 ( .A0N(ALU_OUT[7]), .A1N(n45), .B0(n57), .Y(Tx_P_DATA[7]) );
  AOI22X1M U95 ( .A0(RdData[7]), .A1(n43), .B0(ALU_OUT[15]), .B1(n44), .Y(n57)
         );
  NAND4X2M U96 ( .A(n17), .B(n8), .C(n18), .D(n19), .Y(next[1]) );
  AOI31X2M U97 ( .A0(RX_P_DATA[4]), .A1(RX_P_DATA[0]), .A2(n20), .B0(n42), .Y(
        n18) );
  NAND3X2M U98 ( .A(n45), .B(n27), .C(out_valid), .Y(n19) );
  AOI22X1M U99 ( .A0(n26), .A1(n59), .B0(n28), .B1(RX_D_VLD), .Y(n17) );
  AND2X2M U100 ( .A(RX_P_DATA[5]), .B(WrEn), .Y(WrData[5]) );
  AND2X2M U101 ( .A(RX_P_DATA[6]), .B(WrEn), .Y(WrData[6]) );
  OAI31X1M U102 ( .A0(n47), .A1(current[3]), .A2(current[2]), .B0(n30), .Y(n26) );
  INVX2M U103 ( .A(current[1]), .Y(n47) );
  INVX2M U104 ( .A(RX_P_DATA[4]), .Y(n73) );
  AND2X2M U105 ( .A(n13), .B(n14), .Y(n3) );
  NAND4X2M U106 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .C(n15), .D(n16), .Y(n13) );
  INVX2M U107 ( .A(RX_P_DATA[7]), .Y(n68) );
  AND4X2M U108 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(RX_P_DATA[7]), .D(n37), 
        .Y(n16) );
  NOR3X2M U109 ( .A(n38), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .Y(n37) );
  INVX2M U110 ( .A(RdData_vld), .Y(n77) );
  AND4X2M U111 ( .A(RX_P_DATA[1]), .B(n15), .C(RX_P_DATA[5]), .D(n40), .Y(n20)
         );
  NOR4X1M U112 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n38), .D(n68), .Y(n40)
         );
endmodule


module system_top ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, framing_error, 
        parity_error );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, framing_error, parity_error;
  wire   WrEn, RdEn, RST_SYNC_1, Rd_D_vld, W_INC, TX_CLK, RST_SYNC_2, R_INC,
         FULL, EMPTY, RX_OUT_V, enable_pulse, ALU_EN, ALU_CLK, out_valid,
         RX_CLK, TX_BUSY, CLK_EN, n1, n2, n3, n4, n5;
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

  regfile_ADDR_WIDTH4_MEM_DEPTH16_MEM_WIDTH8 U0_regfile ( .WrEn(WrEn), .RdEn(
        RdEn), .CLK(REF_CLK), .RST(n4), .address(addr), .WrData(Wr_D), .REG0(
        operand_A), .REG1(operand_B), .REG2(UART_config), .REG3(DIV_RATIO), 
        .RdData(Rd_D), .RdData_valid(Rd_D_vld) );
  ASYNC_FIFO_DATA_WIDTH8 U0_ASYNC_FIFO ( .W_CLK(REF_CLK), .W_RST(n4), .W_INC(
        W_INC), .R_CLK(TX_CLK), .R_RST(n2), .R_INC(R_INC), .WR_DATA(
        FIFO_WR_DATA), .RD_DATA(FIFO_RD_DATA), .FULL(FULL), .EMPTY(EMPTY) );
  DATA_SYN_BUS_WIDTH8 U0_DATA_SYN ( .bus_enable(RX_OUT_V), .CLK(REF_CLK), 
        .RST(n4), .unsync_bus(RX_OUT_P), .sync_bus(sync_bus), .enable_pulse(
        enable_pulse) );
  ALU_op_width8_out_width16_func_width4 U0_ALU ( .A(operand_A), .B(operand_B), 
        .ALU_FUN(ALU_FUN), .EN(ALU_EN), .CLK(ALU_CLK), .RST(n4), .out_valid(
        out_valid), .ALU_OUT(ALU_OUT) );
  UART_DATA_WIDTH8_scale_size6 U0_UART ( .TX_IN_P(FIFO_RD_DATA), .TX_IN_V(n1), 
        .TX_CLK(TX_CLK), .RST(n2), .RX_IN_S(RX_IN), .RX_CLK(RX_CLK), 
        .prescale(UART_config[7:2]), .PAR_EN(UART_config[0]), .PAR_TYP(
        UART_config[1]), .TX_OUT_S(TX_OUT), .TX_OUT_V(TX_BUSY), .RX_OUT_P(
        RX_OUT_P), .Parity_error(parity_error), .stop_error(framing_error), 
        .RX_OUT_V(RX_OUT_V) );
  CLK_GATE U0_gating_clk ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  RST_SYNC_0 U0_rst_1 ( .CLK(REF_CLK), .RST(RST), .SYNC_RST(RST_SYNC_1) );
  RST_SYNC_1 U0_rst_2 ( .CLK(UART_CLK), .RST(RST), .SYNC_RST(RST_SYNC_2) );
  PULSE_GEN U0_pulse ( .CLK(TX_CLK), .RST(n2), .LVL_SIG(TX_BUSY), .pulse_SIG(
        R_INC) );
  ClkDiv_divide_ratio8_0 U0_divider_rx ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        div_ratio_mux[3:0]}), .o_div_clk(RX_CLK) );
  ClkDiv_divide_ratio8_1 U0_divider_tx ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(TX_CLK) );
  clk_div_mux_divide_ratio8_scale_size6 U0_mux_div ( .prescale(
        UART_config[7:2]), .i_div_ratio({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, div_ratio_mux[3:0]}) );
  SYS_CTRL_ALU_width16_func_WIDTH4_addr_width4_DATA_WIDTH8 U0_ctrl ( .ALU_OUT(
        ALU_OUT), .out_valid(out_valid), .CLK(REF_CLK), .RST(n4), .RX_D_VLD(
        enable_pulse), .RX_P_DATA(sync_bus), .RdData(Rd_D), .RdData_vld(
        Rd_D_vld), .FIFO_FULL(FULL), .CLK_EN(CLK_EN), .ALU_EN(ALU_EN), 
        .ALU_FUN(ALU_FUN), .addr(addr), .WrEn(WrEn), .RdEn(RdEn), .WrData(Wr_D), .Tx_P_DATA(FIFO_WR_DATA), .Tx_D_VLD(W_INC) );
  INVX2M U2 ( .A(n5), .Y(n4) );
  INVX2M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(EMPTY), .Y(n1) );
  INVX2M U5 ( .A(RST_SYNC_1), .Y(n5) );
  INVX2M U6 ( .A(RST_SYNC_2), .Y(n3) );
endmodule

