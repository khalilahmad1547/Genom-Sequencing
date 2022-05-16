# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new Sequencer_DP work:Sequencer_DP:NOFILE -nosplit
load symbol clk_counter work:clk_counter:NOFILE HIERBOX pin clk input.left pin times_up output.right pinBus cycles input.left [2:0] pinBus p_count output.right [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mapper work:mapper:NOFILE HIERBOX pin clk input.left pin toStore output.right pinBus limit input.left [2:0] pinBus loc input.left [15:0] pinBus read input.left [139:0] pinBus read_loc output.right [155:0] pinBus ref_gen input.left [139:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol counter__parameterized0 work:counter__parameterized0:NOFILE HIERBOX pin clk input.left pin enb input.left pin limit_over output.right pin reset input.left pin upCount input.left pinBus inc input.left [9:0] pinBus initial_count input.left [9:0] pinBus max_to_count input.left [9:0] pinBus p_count output.right [9:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol counter__parameterized0 work:abstract:NOFILE HIERBOX pin clk input.left pin enb input.left pin limit_over output.right pin reset input.left pin upCount input.left pinBus inc input.left [9:0] pinBus initial_count input.left [9:0] pinBus max_to_count input.left [9:0] pinBus p_count output.right [9:0] boxcolor 1 fillcolor 2 minwidth 13%
load port clk input -pg 1 -lvl 0 -x 0 -y 240
load port done output -pg 1 -lvl 3 -x 780 -y 280
load port next_read input -pg 1 -lvl 0 -x 0 -y 90
load port next_ref_gen input -pg 1 -lvl 0 -x 0 -y 340
load port read_cnt_reset input -pg 1 -lvl 0 -x 0 -y 170
load port reads_done output -pg 1 -lvl 3 -x 780 -y 130
load port ref_gen_cnt_reset input -pg 1 -lvl 0 -x 0 -y 420
load port ref_gen_done output -pg 1 -lvl 3 -x 780 -y 360
load port toStore output -pg 1 -lvl 3 -x 780 -y 520
load portBus limit input [2:0] -attr @name limit[2:0] -pg 1 -lvl 0 -x 0 -y 500
load portBus read input [139:0] -attr @name read[139:0] -pg 1 -lvl 0 -x 0 -y 540
load portBus read_loc output [155:0] -attr @name read_loc[155:0] -pg 1 -lvl 3 -x 780 -y 500
load portBus ref_gen input [139:0] -attr @name ref_gen[139:0] -pg 1 -lvl 0 -x 0 -y 560
load portBus t_reads input [9:0] -attr @name t_reads[9:0] -pg 1 -lvl 0 -x 0 -y 150
load portBus t_ref_gen input [9:0] -attr @name t_ref_gen[9:0] -pg 1 -lvl 0 -x 0 -y 400
load inst clk_counter_inst clk_counter work:clk_counter:NOFILE -autohide -attr @cell(#000000) clk_counter -pinBusAttr cycles @name cycles[2:0] -pinBusAttr cycles @attr V=B\"101\" -pinBusAttr p_count @name p_count[2:0] -pinBusAttr p_count @attr n/c -pg 1 -lvl 2 -x 600 -y 270
load inst mapper_inst mapper work:mapper:NOFILE -autohide -attr @cell(#000000) mapper -pinBusAttr limit @name limit[2:0] -pinBusAttr loc @name loc[15:0] -pinBusAttr read @name read[139:0] -pinBusAttr read_loc @name read_loc[155:0] -pinBusAttr ref_gen @name ref_gen[139:0] -pg 1 -lvl 2 -x 600 -y 470
load inst read_counter counter__parameterized0 work:counter__parameterized0:NOFILE -autohide -attr @cell(#000000) counter__parameterized0 -pinBusAttr inc @name inc[9:0] -pinBusAttr inc @attr V=B\"0000000001\" -pinBusAttr initial_count @name initial_count[9:0] -pinBusAttr max_to_count @name max_to_count[9:0] -pinBusAttr p_count @name p_count[9:0] -pinBusAttr p_count @attr n/c -pg 1 -lvl 2 -x 600 -y 60
load inst ref_gen_cnter counter__parameterized0 work:abstract:NOFILE -autohide -attr @cell(#000000) counter__parameterized0 -pinBusAttr inc @name inc[9:0] -pinBusAttr inc @attr V=B\"0000000001\" -pinBusAttr initial_count @name initial_count[9:0] -pinBusAttr max_to_count @name max_to_count[9:0] -pinBusAttr p_count @name p_count[9:0] -pg 1 -lvl 1 -x 210 -y 310
load net <const0> -ground -pin clk_counter_inst cycles[1] -pin mapper_inst loc[15] -pin mapper_inst loc[14] -pin mapper_inst loc[13] -pin mapper_inst loc[12] -pin mapper_inst loc[11] -pin mapper_inst loc[10] -pin read_counter inc[9] -pin read_counter inc[8] -pin read_counter inc[7] -pin read_counter inc[6] -pin read_counter inc[5] -pin read_counter inc[4] -pin read_counter inc[3] -pin read_counter inc[2] -pin read_counter inc[1] -pin read_counter initial_count[9] -pin read_counter initial_count[8] -pin read_counter initial_count[7] -pin read_counter initial_count[6] -pin read_counter initial_count[5] -pin read_counter initial_count[4] -pin read_counter initial_count[3] -pin read_counter initial_count[2] -pin read_counter initial_count[1] -pin read_counter initial_count[0] -pin ref_gen_cnter inc[9] -pin ref_gen_cnter inc[8] -pin ref_gen_cnter inc[7] -pin ref_gen_cnter inc[6] -pin ref_gen_cnter inc[5] -pin ref_gen_cnter inc[4] -pin ref_gen_cnter inc[3] -pin ref_gen_cnter inc[2] -pin ref_gen_cnter inc[1] -pin ref_gen_cnter initial_count[9] -pin ref_gen_cnter initial_count[8] -pin ref_gen_cnter initial_count[7] -pin ref_gen_cnter initial_count[6] -pin ref_gen_cnter initial_count[5] -pin ref_gen_cnter initial_count[4] -pin ref_gen_cnter initial_count[3] -pin ref_gen_cnter initial_count[2] -pin ref_gen_cnter initial_count[1] -pin ref_gen_cnter initial_count[0]
load net <const1> -power -pin clk_counter_inst cycles[2] -pin clk_counter_inst cycles[0] -pin read_counter inc[0] -pin ref_gen_cnter inc[0]
load net clk -port clk -pin clk_counter_inst clk -pin mapper_inst clk -pin read_counter clk -pin ref_gen_cnter clk
netloc clk 1 0 2 20 240 390
load net done -pin clk_counter_inst times_up -port done
netloc done 1 2 1 NJ 280
load net limit[0] -attr @rip limit[0] -port limit[0] -pin mapper_inst limit[0]
load net limit[1] -attr @rip limit[1] -port limit[1] -pin mapper_inst limit[1]
load net limit[2] -attr @rip limit[2] -port limit[2] -pin mapper_inst limit[2]
load net loc[0] -attr @rip p_count[0] -pin mapper_inst loc[0] -pin ref_gen_cnter p_count[0]
load net loc[1] -attr @rip p_count[1] -pin mapper_inst loc[1] -pin ref_gen_cnter p_count[1]
load net loc[2] -attr @rip p_count[2] -pin mapper_inst loc[2] -pin ref_gen_cnter p_count[2]
load net loc[3] -attr @rip p_count[3] -pin mapper_inst loc[3] -pin ref_gen_cnter p_count[3]
load net loc[4] -attr @rip p_count[4] -pin mapper_inst loc[4] -pin ref_gen_cnter p_count[4]
load net loc[5] -attr @rip p_count[5] -pin mapper_inst loc[5] -pin ref_gen_cnter p_count[5]
load net loc[6] -attr @rip p_count[6] -pin mapper_inst loc[6] -pin ref_gen_cnter p_count[6]
load net loc[7] -attr @rip p_count[7] -pin mapper_inst loc[7] -pin ref_gen_cnter p_count[7]
load net loc[8] -attr @rip p_count[8] -pin mapper_inst loc[8] -pin ref_gen_cnter p_count[8]
load net loc[9] -attr @rip p_count[9] -pin mapper_inst loc[9] -pin ref_gen_cnter p_count[9]
load net next_read -port next_read -pin read_counter enb -pin read_counter upCount
netloc next_read 1 0 2 NJ 90 370
load net next_ref_gen -port next_ref_gen -pin ref_gen_cnter enb -pin ref_gen_cnter upCount
netloc next_ref_gen 1 0 1 20 340n
load net read[0] -attr @rip read[0] -pin mapper_inst read[0] -port read[0]
load net read[100] -attr @rip read[100] -pin mapper_inst read[100] -port read[100]
load net read[101] -attr @rip read[101] -pin mapper_inst read[101] -port read[101]
load net read[102] -attr @rip read[102] -pin mapper_inst read[102] -port read[102]
load net read[103] -attr @rip read[103] -pin mapper_inst read[103] -port read[103]
load net read[104] -attr @rip read[104] -pin mapper_inst read[104] -port read[104]
load net read[105] -attr @rip read[105] -pin mapper_inst read[105] -port read[105]
load net read[106] -attr @rip read[106] -pin mapper_inst read[106] -port read[106]
load net read[107] -attr @rip read[107] -pin mapper_inst read[107] -port read[107]
load net read[108] -attr @rip read[108] -pin mapper_inst read[108] -port read[108]
load net read[109] -attr @rip read[109] -pin mapper_inst read[109] -port read[109]
load net read[10] -attr @rip read[10] -pin mapper_inst read[10] -port read[10]
load net read[110] -attr @rip read[110] -pin mapper_inst read[110] -port read[110]
load net read[111] -attr @rip read[111] -pin mapper_inst read[111] -port read[111]
load net read[112] -attr @rip read[112] -pin mapper_inst read[112] -port read[112]
load net read[113] -attr @rip read[113] -pin mapper_inst read[113] -port read[113]
load net read[114] -attr @rip read[114] -pin mapper_inst read[114] -port read[114]
load net read[115] -attr @rip read[115] -pin mapper_inst read[115] -port read[115]
load net read[116] -attr @rip read[116] -pin mapper_inst read[116] -port read[116]
load net read[117] -attr @rip read[117] -pin mapper_inst read[117] -port read[117]
load net read[118] -attr @rip read[118] -pin mapper_inst read[118] -port read[118]
load net read[119] -attr @rip read[119] -pin mapper_inst read[119] -port read[119]
load net read[11] -attr @rip read[11] -pin mapper_inst read[11] -port read[11]
load net read[120] -attr @rip read[120] -pin mapper_inst read[120] -port read[120]
load net read[121] -attr @rip read[121] -pin mapper_inst read[121] -port read[121]
load net read[122] -attr @rip read[122] -pin mapper_inst read[122] -port read[122]
load net read[123] -attr @rip read[123] -pin mapper_inst read[123] -port read[123]
load net read[124] -attr @rip read[124] -pin mapper_inst read[124] -port read[124]
load net read[125] -attr @rip read[125] -pin mapper_inst read[125] -port read[125]
load net read[126] -attr @rip read[126] -pin mapper_inst read[126] -port read[126]
load net read[127] -attr @rip read[127] -pin mapper_inst read[127] -port read[127]
load net read[128] -attr @rip read[128] -pin mapper_inst read[128] -port read[128]
load net read[129] -attr @rip read[129] -pin mapper_inst read[129] -port read[129]
load net read[12] -attr @rip read[12] -pin mapper_inst read[12] -port read[12]
load net read[130] -attr @rip read[130] -pin mapper_inst read[130] -port read[130]
load net read[131] -attr @rip read[131] -pin mapper_inst read[131] -port read[131]
load net read[132] -attr @rip read[132] -pin mapper_inst read[132] -port read[132]
load net read[133] -attr @rip read[133] -pin mapper_inst read[133] -port read[133]
load net read[134] -attr @rip read[134] -pin mapper_inst read[134] -port read[134]
load net read[135] -attr @rip read[135] -pin mapper_inst read[135] -port read[135]
load net read[136] -attr @rip read[136] -pin mapper_inst read[136] -port read[136]
load net read[137] -attr @rip read[137] -pin mapper_inst read[137] -port read[137]
load net read[138] -attr @rip read[138] -pin mapper_inst read[138] -port read[138]
load net read[139] -attr @rip read[139] -pin mapper_inst read[139] -port read[139]
load net read[13] -attr @rip read[13] -pin mapper_inst read[13] -port read[13]
load net read[14] -attr @rip read[14] -pin mapper_inst read[14] -port read[14]
load net read[15] -attr @rip read[15] -pin mapper_inst read[15] -port read[15]
load net read[16] -attr @rip read[16] -pin mapper_inst read[16] -port read[16]
load net read[17] -attr @rip read[17] -pin mapper_inst read[17] -port read[17]
load net read[18] -attr @rip read[18] -pin mapper_inst read[18] -port read[18]
load net read[19] -attr @rip read[19] -pin mapper_inst read[19] -port read[19]
load net read[1] -attr @rip read[1] -pin mapper_inst read[1] -port read[1]
load net read[20] -attr @rip read[20] -pin mapper_inst read[20] -port read[20]
load net read[21] -attr @rip read[21] -pin mapper_inst read[21] -port read[21]
load net read[22] -attr @rip read[22] -pin mapper_inst read[22] -port read[22]
load net read[23] -attr @rip read[23] -pin mapper_inst read[23] -port read[23]
load net read[24] -attr @rip read[24] -pin mapper_inst read[24] -port read[24]
load net read[25] -attr @rip read[25] -pin mapper_inst read[25] -port read[25]
load net read[26] -attr @rip read[26] -pin mapper_inst read[26] -port read[26]
load net read[27] -attr @rip read[27] -pin mapper_inst read[27] -port read[27]
load net read[28] -attr @rip read[28] -pin mapper_inst read[28] -port read[28]
load net read[29] -attr @rip read[29] -pin mapper_inst read[29] -port read[29]
load net read[2] -attr @rip read[2] -pin mapper_inst read[2] -port read[2]
load net read[30] -attr @rip read[30] -pin mapper_inst read[30] -port read[30]
load net read[31] -attr @rip read[31] -pin mapper_inst read[31] -port read[31]
load net read[32] -attr @rip read[32] -pin mapper_inst read[32] -port read[32]
load net read[33] -attr @rip read[33] -pin mapper_inst read[33] -port read[33]
load net read[34] -attr @rip read[34] -pin mapper_inst read[34] -port read[34]
load net read[35] -attr @rip read[35] -pin mapper_inst read[35] -port read[35]
load net read[36] -attr @rip read[36] -pin mapper_inst read[36] -port read[36]
load net read[37] -attr @rip read[37] -pin mapper_inst read[37] -port read[37]
load net read[38] -attr @rip read[38] -pin mapper_inst read[38] -port read[38]
load net read[39] -attr @rip read[39] -pin mapper_inst read[39] -port read[39]
load net read[3] -attr @rip read[3] -pin mapper_inst read[3] -port read[3]
load net read[40] -attr @rip read[40] -pin mapper_inst read[40] -port read[40]
load net read[41] -attr @rip read[41] -pin mapper_inst read[41] -port read[41]
load net read[42] -attr @rip read[42] -pin mapper_inst read[42] -port read[42]
load net read[43] -attr @rip read[43] -pin mapper_inst read[43] -port read[43]
load net read[44] -attr @rip read[44] -pin mapper_inst read[44] -port read[44]
load net read[45] -attr @rip read[45] -pin mapper_inst read[45] -port read[45]
load net read[46] -attr @rip read[46] -pin mapper_inst read[46] -port read[46]
load net read[47] -attr @rip read[47] -pin mapper_inst read[47] -port read[47]
load net read[48] -attr @rip read[48] -pin mapper_inst read[48] -port read[48]
load net read[49] -attr @rip read[49] -pin mapper_inst read[49] -port read[49]
load net read[4] -attr @rip read[4] -pin mapper_inst read[4] -port read[4]
load net read[50] -attr @rip read[50] -pin mapper_inst read[50] -port read[50]
load net read[51] -attr @rip read[51] -pin mapper_inst read[51] -port read[51]
load net read[52] -attr @rip read[52] -pin mapper_inst read[52] -port read[52]
load net read[53] -attr @rip read[53] -pin mapper_inst read[53] -port read[53]
load net read[54] -attr @rip read[54] -pin mapper_inst read[54] -port read[54]
load net read[55] -attr @rip read[55] -pin mapper_inst read[55] -port read[55]
load net read[56] -attr @rip read[56] -pin mapper_inst read[56] -port read[56]
load net read[57] -attr @rip read[57] -pin mapper_inst read[57] -port read[57]
load net read[58] -attr @rip read[58] -pin mapper_inst read[58] -port read[58]
load net read[59] -attr @rip read[59] -pin mapper_inst read[59] -port read[59]
load net read[5] -attr @rip read[5] -pin mapper_inst read[5] -port read[5]
load net read[60] -attr @rip read[60] -pin mapper_inst read[60] -port read[60]
load net read[61] -attr @rip read[61] -pin mapper_inst read[61] -port read[61]
load net read[62] -attr @rip read[62] -pin mapper_inst read[62] -port read[62]
load net read[63] -attr @rip read[63] -pin mapper_inst read[63] -port read[63]
load net read[64] -attr @rip read[64] -pin mapper_inst read[64] -port read[64]
load net read[65] -attr @rip read[65] -pin mapper_inst read[65] -port read[65]
load net read[66] -attr @rip read[66] -pin mapper_inst read[66] -port read[66]
load net read[67] -attr @rip read[67] -pin mapper_inst read[67] -port read[67]
load net read[68] -attr @rip read[68] -pin mapper_inst read[68] -port read[68]
load net read[69] -attr @rip read[69] -pin mapper_inst read[69] -port read[69]
load net read[6] -attr @rip read[6] -pin mapper_inst read[6] -port read[6]
load net read[70] -attr @rip read[70] -pin mapper_inst read[70] -port read[70]
load net read[71] -attr @rip read[71] -pin mapper_inst read[71] -port read[71]
load net read[72] -attr @rip read[72] -pin mapper_inst read[72] -port read[72]
load net read[73] -attr @rip read[73] -pin mapper_inst read[73] -port read[73]
load net read[74] -attr @rip read[74] -pin mapper_inst read[74] -port read[74]
load net read[75] -attr @rip read[75] -pin mapper_inst read[75] -port read[75]
load net read[76] -attr @rip read[76] -pin mapper_inst read[76] -port read[76]
load net read[77] -attr @rip read[77] -pin mapper_inst read[77] -port read[77]
load net read[78] -attr @rip read[78] -pin mapper_inst read[78] -port read[78]
load net read[79] -attr @rip read[79] -pin mapper_inst read[79] -port read[79]
load net read[7] -attr @rip read[7] -pin mapper_inst read[7] -port read[7]
load net read[80] -attr @rip read[80] -pin mapper_inst read[80] -port read[80]
load net read[81] -attr @rip read[81] -pin mapper_inst read[81] -port read[81]
load net read[82] -attr @rip read[82] -pin mapper_inst read[82] -port read[82]
load net read[83] -attr @rip read[83] -pin mapper_inst read[83] -port read[83]
load net read[84] -attr @rip read[84] -pin mapper_inst read[84] -port read[84]
load net read[85] -attr @rip read[85] -pin mapper_inst read[85] -port read[85]
load net read[86] -attr @rip read[86] -pin mapper_inst read[86] -port read[86]
load net read[87] -attr @rip read[87] -pin mapper_inst read[87] -port read[87]
load net read[88] -attr @rip read[88] -pin mapper_inst read[88] -port read[88]
load net read[89] -attr @rip read[89] -pin mapper_inst read[89] -port read[89]
load net read[8] -attr @rip read[8] -pin mapper_inst read[8] -port read[8]
load net read[90] -attr @rip read[90] -pin mapper_inst read[90] -port read[90]
load net read[91] -attr @rip read[91] -pin mapper_inst read[91] -port read[91]
load net read[92] -attr @rip read[92] -pin mapper_inst read[92] -port read[92]
load net read[93] -attr @rip read[93] -pin mapper_inst read[93] -port read[93]
load net read[94] -attr @rip read[94] -pin mapper_inst read[94] -port read[94]
load net read[95] -attr @rip read[95] -pin mapper_inst read[95] -port read[95]
load net read[96] -attr @rip read[96] -pin mapper_inst read[96] -port read[96]
load net read[97] -attr @rip read[97] -pin mapper_inst read[97] -port read[97]
load net read[98] -attr @rip read[98] -pin mapper_inst read[98] -port read[98]
load net read[99] -attr @rip read[99] -pin mapper_inst read[99] -port read[99]
load net read[9] -attr @rip read[9] -pin mapper_inst read[9] -port read[9]
load net read_cnt_reset -port read_cnt_reset -pin read_counter reset
netloc read_cnt_reset 1 0 2 NJ 170 NJ
load net read_loc[0] -attr @rip read_loc[0] -pin mapper_inst read_loc[0] -port read_loc[0]
load net read_loc[100] -attr @rip read_loc[100] -pin mapper_inst read_loc[100] -port read_loc[100]
load net read_loc[101] -attr @rip read_loc[101] -pin mapper_inst read_loc[101] -port read_loc[101]
load net read_loc[102] -attr @rip read_loc[102] -pin mapper_inst read_loc[102] -port read_loc[102]
load net read_loc[103] -attr @rip read_loc[103] -pin mapper_inst read_loc[103] -port read_loc[103]
load net read_loc[104] -attr @rip read_loc[104] -pin mapper_inst read_loc[104] -port read_loc[104]
load net read_loc[105] -attr @rip read_loc[105] -pin mapper_inst read_loc[105] -port read_loc[105]
load net read_loc[106] -attr @rip read_loc[106] -pin mapper_inst read_loc[106] -port read_loc[106]
load net read_loc[107] -attr @rip read_loc[107] -pin mapper_inst read_loc[107] -port read_loc[107]
load net read_loc[108] -attr @rip read_loc[108] -pin mapper_inst read_loc[108] -port read_loc[108]
load net read_loc[109] -attr @rip read_loc[109] -pin mapper_inst read_loc[109] -port read_loc[109]
load net read_loc[10] -attr @rip read_loc[10] -pin mapper_inst read_loc[10] -port read_loc[10]
load net read_loc[110] -attr @rip read_loc[110] -pin mapper_inst read_loc[110] -port read_loc[110]
load net read_loc[111] -attr @rip read_loc[111] -pin mapper_inst read_loc[111] -port read_loc[111]
load net read_loc[112] -attr @rip read_loc[112] -pin mapper_inst read_loc[112] -port read_loc[112]
load net read_loc[113] -attr @rip read_loc[113] -pin mapper_inst read_loc[113] -port read_loc[113]
load net read_loc[114] -attr @rip read_loc[114] -pin mapper_inst read_loc[114] -port read_loc[114]
load net read_loc[115] -attr @rip read_loc[115] -pin mapper_inst read_loc[115] -port read_loc[115]
load net read_loc[116] -attr @rip read_loc[116] -pin mapper_inst read_loc[116] -port read_loc[116]
load net read_loc[117] -attr @rip read_loc[117] -pin mapper_inst read_loc[117] -port read_loc[117]
load net read_loc[118] -attr @rip read_loc[118] -pin mapper_inst read_loc[118] -port read_loc[118]
load net read_loc[119] -attr @rip read_loc[119] -pin mapper_inst read_loc[119] -port read_loc[119]
load net read_loc[11] -attr @rip read_loc[11] -pin mapper_inst read_loc[11] -port read_loc[11]
load net read_loc[120] -attr @rip read_loc[120] -pin mapper_inst read_loc[120] -port read_loc[120]
load net read_loc[121] -attr @rip read_loc[121] -pin mapper_inst read_loc[121] -port read_loc[121]
load net read_loc[122] -attr @rip read_loc[122] -pin mapper_inst read_loc[122] -port read_loc[122]
load net read_loc[123] -attr @rip read_loc[123] -pin mapper_inst read_loc[123] -port read_loc[123]
load net read_loc[124] -attr @rip read_loc[124] -pin mapper_inst read_loc[124] -port read_loc[124]
load net read_loc[125] -attr @rip read_loc[125] -pin mapper_inst read_loc[125] -port read_loc[125]
load net read_loc[126] -attr @rip read_loc[126] -pin mapper_inst read_loc[126] -port read_loc[126]
load net read_loc[127] -attr @rip read_loc[127] -pin mapper_inst read_loc[127] -port read_loc[127]
load net read_loc[128] -attr @rip read_loc[128] -pin mapper_inst read_loc[128] -port read_loc[128]
load net read_loc[129] -attr @rip read_loc[129] -pin mapper_inst read_loc[129] -port read_loc[129]
load net read_loc[12] -attr @rip read_loc[12] -pin mapper_inst read_loc[12] -port read_loc[12]
load net read_loc[130] -attr @rip read_loc[130] -pin mapper_inst read_loc[130] -port read_loc[130]
load net read_loc[131] -attr @rip read_loc[131] -pin mapper_inst read_loc[131] -port read_loc[131]
load net read_loc[132] -attr @rip read_loc[132] -pin mapper_inst read_loc[132] -port read_loc[132]
load net read_loc[133] -attr @rip read_loc[133] -pin mapper_inst read_loc[133] -port read_loc[133]
load net read_loc[134] -attr @rip read_loc[134] -pin mapper_inst read_loc[134] -port read_loc[134]
load net read_loc[135] -attr @rip read_loc[135] -pin mapper_inst read_loc[135] -port read_loc[135]
load net read_loc[136] -attr @rip read_loc[136] -pin mapper_inst read_loc[136] -port read_loc[136]
load net read_loc[137] -attr @rip read_loc[137] -pin mapper_inst read_loc[137] -port read_loc[137]
load net read_loc[138] -attr @rip read_loc[138] -pin mapper_inst read_loc[138] -port read_loc[138]
load net read_loc[139] -attr @rip read_loc[139] -pin mapper_inst read_loc[139] -port read_loc[139]
load net read_loc[13] -attr @rip read_loc[13] -pin mapper_inst read_loc[13] -port read_loc[13]
load net read_loc[140] -attr @rip read_loc[140] -pin mapper_inst read_loc[140] -port read_loc[140]
load net read_loc[141] -attr @rip read_loc[141] -pin mapper_inst read_loc[141] -port read_loc[141]
load net read_loc[142] -attr @rip read_loc[142] -pin mapper_inst read_loc[142] -port read_loc[142]
load net read_loc[143] -attr @rip read_loc[143] -pin mapper_inst read_loc[143] -port read_loc[143]
load net read_loc[144] -attr @rip read_loc[144] -pin mapper_inst read_loc[144] -port read_loc[144]
load net read_loc[145] -attr @rip read_loc[145] -pin mapper_inst read_loc[145] -port read_loc[145]
load net read_loc[146] -attr @rip read_loc[146] -pin mapper_inst read_loc[146] -port read_loc[146]
load net read_loc[147] -attr @rip read_loc[147] -pin mapper_inst read_loc[147] -port read_loc[147]
load net read_loc[148] -attr @rip read_loc[148] -pin mapper_inst read_loc[148] -port read_loc[148]
load net read_loc[149] -attr @rip read_loc[149] -pin mapper_inst read_loc[149] -port read_loc[149]
load net read_loc[14] -attr @rip read_loc[14] -pin mapper_inst read_loc[14] -port read_loc[14]
load net read_loc[150] -attr @rip read_loc[150] -pin mapper_inst read_loc[150] -port read_loc[150]
load net read_loc[151] -attr @rip read_loc[151] -pin mapper_inst read_loc[151] -port read_loc[151]
load net read_loc[152] -attr @rip read_loc[152] -pin mapper_inst read_loc[152] -port read_loc[152]
load net read_loc[153] -attr @rip read_loc[153] -pin mapper_inst read_loc[153] -port read_loc[153]
load net read_loc[154] -attr @rip read_loc[154] -pin mapper_inst read_loc[154] -port read_loc[154]
load net read_loc[155] -attr @rip read_loc[155] -pin mapper_inst read_loc[155] -port read_loc[155]
load net read_loc[15] -attr @rip read_loc[15] -pin mapper_inst read_loc[15] -port read_loc[15]
load net read_loc[16] -attr @rip read_loc[16] -pin mapper_inst read_loc[16] -port read_loc[16]
load net read_loc[17] -attr @rip read_loc[17] -pin mapper_inst read_loc[17] -port read_loc[17]
load net read_loc[18] -attr @rip read_loc[18] -pin mapper_inst read_loc[18] -port read_loc[18]
load net read_loc[19] -attr @rip read_loc[19] -pin mapper_inst read_loc[19] -port read_loc[19]
load net read_loc[1] -attr @rip read_loc[1] -pin mapper_inst read_loc[1] -port read_loc[1]
load net read_loc[20] -attr @rip read_loc[20] -pin mapper_inst read_loc[20] -port read_loc[20]
load net read_loc[21] -attr @rip read_loc[21] -pin mapper_inst read_loc[21] -port read_loc[21]
load net read_loc[22] -attr @rip read_loc[22] -pin mapper_inst read_loc[22] -port read_loc[22]
load net read_loc[23] -attr @rip read_loc[23] -pin mapper_inst read_loc[23] -port read_loc[23]
load net read_loc[24] -attr @rip read_loc[24] -pin mapper_inst read_loc[24] -port read_loc[24]
load net read_loc[25] -attr @rip read_loc[25] -pin mapper_inst read_loc[25] -port read_loc[25]
load net read_loc[26] -attr @rip read_loc[26] -pin mapper_inst read_loc[26] -port read_loc[26]
load net read_loc[27] -attr @rip read_loc[27] -pin mapper_inst read_loc[27] -port read_loc[27]
load net read_loc[28] -attr @rip read_loc[28] -pin mapper_inst read_loc[28] -port read_loc[28]
load net read_loc[29] -attr @rip read_loc[29] -pin mapper_inst read_loc[29] -port read_loc[29]
load net read_loc[2] -attr @rip read_loc[2] -pin mapper_inst read_loc[2] -port read_loc[2]
load net read_loc[30] -attr @rip read_loc[30] -pin mapper_inst read_loc[30] -port read_loc[30]
load net read_loc[31] -attr @rip read_loc[31] -pin mapper_inst read_loc[31] -port read_loc[31]
load net read_loc[32] -attr @rip read_loc[32] -pin mapper_inst read_loc[32] -port read_loc[32]
load net read_loc[33] -attr @rip read_loc[33] -pin mapper_inst read_loc[33] -port read_loc[33]
load net read_loc[34] -attr @rip read_loc[34] -pin mapper_inst read_loc[34] -port read_loc[34]
load net read_loc[35] -attr @rip read_loc[35] -pin mapper_inst read_loc[35] -port read_loc[35]
load net read_loc[36] -attr @rip read_loc[36] -pin mapper_inst read_loc[36] -port read_loc[36]
load net read_loc[37] -attr @rip read_loc[37] -pin mapper_inst read_loc[37] -port read_loc[37]
load net read_loc[38] -attr @rip read_loc[38] -pin mapper_inst read_loc[38] -port read_loc[38]
load net read_loc[39] -attr @rip read_loc[39] -pin mapper_inst read_loc[39] -port read_loc[39]
load net read_loc[3] -attr @rip read_loc[3] -pin mapper_inst read_loc[3] -port read_loc[3]
load net read_loc[40] -attr @rip read_loc[40] -pin mapper_inst read_loc[40] -port read_loc[40]
load net read_loc[41] -attr @rip read_loc[41] -pin mapper_inst read_loc[41] -port read_loc[41]
load net read_loc[42] -attr @rip read_loc[42] -pin mapper_inst read_loc[42] -port read_loc[42]
load net read_loc[43] -attr @rip read_loc[43] -pin mapper_inst read_loc[43] -port read_loc[43]
load net read_loc[44] -attr @rip read_loc[44] -pin mapper_inst read_loc[44] -port read_loc[44]
load net read_loc[45] -attr @rip read_loc[45] -pin mapper_inst read_loc[45] -port read_loc[45]
load net read_loc[46] -attr @rip read_loc[46] -pin mapper_inst read_loc[46] -port read_loc[46]
load net read_loc[47] -attr @rip read_loc[47] -pin mapper_inst read_loc[47] -port read_loc[47]
load net read_loc[48] -attr @rip read_loc[48] -pin mapper_inst read_loc[48] -port read_loc[48]
load net read_loc[49] -attr @rip read_loc[49] -pin mapper_inst read_loc[49] -port read_loc[49]
load net read_loc[4] -attr @rip read_loc[4] -pin mapper_inst read_loc[4] -port read_loc[4]
load net read_loc[50] -attr @rip read_loc[50] -pin mapper_inst read_loc[50] -port read_loc[50]
load net read_loc[51] -attr @rip read_loc[51] -pin mapper_inst read_loc[51] -port read_loc[51]
load net read_loc[52] -attr @rip read_loc[52] -pin mapper_inst read_loc[52] -port read_loc[52]
load net read_loc[53] -attr @rip read_loc[53] -pin mapper_inst read_loc[53] -port read_loc[53]
load net read_loc[54] -attr @rip read_loc[54] -pin mapper_inst read_loc[54] -port read_loc[54]
load net read_loc[55] -attr @rip read_loc[55] -pin mapper_inst read_loc[55] -port read_loc[55]
load net read_loc[56] -attr @rip read_loc[56] -pin mapper_inst read_loc[56] -port read_loc[56]
load net read_loc[57] -attr @rip read_loc[57] -pin mapper_inst read_loc[57] -port read_loc[57]
load net read_loc[58] -attr @rip read_loc[58] -pin mapper_inst read_loc[58] -port read_loc[58]
load net read_loc[59] -attr @rip read_loc[59] -pin mapper_inst read_loc[59] -port read_loc[59]
load net read_loc[5] -attr @rip read_loc[5] -pin mapper_inst read_loc[5] -port read_loc[5]
load net read_loc[60] -attr @rip read_loc[60] -pin mapper_inst read_loc[60] -port read_loc[60]
load net read_loc[61] -attr @rip read_loc[61] -pin mapper_inst read_loc[61] -port read_loc[61]
load net read_loc[62] -attr @rip read_loc[62] -pin mapper_inst read_loc[62] -port read_loc[62]
load net read_loc[63] -attr @rip read_loc[63] -pin mapper_inst read_loc[63] -port read_loc[63]
load net read_loc[64] -attr @rip read_loc[64] -pin mapper_inst read_loc[64] -port read_loc[64]
load net read_loc[65] -attr @rip read_loc[65] -pin mapper_inst read_loc[65] -port read_loc[65]
load net read_loc[66] -attr @rip read_loc[66] -pin mapper_inst read_loc[66] -port read_loc[66]
load net read_loc[67] -attr @rip read_loc[67] -pin mapper_inst read_loc[67] -port read_loc[67]
load net read_loc[68] -attr @rip read_loc[68] -pin mapper_inst read_loc[68] -port read_loc[68]
load net read_loc[69] -attr @rip read_loc[69] -pin mapper_inst read_loc[69] -port read_loc[69]
load net read_loc[6] -attr @rip read_loc[6] -pin mapper_inst read_loc[6] -port read_loc[6]
load net read_loc[70] -attr @rip read_loc[70] -pin mapper_inst read_loc[70] -port read_loc[70]
load net read_loc[71] -attr @rip read_loc[71] -pin mapper_inst read_loc[71] -port read_loc[71]
load net read_loc[72] -attr @rip read_loc[72] -pin mapper_inst read_loc[72] -port read_loc[72]
load net read_loc[73] -attr @rip read_loc[73] -pin mapper_inst read_loc[73] -port read_loc[73]
load net read_loc[74] -attr @rip read_loc[74] -pin mapper_inst read_loc[74] -port read_loc[74]
load net read_loc[75] -attr @rip read_loc[75] -pin mapper_inst read_loc[75] -port read_loc[75]
load net read_loc[76] -attr @rip read_loc[76] -pin mapper_inst read_loc[76] -port read_loc[76]
load net read_loc[77] -attr @rip read_loc[77] -pin mapper_inst read_loc[77] -port read_loc[77]
load net read_loc[78] -attr @rip read_loc[78] -pin mapper_inst read_loc[78] -port read_loc[78]
load net read_loc[79] -attr @rip read_loc[79] -pin mapper_inst read_loc[79] -port read_loc[79]
load net read_loc[7] -attr @rip read_loc[7] -pin mapper_inst read_loc[7] -port read_loc[7]
load net read_loc[80] -attr @rip read_loc[80] -pin mapper_inst read_loc[80] -port read_loc[80]
load net read_loc[81] -attr @rip read_loc[81] -pin mapper_inst read_loc[81] -port read_loc[81]
load net read_loc[82] -attr @rip read_loc[82] -pin mapper_inst read_loc[82] -port read_loc[82]
load net read_loc[83] -attr @rip read_loc[83] -pin mapper_inst read_loc[83] -port read_loc[83]
load net read_loc[84] -attr @rip read_loc[84] -pin mapper_inst read_loc[84] -port read_loc[84]
load net read_loc[85] -attr @rip read_loc[85] -pin mapper_inst read_loc[85] -port read_loc[85]
load net read_loc[86] -attr @rip read_loc[86] -pin mapper_inst read_loc[86] -port read_loc[86]
load net read_loc[87] -attr @rip read_loc[87] -pin mapper_inst read_loc[87] -port read_loc[87]
load net read_loc[88] -attr @rip read_loc[88] -pin mapper_inst read_loc[88] -port read_loc[88]
load net read_loc[89] -attr @rip read_loc[89] -pin mapper_inst read_loc[89] -port read_loc[89]
load net read_loc[8] -attr @rip read_loc[8] -pin mapper_inst read_loc[8] -port read_loc[8]
load net read_loc[90] -attr @rip read_loc[90] -pin mapper_inst read_loc[90] -port read_loc[90]
load net read_loc[91] -attr @rip read_loc[91] -pin mapper_inst read_loc[91] -port read_loc[91]
load net read_loc[92] -attr @rip read_loc[92] -pin mapper_inst read_loc[92] -port read_loc[92]
load net read_loc[93] -attr @rip read_loc[93] -pin mapper_inst read_loc[93] -port read_loc[93]
load net read_loc[94] -attr @rip read_loc[94] -pin mapper_inst read_loc[94] -port read_loc[94]
load net read_loc[95] -attr @rip read_loc[95] -pin mapper_inst read_loc[95] -port read_loc[95]
load net read_loc[96] -attr @rip read_loc[96] -pin mapper_inst read_loc[96] -port read_loc[96]
load net read_loc[97] -attr @rip read_loc[97] -pin mapper_inst read_loc[97] -port read_loc[97]
load net read_loc[98] -attr @rip read_loc[98] -pin mapper_inst read_loc[98] -port read_loc[98]
load net read_loc[99] -attr @rip read_loc[99] -pin mapper_inst read_loc[99] -port read_loc[99]
load net read_loc[9] -attr @rip read_loc[9] -pin mapper_inst read_loc[9] -port read_loc[9]
load net reads_done -pin read_counter limit_over -port reads_done
netloc reads_done 1 2 1 NJ 130
load net ref_gen[0] -attr @rip ref_gen[0] -pin mapper_inst ref_gen[0] -port ref_gen[0]
load net ref_gen[100] -attr @rip ref_gen[100] -pin mapper_inst ref_gen[100] -port ref_gen[100]
load net ref_gen[101] -attr @rip ref_gen[101] -pin mapper_inst ref_gen[101] -port ref_gen[101]
load net ref_gen[102] -attr @rip ref_gen[102] -pin mapper_inst ref_gen[102] -port ref_gen[102]
load net ref_gen[103] -attr @rip ref_gen[103] -pin mapper_inst ref_gen[103] -port ref_gen[103]
load net ref_gen[104] -attr @rip ref_gen[104] -pin mapper_inst ref_gen[104] -port ref_gen[104]
load net ref_gen[105] -attr @rip ref_gen[105] -pin mapper_inst ref_gen[105] -port ref_gen[105]
load net ref_gen[106] -attr @rip ref_gen[106] -pin mapper_inst ref_gen[106] -port ref_gen[106]
load net ref_gen[107] -attr @rip ref_gen[107] -pin mapper_inst ref_gen[107] -port ref_gen[107]
load net ref_gen[108] -attr @rip ref_gen[108] -pin mapper_inst ref_gen[108] -port ref_gen[108]
load net ref_gen[109] -attr @rip ref_gen[109] -pin mapper_inst ref_gen[109] -port ref_gen[109]
load net ref_gen[10] -attr @rip ref_gen[10] -pin mapper_inst ref_gen[10] -port ref_gen[10]
load net ref_gen[110] -attr @rip ref_gen[110] -pin mapper_inst ref_gen[110] -port ref_gen[110]
load net ref_gen[111] -attr @rip ref_gen[111] -pin mapper_inst ref_gen[111] -port ref_gen[111]
load net ref_gen[112] -attr @rip ref_gen[112] -pin mapper_inst ref_gen[112] -port ref_gen[112]
load net ref_gen[113] -attr @rip ref_gen[113] -pin mapper_inst ref_gen[113] -port ref_gen[113]
load net ref_gen[114] -attr @rip ref_gen[114] -pin mapper_inst ref_gen[114] -port ref_gen[114]
load net ref_gen[115] -attr @rip ref_gen[115] -pin mapper_inst ref_gen[115] -port ref_gen[115]
load net ref_gen[116] -attr @rip ref_gen[116] -pin mapper_inst ref_gen[116] -port ref_gen[116]
load net ref_gen[117] -attr @rip ref_gen[117] -pin mapper_inst ref_gen[117] -port ref_gen[117]
load net ref_gen[118] -attr @rip ref_gen[118] -pin mapper_inst ref_gen[118] -port ref_gen[118]
load net ref_gen[119] -attr @rip ref_gen[119] -pin mapper_inst ref_gen[119] -port ref_gen[119]
load net ref_gen[11] -attr @rip ref_gen[11] -pin mapper_inst ref_gen[11] -port ref_gen[11]
load net ref_gen[120] -attr @rip ref_gen[120] -pin mapper_inst ref_gen[120] -port ref_gen[120]
load net ref_gen[121] -attr @rip ref_gen[121] -pin mapper_inst ref_gen[121] -port ref_gen[121]
load net ref_gen[122] -attr @rip ref_gen[122] -pin mapper_inst ref_gen[122] -port ref_gen[122]
load net ref_gen[123] -attr @rip ref_gen[123] -pin mapper_inst ref_gen[123] -port ref_gen[123]
load net ref_gen[124] -attr @rip ref_gen[124] -pin mapper_inst ref_gen[124] -port ref_gen[124]
load net ref_gen[125] -attr @rip ref_gen[125] -pin mapper_inst ref_gen[125] -port ref_gen[125]
load net ref_gen[126] -attr @rip ref_gen[126] -pin mapper_inst ref_gen[126] -port ref_gen[126]
load net ref_gen[127] -attr @rip ref_gen[127] -pin mapper_inst ref_gen[127] -port ref_gen[127]
load net ref_gen[128] -attr @rip ref_gen[128] -pin mapper_inst ref_gen[128] -port ref_gen[128]
load net ref_gen[129] -attr @rip ref_gen[129] -pin mapper_inst ref_gen[129] -port ref_gen[129]
load net ref_gen[12] -attr @rip ref_gen[12] -pin mapper_inst ref_gen[12] -port ref_gen[12]
load net ref_gen[130] -attr @rip ref_gen[130] -pin mapper_inst ref_gen[130] -port ref_gen[130]
load net ref_gen[131] -attr @rip ref_gen[131] -pin mapper_inst ref_gen[131] -port ref_gen[131]
load net ref_gen[132] -attr @rip ref_gen[132] -pin mapper_inst ref_gen[132] -port ref_gen[132]
load net ref_gen[133] -attr @rip ref_gen[133] -pin mapper_inst ref_gen[133] -port ref_gen[133]
load net ref_gen[134] -attr @rip ref_gen[134] -pin mapper_inst ref_gen[134] -port ref_gen[134]
load net ref_gen[135] -attr @rip ref_gen[135] -pin mapper_inst ref_gen[135] -port ref_gen[135]
load net ref_gen[136] -attr @rip ref_gen[136] -pin mapper_inst ref_gen[136] -port ref_gen[136]
load net ref_gen[137] -attr @rip ref_gen[137] -pin mapper_inst ref_gen[137] -port ref_gen[137]
load net ref_gen[138] -attr @rip ref_gen[138] -pin mapper_inst ref_gen[138] -port ref_gen[138]
load net ref_gen[139] -attr @rip ref_gen[139] -pin mapper_inst ref_gen[139] -port ref_gen[139]
load net ref_gen[13] -attr @rip ref_gen[13] -pin mapper_inst ref_gen[13] -port ref_gen[13]
load net ref_gen[14] -attr @rip ref_gen[14] -pin mapper_inst ref_gen[14] -port ref_gen[14]
load net ref_gen[15] -attr @rip ref_gen[15] -pin mapper_inst ref_gen[15] -port ref_gen[15]
load net ref_gen[16] -attr @rip ref_gen[16] -pin mapper_inst ref_gen[16] -port ref_gen[16]
load net ref_gen[17] -attr @rip ref_gen[17] -pin mapper_inst ref_gen[17] -port ref_gen[17]
load net ref_gen[18] -attr @rip ref_gen[18] -pin mapper_inst ref_gen[18] -port ref_gen[18]
load net ref_gen[19] -attr @rip ref_gen[19] -pin mapper_inst ref_gen[19] -port ref_gen[19]
load net ref_gen[1] -attr @rip ref_gen[1] -pin mapper_inst ref_gen[1] -port ref_gen[1]
load net ref_gen[20] -attr @rip ref_gen[20] -pin mapper_inst ref_gen[20] -port ref_gen[20]
load net ref_gen[21] -attr @rip ref_gen[21] -pin mapper_inst ref_gen[21] -port ref_gen[21]
load net ref_gen[22] -attr @rip ref_gen[22] -pin mapper_inst ref_gen[22] -port ref_gen[22]
load net ref_gen[23] -attr @rip ref_gen[23] -pin mapper_inst ref_gen[23] -port ref_gen[23]
load net ref_gen[24] -attr @rip ref_gen[24] -pin mapper_inst ref_gen[24] -port ref_gen[24]
load net ref_gen[25] -attr @rip ref_gen[25] -pin mapper_inst ref_gen[25] -port ref_gen[25]
load net ref_gen[26] -attr @rip ref_gen[26] -pin mapper_inst ref_gen[26] -port ref_gen[26]
load net ref_gen[27] -attr @rip ref_gen[27] -pin mapper_inst ref_gen[27] -port ref_gen[27]
load net ref_gen[28] -attr @rip ref_gen[28] -pin mapper_inst ref_gen[28] -port ref_gen[28]
load net ref_gen[29] -attr @rip ref_gen[29] -pin mapper_inst ref_gen[29] -port ref_gen[29]
load net ref_gen[2] -attr @rip ref_gen[2] -pin mapper_inst ref_gen[2] -port ref_gen[2]
load net ref_gen[30] -attr @rip ref_gen[30] -pin mapper_inst ref_gen[30] -port ref_gen[30]
load net ref_gen[31] -attr @rip ref_gen[31] -pin mapper_inst ref_gen[31] -port ref_gen[31]
load net ref_gen[32] -attr @rip ref_gen[32] -pin mapper_inst ref_gen[32] -port ref_gen[32]
load net ref_gen[33] -attr @rip ref_gen[33] -pin mapper_inst ref_gen[33] -port ref_gen[33]
load net ref_gen[34] -attr @rip ref_gen[34] -pin mapper_inst ref_gen[34] -port ref_gen[34]
load net ref_gen[35] -attr @rip ref_gen[35] -pin mapper_inst ref_gen[35] -port ref_gen[35]
load net ref_gen[36] -attr @rip ref_gen[36] -pin mapper_inst ref_gen[36] -port ref_gen[36]
load net ref_gen[37] -attr @rip ref_gen[37] -pin mapper_inst ref_gen[37] -port ref_gen[37]
load net ref_gen[38] -attr @rip ref_gen[38] -pin mapper_inst ref_gen[38] -port ref_gen[38]
load net ref_gen[39] -attr @rip ref_gen[39] -pin mapper_inst ref_gen[39] -port ref_gen[39]
load net ref_gen[3] -attr @rip ref_gen[3] -pin mapper_inst ref_gen[3] -port ref_gen[3]
load net ref_gen[40] -attr @rip ref_gen[40] -pin mapper_inst ref_gen[40] -port ref_gen[40]
load net ref_gen[41] -attr @rip ref_gen[41] -pin mapper_inst ref_gen[41] -port ref_gen[41]
load net ref_gen[42] -attr @rip ref_gen[42] -pin mapper_inst ref_gen[42] -port ref_gen[42]
load net ref_gen[43] -attr @rip ref_gen[43] -pin mapper_inst ref_gen[43] -port ref_gen[43]
load net ref_gen[44] -attr @rip ref_gen[44] -pin mapper_inst ref_gen[44] -port ref_gen[44]
load net ref_gen[45] -attr @rip ref_gen[45] -pin mapper_inst ref_gen[45] -port ref_gen[45]
load net ref_gen[46] -attr @rip ref_gen[46] -pin mapper_inst ref_gen[46] -port ref_gen[46]
load net ref_gen[47] -attr @rip ref_gen[47] -pin mapper_inst ref_gen[47] -port ref_gen[47]
load net ref_gen[48] -attr @rip ref_gen[48] -pin mapper_inst ref_gen[48] -port ref_gen[48]
load net ref_gen[49] -attr @rip ref_gen[49] -pin mapper_inst ref_gen[49] -port ref_gen[49]
load net ref_gen[4] -attr @rip ref_gen[4] -pin mapper_inst ref_gen[4] -port ref_gen[4]
load net ref_gen[50] -attr @rip ref_gen[50] -pin mapper_inst ref_gen[50] -port ref_gen[50]
load net ref_gen[51] -attr @rip ref_gen[51] -pin mapper_inst ref_gen[51] -port ref_gen[51]
load net ref_gen[52] -attr @rip ref_gen[52] -pin mapper_inst ref_gen[52] -port ref_gen[52]
load net ref_gen[53] -attr @rip ref_gen[53] -pin mapper_inst ref_gen[53] -port ref_gen[53]
load net ref_gen[54] -attr @rip ref_gen[54] -pin mapper_inst ref_gen[54] -port ref_gen[54]
load net ref_gen[55] -attr @rip ref_gen[55] -pin mapper_inst ref_gen[55] -port ref_gen[55]
load net ref_gen[56] -attr @rip ref_gen[56] -pin mapper_inst ref_gen[56] -port ref_gen[56]
load net ref_gen[57] -attr @rip ref_gen[57] -pin mapper_inst ref_gen[57] -port ref_gen[57]
load net ref_gen[58] -attr @rip ref_gen[58] -pin mapper_inst ref_gen[58] -port ref_gen[58]
load net ref_gen[59] -attr @rip ref_gen[59] -pin mapper_inst ref_gen[59] -port ref_gen[59]
load net ref_gen[5] -attr @rip ref_gen[5] -pin mapper_inst ref_gen[5] -port ref_gen[5]
load net ref_gen[60] -attr @rip ref_gen[60] -pin mapper_inst ref_gen[60] -port ref_gen[60]
load net ref_gen[61] -attr @rip ref_gen[61] -pin mapper_inst ref_gen[61] -port ref_gen[61]
load net ref_gen[62] -attr @rip ref_gen[62] -pin mapper_inst ref_gen[62] -port ref_gen[62]
load net ref_gen[63] -attr @rip ref_gen[63] -pin mapper_inst ref_gen[63] -port ref_gen[63]
load net ref_gen[64] -attr @rip ref_gen[64] -pin mapper_inst ref_gen[64] -port ref_gen[64]
load net ref_gen[65] -attr @rip ref_gen[65] -pin mapper_inst ref_gen[65] -port ref_gen[65]
load net ref_gen[66] -attr @rip ref_gen[66] -pin mapper_inst ref_gen[66] -port ref_gen[66]
load net ref_gen[67] -attr @rip ref_gen[67] -pin mapper_inst ref_gen[67] -port ref_gen[67]
load net ref_gen[68] -attr @rip ref_gen[68] -pin mapper_inst ref_gen[68] -port ref_gen[68]
load net ref_gen[69] -attr @rip ref_gen[69] -pin mapper_inst ref_gen[69] -port ref_gen[69]
load net ref_gen[6] -attr @rip ref_gen[6] -pin mapper_inst ref_gen[6] -port ref_gen[6]
load net ref_gen[70] -attr @rip ref_gen[70] -pin mapper_inst ref_gen[70] -port ref_gen[70]
load net ref_gen[71] -attr @rip ref_gen[71] -pin mapper_inst ref_gen[71] -port ref_gen[71]
load net ref_gen[72] -attr @rip ref_gen[72] -pin mapper_inst ref_gen[72] -port ref_gen[72]
load net ref_gen[73] -attr @rip ref_gen[73] -pin mapper_inst ref_gen[73] -port ref_gen[73]
load net ref_gen[74] -attr @rip ref_gen[74] -pin mapper_inst ref_gen[74] -port ref_gen[74]
load net ref_gen[75] -attr @rip ref_gen[75] -pin mapper_inst ref_gen[75] -port ref_gen[75]
load net ref_gen[76] -attr @rip ref_gen[76] -pin mapper_inst ref_gen[76] -port ref_gen[76]
load net ref_gen[77] -attr @rip ref_gen[77] -pin mapper_inst ref_gen[77] -port ref_gen[77]
load net ref_gen[78] -attr @rip ref_gen[78] -pin mapper_inst ref_gen[78] -port ref_gen[78]
load net ref_gen[79] -attr @rip ref_gen[79] -pin mapper_inst ref_gen[79] -port ref_gen[79]
load net ref_gen[7] -attr @rip ref_gen[7] -pin mapper_inst ref_gen[7] -port ref_gen[7]
load net ref_gen[80] -attr @rip ref_gen[80] -pin mapper_inst ref_gen[80] -port ref_gen[80]
load net ref_gen[81] -attr @rip ref_gen[81] -pin mapper_inst ref_gen[81] -port ref_gen[81]
load net ref_gen[82] -attr @rip ref_gen[82] -pin mapper_inst ref_gen[82] -port ref_gen[82]
load net ref_gen[83] -attr @rip ref_gen[83] -pin mapper_inst ref_gen[83] -port ref_gen[83]
load net ref_gen[84] -attr @rip ref_gen[84] -pin mapper_inst ref_gen[84] -port ref_gen[84]
load net ref_gen[85] -attr @rip ref_gen[85] -pin mapper_inst ref_gen[85] -port ref_gen[85]
load net ref_gen[86] -attr @rip ref_gen[86] -pin mapper_inst ref_gen[86] -port ref_gen[86]
load net ref_gen[87] -attr @rip ref_gen[87] -pin mapper_inst ref_gen[87] -port ref_gen[87]
load net ref_gen[88] -attr @rip ref_gen[88] -pin mapper_inst ref_gen[88] -port ref_gen[88]
load net ref_gen[89] -attr @rip ref_gen[89] -pin mapper_inst ref_gen[89] -port ref_gen[89]
load net ref_gen[8] -attr @rip ref_gen[8] -pin mapper_inst ref_gen[8] -port ref_gen[8]
load net ref_gen[90] -attr @rip ref_gen[90] -pin mapper_inst ref_gen[90] -port ref_gen[90]
load net ref_gen[91] -attr @rip ref_gen[91] -pin mapper_inst ref_gen[91] -port ref_gen[91]
load net ref_gen[92] -attr @rip ref_gen[92] -pin mapper_inst ref_gen[92] -port ref_gen[92]
load net ref_gen[93] -attr @rip ref_gen[93] -pin mapper_inst ref_gen[93] -port ref_gen[93]
load net ref_gen[94] -attr @rip ref_gen[94] -pin mapper_inst ref_gen[94] -port ref_gen[94]
load net ref_gen[95] -attr @rip ref_gen[95] -pin mapper_inst ref_gen[95] -port ref_gen[95]
load net ref_gen[96] -attr @rip ref_gen[96] -pin mapper_inst ref_gen[96] -port ref_gen[96]
load net ref_gen[97] -attr @rip ref_gen[97] -pin mapper_inst ref_gen[97] -port ref_gen[97]
load net ref_gen[98] -attr @rip ref_gen[98] -pin mapper_inst ref_gen[98] -port ref_gen[98]
load net ref_gen[99] -attr @rip ref_gen[99] -pin mapper_inst ref_gen[99] -port ref_gen[99]
load net ref_gen[9] -attr @rip ref_gen[9] -pin mapper_inst ref_gen[9] -port ref_gen[9]
load net ref_gen_cnt_reset -port ref_gen_cnt_reset -pin ref_gen_cnter reset
netloc ref_gen_cnt_reset 1 0 1 NJ 420
load net ref_gen_done -pin ref_gen_cnter limit_over -port ref_gen_done
netloc ref_gen_done 1 1 2 NJ 360 NJ
load net t_reads[0] -attr @rip t_reads[0] -pin read_counter max_to_count[0] -port t_reads[0]
load net t_reads[1] -attr @rip t_reads[1] -pin read_counter max_to_count[1] -port t_reads[1]
load net t_reads[2] -attr @rip t_reads[2] -pin read_counter max_to_count[2] -port t_reads[2]
load net t_reads[3] -attr @rip t_reads[3] -pin read_counter max_to_count[3] -port t_reads[3]
load net t_reads[4] -attr @rip t_reads[4] -pin read_counter max_to_count[4] -port t_reads[4]
load net t_reads[5] -attr @rip t_reads[5] -pin read_counter max_to_count[5] -port t_reads[5]
load net t_reads[6] -attr @rip t_reads[6] -pin read_counter max_to_count[6] -port t_reads[6]
load net t_reads[7] -attr @rip t_reads[7] -pin read_counter max_to_count[7] -port t_reads[7]
load net t_reads[8] -attr @rip t_reads[8] -pin read_counter max_to_count[8] -port t_reads[8]
load net t_reads[9] -attr @rip t_reads[9] -pin read_counter max_to_count[9] -port t_reads[9]
load net t_ref_gen[0] -attr @rip t_ref_gen[0] -pin ref_gen_cnter max_to_count[0] -port t_ref_gen[0]
load net t_ref_gen[1] -attr @rip t_ref_gen[1] -pin ref_gen_cnter max_to_count[1] -port t_ref_gen[1]
load net t_ref_gen[2] -attr @rip t_ref_gen[2] -pin ref_gen_cnter max_to_count[2] -port t_ref_gen[2]
load net t_ref_gen[3] -attr @rip t_ref_gen[3] -pin ref_gen_cnter max_to_count[3] -port t_ref_gen[3]
load net t_ref_gen[4] -attr @rip t_ref_gen[4] -pin ref_gen_cnter max_to_count[4] -port t_ref_gen[4]
load net t_ref_gen[5] -attr @rip t_ref_gen[5] -pin ref_gen_cnter max_to_count[5] -port t_ref_gen[5]
load net t_ref_gen[6] -attr @rip t_ref_gen[6] -pin ref_gen_cnter max_to_count[6] -port t_ref_gen[6]
load net t_ref_gen[7] -attr @rip t_ref_gen[7] -pin ref_gen_cnter max_to_count[7] -port t_ref_gen[7]
load net t_ref_gen[8] -attr @rip t_ref_gen[8] -pin ref_gen_cnter max_to_count[8] -port t_ref_gen[8]
load net t_ref_gen[9] -attr @rip t_ref_gen[9] -pin ref_gen_cnter max_to_count[9] -port t_ref_gen[9]
load net toStore -pin mapper_inst toStore -port toStore
netloc toStore 1 2 1 NJ 520
load netBundle @limit 3 limit[2] limit[1] limit[0] -autobundled
netbloc @limit 1 0 2 NJ 500 NJ
load netBundle @read 140 read[139] read[138] read[137] read[136] read[135] read[134] read[133] read[132] read[131] read[130] read[129] read[128] read[127] read[126] read[125] read[124] read[123] read[122] read[121] read[120] read[119] read[118] read[117] read[116] read[115] read[114] read[113] read[112] read[111] read[110] read[109] read[108] read[107] read[106] read[105] read[104] read[103] read[102] read[101] read[100] read[99] read[98] read[97] read[96] read[95] read[94] read[93] read[92] read[91] read[90] read[89] read[88] read[87] read[86] read[85] read[84] read[83] read[82] read[81] read[80] read[79] read[78] read[77] read[76] read[75] read[74] read[73] read[72] read[71] read[70] read[69] read[68] read[67] read[66] read[65] read[64] read[63] read[62] read[61] read[60] read[59] read[58] read[57] read[56] read[55] read[54] read[53] read[52] read[51] read[50] read[49] read[48] read[47] read[46] read[45] read[44] read[43] read[42] read[41] read[40] read[39] read[38] read[37] read[36] read[35] read[34] read[33] read[32] read[31] read[30] read[29] read[28] read[27] read[26] read[25] read[24] read[23] read[22] read[21] read[20] read[19] read[18] read[17] read[16] read[15] read[14] read[13] read[12] read[11] read[10] read[9] read[8] read[7] read[6] read[5] read[4] read[3] read[2] read[1] read[0] -autobundled
netbloc @read 1 0 2 NJ 540 NJ
load netBundle @ref_gen 140 ref_gen[139] ref_gen[138] ref_gen[137] ref_gen[136] ref_gen[135] ref_gen[134] ref_gen[133] ref_gen[132] ref_gen[131] ref_gen[130] ref_gen[129] ref_gen[128] ref_gen[127] ref_gen[126] ref_gen[125] ref_gen[124] ref_gen[123] ref_gen[122] ref_gen[121] ref_gen[120] ref_gen[119] ref_gen[118] ref_gen[117] ref_gen[116] ref_gen[115] ref_gen[114] ref_gen[113] ref_gen[112] ref_gen[111] ref_gen[110] ref_gen[109] ref_gen[108] ref_gen[107] ref_gen[106] ref_gen[105] ref_gen[104] ref_gen[103] ref_gen[102] ref_gen[101] ref_gen[100] ref_gen[99] ref_gen[98] ref_gen[97] ref_gen[96] ref_gen[95] ref_gen[94] ref_gen[93] ref_gen[92] ref_gen[91] ref_gen[90] ref_gen[89] ref_gen[88] ref_gen[87] ref_gen[86] ref_gen[85] ref_gen[84] ref_gen[83] ref_gen[82] ref_gen[81] ref_gen[80] ref_gen[79] ref_gen[78] ref_gen[77] ref_gen[76] ref_gen[75] ref_gen[74] ref_gen[73] ref_gen[72] ref_gen[71] ref_gen[70] ref_gen[69] ref_gen[68] ref_gen[67] ref_gen[66] ref_gen[65] ref_gen[64] ref_gen[63] ref_gen[62] ref_gen[61] ref_gen[60] ref_gen[59] ref_gen[58] ref_gen[57] ref_gen[56] ref_gen[55] ref_gen[54] ref_gen[53] ref_gen[52] ref_gen[51] ref_gen[50] ref_gen[49] ref_gen[48] ref_gen[47] ref_gen[46] ref_gen[45] ref_gen[44] ref_gen[43] ref_gen[42] ref_gen[41] ref_gen[40] ref_gen[39] ref_gen[38] ref_gen[37] ref_gen[36] ref_gen[35] ref_gen[34] ref_gen[33] ref_gen[32] ref_gen[31] ref_gen[30] ref_gen[29] ref_gen[28] ref_gen[27] ref_gen[26] ref_gen[25] ref_gen[24] ref_gen[23] ref_gen[22] ref_gen[21] ref_gen[20] ref_gen[19] ref_gen[18] ref_gen[17] ref_gen[16] ref_gen[15] ref_gen[14] ref_gen[13] ref_gen[12] ref_gen[11] ref_gen[10] ref_gen[9] ref_gen[8] ref_gen[7] ref_gen[6] ref_gen[5] ref_gen[4] ref_gen[3] ref_gen[2] ref_gen[1] ref_gen[0] -autobundled
netbloc @ref_gen 1 0 2 NJ 560 NJ
load netBundle @t_reads 10 t_reads[9] t_reads[8] t_reads[7] t_reads[6] t_reads[5] t_reads[4] t_reads[3] t_reads[2] t_reads[1] t_reads[0] -autobundled
netbloc @t_reads 1 0 2 NJ 150 NJ
load netBundle @t_ref_gen 10 t_ref_gen[9] t_ref_gen[8] t_ref_gen[7] t_ref_gen[6] t_ref_gen[5] t_ref_gen[4] t_ref_gen[3] t_ref_gen[2] t_ref_gen[1] t_ref_gen[0] -autobundled
netbloc @t_ref_gen 1 0 1 NJ 400
load netBundle @read_loc 156 read_loc[155] read_loc[154] read_loc[153] read_loc[152] read_loc[151] read_loc[150] read_loc[149] read_loc[148] read_loc[147] read_loc[146] read_loc[145] read_loc[144] read_loc[143] read_loc[142] read_loc[141] read_loc[140] read_loc[139] read_loc[138] read_loc[137] read_loc[136] read_loc[135] read_loc[134] read_loc[133] read_loc[132] read_loc[131] read_loc[130] read_loc[129] read_loc[128] read_loc[127] read_loc[126] read_loc[125] read_loc[124] read_loc[123] read_loc[122] read_loc[121] read_loc[120] read_loc[119] read_loc[118] read_loc[117] read_loc[116] read_loc[115] read_loc[114] read_loc[113] read_loc[112] read_loc[111] read_loc[110] read_loc[109] read_loc[108] read_loc[107] read_loc[106] read_loc[105] read_loc[104] read_loc[103] read_loc[102] read_loc[101] read_loc[100] read_loc[99] read_loc[98] read_loc[97] read_loc[96] read_loc[95] read_loc[94] read_loc[93] read_loc[92] read_loc[91] read_loc[90] read_loc[89] read_loc[88] read_loc[87] read_loc[86] read_loc[85] read_loc[84] read_loc[83] read_loc[82] read_loc[81] read_loc[80] read_loc[79] read_loc[78] read_loc[77] read_loc[76] read_loc[75] read_loc[74] read_loc[73] read_loc[72] read_loc[71] read_loc[70] read_loc[69] read_loc[68] read_loc[67] read_loc[66] read_loc[65] read_loc[64] read_loc[63] read_loc[62] read_loc[61] read_loc[60] read_loc[59] read_loc[58] read_loc[57] read_loc[56] read_loc[55] read_loc[54] read_loc[53] read_loc[52] read_loc[51] read_loc[50] read_loc[49] read_loc[48] read_loc[47] read_loc[46] read_loc[45] read_loc[44] read_loc[43] read_loc[42] read_loc[41] read_loc[40] read_loc[39] read_loc[38] read_loc[37] read_loc[36] read_loc[35] read_loc[34] read_loc[33] read_loc[32] read_loc[31] read_loc[30] read_loc[29] read_loc[28] read_loc[27] read_loc[26] read_loc[25] read_loc[24] read_loc[23] read_loc[22] read_loc[21] read_loc[20] read_loc[19] read_loc[18] read_loc[17] read_loc[16] read_loc[15] read_loc[14] read_loc[13] read_loc[12] read_loc[11] read_loc[10] read_loc[9] read_loc[8] read_loc[7] read_loc[6] read_loc[5] read_loc[4] read_loc[3] read_loc[2] read_loc[1] read_loc[0] -autobundled
netbloc @read_loc 1 2 1 NJ 500
load netBundle @loc 10 loc[9] loc[8] loc[7] loc[6] loc[5] loc[4] loc[3] loc[2] loc[1] loc[0] -autobundled
netbloc @loc 1 1 1 370 380n
levelinfo -pg 1 0 210 600 780
pagesize -pg 1 -db -bbox -sgen -170 0 930 620
show
fullfit
#
# initialize ictrl to current module Sequencer_DP work:Sequencer_DP:NOFILE
ictrl init topinfo |
