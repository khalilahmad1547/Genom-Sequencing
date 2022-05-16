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
load symbol RTL_EQ0 work RTL(=) pin O output.right pinBus I0 input.left [9:0] pinBus I1 input.left [9:0] fillcolor 1
load symbol RTL_REG__BREG_1 work GEN pin C input.clk.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_ADD139 work RTL(+) pinBus I0 input.left [9:0] pinBus I1 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_SUB0 work RTL(-) pinBus I0 input.left [9:0] pinBus I1 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_MUX3 work MUX pin S input.bot pinBus I0 input.left [9:0] pinBus I1 input.left [9:0] pinBus O output.right [9:0] fillcolor 1
load symbol RTL_MUX1 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_REG__BREG_4 work[9:0]ssww GEN pin C input.clk.left pin CE input.left pinBus D input.left [9:0] pinBus Q output.right [9:0] fillcolor 1 sandwich 3 prop @bundle 10
load inst ref_gen_cnter counter__parameterized0 work:abstract:NOFILE -autohide -attr @cell(#000000) counter__parameterized0 -attr @fillcolor #fafafa -pinBusAttr inc @name inc[9:0] -pinBusAttr inc @attr V=B\"0000000001\" -pinBusAttr initial_count @name initial_count[9:0] -pinBusAttr max_to_count @name max_to_count[9:0] -pinBusAttr p_count @name p_count[9:0] -pg 1 -lvl 1 -x 70 -y 58
load inst ref_gen_cnter|limit_over0_i RTL_EQ0 work -hier ref_gen_cnter -attr @cell(#000000) RTL_EQ -attr @name limit_over0_i -pinBusAttr I0 @name I0[9:0] -pinBusAttr I1 @name I1[9:0] -pg 1 -lvl 3 -x 950 -y 378
load inst ref_gen_cnter|limit_over_reg RTL_REG__BREG_1 work -hier ref_gen_cnter -attr @cell(#000000) RTL_REG -attr @name limit_over_reg -pg 1 -lvl 4 -x 1170 -y 368
load inst ref_gen_cnter|p_count0_i RTL_ADD139 work -hier ref_gen_cnter -attr @cell(#000000) RTL_ADD -attr @name p_count0_i -pinBusAttr I0 @name I0[9:0] -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr V=B\"0000000001\" -pinBusAttr O @name O[9:0] -pg 1 -lvl 1 -x 300 -y 238
load inst ref_gen_cnter|p_count0_i__0 RTL_SUB0 work -hier ref_gen_cnter -attr @cell(#000000) RTL_SUB -attr @name p_count0_i__0 -pinBusAttr I0 @name I0[9:0] -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr V=B\"0000000001\" -pinBusAttr O @name O[9:0] -pg 1 -lvl 1 -x 300 -y 148
load inst ref_gen_cnter|p_count_i RTL_MUX3 work -hier ref_gen_cnter -attr @cell(#000000) RTL_MUX -attr @name p_count_i -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=1'b0 -pinBusAttr O @name O[9:0] -pg 1 -lvl 2 -x 600 -y 228
load inst ref_gen_cnter|p_count_i__0 RTL_MUX3 work -hier ref_gen_cnter -attr @cell(#000000) RTL_MUX -attr @name p_count_i__0 -pinBusAttr I0 @name I0[9:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[9:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[9:0] -pg 1 -lvl 3 -x 950 -y 88
load inst ref_gen_cnter|p_count_i__1 RTL_MUX1 work -hier ref_gen_cnter -attr @cell(#000000) RTL_MUX -attr @name p_count_i__1 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 3 -x 950 -y 228
load inst ref_gen_cnter|p_count_reg[9:0] RTL_REG__BREG_4 work[9:0]ssww -hier ref_gen_cnter -attr @cell(#000000) RTL_REG -attr @name p_count_reg[9:0] -pg 1 -lvl 4 -x 1170 -y 228
load net ref_gen_cnter|<const1> -power -attr @name <const1> -pin ref_gen_cnter|p_count_i__1 I0
load net ref_gen_cnter|clk -attr @name clk -hierPin ref_gen_cnter clk -pin ref_gen_cnter|limit_over_reg C -pin ref_gen_cnter|p_count_reg[9:0] C
netloc ref_gen_cnter|clk 1 0 4 120J 308 NJ 308 NJ 308 1100
load net ref_gen_cnter|enb -attr @name enb -hierPin ref_gen_cnter enb -pin ref_gen_cnter|p_count_i__1 I1
netloc ref_gen_cnter|enb 1 0 3 NJ 288 450J 168 770
load net ref_gen_cnter|inc[0] -attr @rip(#000000) inc[0] -attr @name inc[0] -hierPin ref_gen_cnter inc[0] -pin ref_gen_cnter|p_count0_i I1[0] -pin ref_gen_cnter|p_count0_i__0 I1[0]
load net ref_gen_cnter|inc[1] -attr @rip(#000000) inc[1] -attr @name inc[1] -hierPin ref_gen_cnter inc[1] -pin ref_gen_cnter|p_count0_i I1[1] -pin ref_gen_cnter|p_count0_i__0 I1[1]
load net ref_gen_cnter|inc[2] -attr @rip(#000000) inc[2] -attr @name inc[2] -hierPin ref_gen_cnter inc[2] -pin ref_gen_cnter|p_count0_i I1[2] -pin ref_gen_cnter|p_count0_i__0 I1[2]
load net ref_gen_cnter|inc[3] -attr @rip(#000000) inc[3] -attr @name inc[3] -hierPin ref_gen_cnter inc[3] -pin ref_gen_cnter|p_count0_i I1[3] -pin ref_gen_cnter|p_count0_i__0 I1[3]
load net ref_gen_cnter|inc[4] -attr @rip(#000000) inc[4] -attr @name inc[4] -hierPin ref_gen_cnter inc[4] -pin ref_gen_cnter|p_count0_i I1[4] -pin ref_gen_cnter|p_count0_i__0 I1[4]
load net ref_gen_cnter|inc[5] -attr @rip(#000000) inc[5] -attr @name inc[5] -hierPin ref_gen_cnter inc[5] -pin ref_gen_cnter|p_count0_i I1[5] -pin ref_gen_cnter|p_count0_i__0 I1[5]
load net ref_gen_cnter|inc[6] -attr @rip(#000000) inc[6] -attr @name inc[6] -hierPin ref_gen_cnter inc[6] -pin ref_gen_cnter|p_count0_i I1[6] -pin ref_gen_cnter|p_count0_i__0 I1[6]
load net ref_gen_cnter|inc[7] -attr @rip(#000000) inc[7] -attr @name inc[7] -hierPin ref_gen_cnter inc[7] -pin ref_gen_cnter|p_count0_i I1[7] -pin ref_gen_cnter|p_count0_i__0 I1[7]
load net ref_gen_cnter|inc[8] -attr @rip(#000000) inc[8] -attr @name inc[8] -hierPin ref_gen_cnter inc[8] -pin ref_gen_cnter|p_count0_i I1[8] -pin ref_gen_cnter|p_count0_i__0 I1[8]
load net ref_gen_cnter|inc[9] -attr @rip(#000000) inc[9] -attr @name inc[9] -hierPin ref_gen_cnter inc[9] -pin ref_gen_cnter|p_count0_i I1[9] -pin ref_gen_cnter|p_count0_i__0 I1[9]
load net ref_gen_cnter|initial_count[0] -attr @rip(#000000) initial_count[0] -attr @name initial_count[0] -hierPin ref_gen_cnter initial_count[0] -pin ref_gen_cnter|p_count_i__0 I0[0]
load net ref_gen_cnter|initial_count[1] -attr @rip(#000000) initial_count[1] -attr @name initial_count[1] -hierPin ref_gen_cnter initial_count[1] -pin ref_gen_cnter|p_count_i__0 I0[1]
load net ref_gen_cnter|initial_count[2] -attr @rip(#000000) initial_count[2] -attr @name initial_count[2] -hierPin ref_gen_cnter initial_count[2] -pin ref_gen_cnter|p_count_i__0 I0[2]
load net ref_gen_cnter|initial_count[3] -attr @rip(#000000) initial_count[3] -attr @name initial_count[3] -hierPin ref_gen_cnter initial_count[3] -pin ref_gen_cnter|p_count_i__0 I0[3]
load net ref_gen_cnter|initial_count[4] -attr @rip(#000000) initial_count[4] -attr @name initial_count[4] -hierPin ref_gen_cnter initial_count[4] -pin ref_gen_cnter|p_count_i__0 I0[4]
load net ref_gen_cnter|initial_count[5] -attr @rip(#000000) initial_count[5] -attr @name initial_count[5] -hierPin ref_gen_cnter initial_count[5] -pin ref_gen_cnter|p_count_i__0 I0[5]
load net ref_gen_cnter|initial_count[6] -attr @rip(#000000) initial_count[6] -attr @name initial_count[6] -hierPin ref_gen_cnter initial_count[6] -pin ref_gen_cnter|p_count_i__0 I0[6]
load net ref_gen_cnter|initial_count[7] -attr @rip(#000000) initial_count[7] -attr @name initial_count[7] -hierPin ref_gen_cnter initial_count[7] -pin ref_gen_cnter|p_count_i__0 I0[7]
load net ref_gen_cnter|initial_count[8] -attr @rip(#000000) initial_count[8] -attr @name initial_count[8] -hierPin ref_gen_cnter initial_count[8] -pin ref_gen_cnter|p_count_i__0 I0[8]
load net ref_gen_cnter|initial_count[9] -attr @rip(#000000) initial_count[9] -attr @name initial_count[9] -hierPin ref_gen_cnter initial_count[9] -pin ref_gen_cnter|p_count_i__0 I0[9]
load net ref_gen_cnter|limit_over -attr @name limit_over -hierPin ref_gen_cnter limit_over -pin ref_gen_cnter|limit_over_reg Q
netloc ref_gen_cnter|limit_over 1 4 1 N 368
load net ref_gen_cnter|limit_over0 -attr @name limit_over0 -pin ref_gen_cnter|limit_over0_i O -pin ref_gen_cnter|limit_over_reg D
netloc ref_gen_cnter|limit_over0 1 3 1 N 378
load net ref_gen_cnter|max_to_count[0] -attr @rip(#000000) max_to_count[0] -attr @name max_to_count[0] -hierPin ref_gen_cnter max_to_count[0] -pin ref_gen_cnter|limit_over0_i I1[0]
load net ref_gen_cnter|max_to_count[1] -attr @rip(#000000) max_to_count[1] -attr @name max_to_count[1] -hierPin ref_gen_cnter max_to_count[1] -pin ref_gen_cnter|limit_over0_i I1[1]
load net ref_gen_cnter|max_to_count[2] -attr @rip(#000000) max_to_count[2] -attr @name max_to_count[2] -hierPin ref_gen_cnter max_to_count[2] -pin ref_gen_cnter|limit_over0_i I1[2]
load net ref_gen_cnter|max_to_count[3] -attr @rip(#000000) max_to_count[3] -attr @name max_to_count[3] -hierPin ref_gen_cnter max_to_count[3] -pin ref_gen_cnter|limit_over0_i I1[3]
load net ref_gen_cnter|max_to_count[4] -attr @rip(#000000) max_to_count[4] -attr @name max_to_count[4] -hierPin ref_gen_cnter max_to_count[4] -pin ref_gen_cnter|limit_over0_i I1[4]
load net ref_gen_cnter|max_to_count[5] -attr @rip(#000000) max_to_count[5] -attr @name max_to_count[5] -hierPin ref_gen_cnter max_to_count[5] -pin ref_gen_cnter|limit_over0_i I1[5]
load net ref_gen_cnter|max_to_count[6] -attr @rip(#000000) max_to_count[6] -attr @name max_to_count[6] -hierPin ref_gen_cnter max_to_count[6] -pin ref_gen_cnter|limit_over0_i I1[6]
load net ref_gen_cnter|max_to_count[7] -attr @rip(#000000) max_to_count[7] -attr @name max_to_count[7] -hierPin ref_gen_cnter max_to_count[7] -pin ref_gen_cnter|limit_over0_i I1[7]
load net ref_gen_cnter|max_to_count[8] -attr @rip(#000000) max_to_count[8] -attr @name max_to_count[8] -hierPin ref_gen_cnter max_to_count[8] -pin ref_gen_cnter|limit_over0_i I1[8]
load net ref_gen_cnter|max_to_count[9] -attr @rip(#000000) max_to_count[9] -attr @name max_to_count[9] -hierPin ref_gen_cnter max_to_count[9] -pin ref_gen_cnter|limit_over0_i I1[9]
load net ref_gen_cnter|p_count0[0] -attr @rip(#000000) O[0] -attr @name p_count0[0] -pin ref_gen_cnter|p_count0_i O[0] -pin ref_gen_cnter|p_count_i I0[0]
load net ref_gen_cnter|p_count0[1] -attr @rip(#000000) O[1] -attr @name p_count0[1] -pin ref_gen_cnter|p_count0_i O[1] -pin ref_gen_cnter|p_count_i I0[1]
load net ref_gen_cnter|p_count0[2] -attr @rip(#000000) O[2] -attr @name p_count0[2] -pin ref_gen_cnter|p_count0_i O[2] -pin ref_gen_cnter|p_count_i I0[2]
load net ref_gen_cnter|p_count0[3] -attr @rip(#000000) O[3] -attr @name p_count0[3] -pin ref_gen_cnter|p_count0_i O[3] -pin ref_gen_cnter|p_count_i I0[3]
load net ref_gen_cnter|p_count0[4] -attr @rip(#000000) O[4] -attr @name p_count0[4] -pin ref_gen_cnter|p_count0_i O[4] -pin ref_gen_cnter|p_count_i I0[4]
load net ref_gen_cnter|p_count0[5] -attr @rip(#000000) O[5] -attr @name p_count0[5] -pin ref_gen_cnter|p_count0_i O[5] -pin ref_gen_cnter|p_count_i I0[5]
load net ref_gen_cnter|p_count0[6] -attr @rip(#000000) O[6] -attr @name p_count0[6] -pin ref_gen_cnter|p_count0_i O[6] -pin ref_gen_cnter|p_count_i I0[6]
load net ref_gen_cnter|p_count0[7] -attr @rip(#000000) O[7] -attr @name p_count0[7] -pin ref_gen_cnter|p_count0_i O[7] -pin ref_gen_cnter|p_count_i I0[7]
load net ref_gen_cnter|p_count0[8] -attr @rip(#000000) O[8] -attr @name p_count0[8] -pin ref_gen_cnter|p_count0_i O[8] -pin ref_gen_cnter|p_count_i I0[8]
load net ref_gen_cnter|p_count0[9] -attr @rip(#000000) O[9] -attr @name p_count0[9] -pin ref_gen_cnter|p_count0_i O[9] -pin ref_gen_cnter|p_count_i I0[9]
load net ref_gen_cnter|p_count0_i__0_n_0 -attr @rip(#000000) O[9] -attr @name p_count0_i__0_n_0 -pin ref_gen_cnter|p_count0_i__0 O[9] -pin ref_gen_cnter|p_count_i I1[9]
load net ref_gen_cnter|p_count0_i__0_n_1 -attr @rip(#000000) O[8] -attr @name p_count0_i__0_n_1 -pin ref_gen_cnter|p_count0_i__0 O[8] -pin ref_gen_cnter|p_count_i I1[8]
load net ref_gen_cnter|p_count0_i__0_n_2 -attr @rip(#000000) O[7] -attr @name p_count0_i__0_n_2 -pin ref_gen_cnter|p_count0_i__0 O[7] -pin ref_gen_cnter|p_count_i I1[7]
load net ref_gen_cnter|p_count0_i__0_n_3 -attr @rip(#000000) O[6] -attr @name p_count0_i__0_n_3 -pin ref_gen_cnter|p_count0_i__0 O[6] -pin ref_gen_cnter|p_count_i I1[6]
load net ref_gen_cnter|p_count0_i__0_n_4 -attr @rip(#000000) O[5] -attr @name p_count0_i__0_n_4 -pin ref_gen_cnter|p_count0_i__0 O[5] -pin ref_gen_cnter|p_count_i I1[5]
load net ref_gen_cnter|p_count0_i__0_n_5 -attr @rip(#000000) O[4] -attr @name p_count0_i__0_n_5 -pin ref_gen_cnter|p_count0_i__0 O[4] -pin ref_gen_cnter|p_count_i I1[4]
load net ref_gen_cnter|p_count0_i__0_n_6 -attr @rip(#000000) O[3] -attr @name p_count0_i__0_n_6 -pin ref_gen_cnter|p_count0_i__0 O[3] -pin ref_gen_cnter|p_count_i I1[3]
load net ref_gen_cnter|p_count0_i__0_n_7 -attr @rip(#000000) O[2] -attr @name p_count0_i__0_n_7 -pin ref_gen_cnter|p_count0_i__0 O[2] -pin ref_gen_cnter|p_count_i I1[2]
load net ref_gen_cnter|p_count0_i__0_n_8 -attr @rip(#000000) O[1] -attr @name p_count0_i__0_n_8 -pin ref_gen_cnter|p_count0_i__0 O[1] -pin ref_gen_cnter|p_count_i I1[1]
load net ref_gen_cnter|p_count0_i__0_n_9 -attr @rip(#000000) O[0] -attr @name p_count0_i__0_n_9 -pin ref_gen_cnter|p_count0_i__0 O[0] -pin ref_gen_cnter|p_count_i I1[0]
load net ref_gen_cnter|p_count[0] -attr @rip(#000000) 0 -attr @name p_count[0] -hierPin ref_gen_cnter p_count[0] -pin ref_gen_cnter|limit_over0_i I0[0] -pin ref_gen_cnter|p_count0_i I0[0] -pin ref_gen_cnter|p_count0_i__0 I0[0] -pin ref_gen_cnter|p_count_reg[9:0] Q[0]
load net ref_gen_cnter|p_count[1] -attr @rip(#000000) 1 -attr @name p_count[1] -hierPin ref_gen_cnter p_count[1] -pin ref_gen_cnter|limit_over0_i I0[1] -pin ref_gen_cnter|p_count0_i I0[1] -pin ref_gen_cnter|p_count0_i__0 I0[1] -pin ref_gen_cnter|p_count_reg[9:0] Q[1]
load net ref_gen_cnter|p_count[2] -attr @rip(#000000) 2 -attr @name p_count[2] -hierPin ref_gen_cnter p_count[2] -pin ref_gen_cnter|limit_over0_i I0[2] -pin ref_gen_cnter|p_count0_i I0[2] -pin ref_gen_cnter|p_count0_i__0 I0[2] -pin ref_gen_cnter|p_count_reg[9:0] Q[2]
load net ref_gen_cnter|p_count[3] -attr @rip(#000000) 3 -attr @name p_count[3] -hierPin ref_gen_cnter p_count[3] -pin ref_gen_cnter|limit_over0_i I0[3] -pin ref_gen_cnter|p_count0_i I0[3] -pin ref_gen_cnter|p_count0_i__0 I0[3] -pin ref_gen_cnter|p_count_reg[9:0] Q[3]
load net ref_gen_cnter|p_count[4] -attr @rip(#000000) 4 -attr @name p_count[4] -hierPin ref_gen_cnter p_count[4] -pin ref_gen_cnter|limit_over0_i I0[4] -pin ref_gen_cnter|p_count0_i I0[4] -pin ref_gen_cnter|p_count0_i__0 I0[4] -pin ref_gen_cnter|p_count_reg[9:0] Q[4]
load net ref_gen_cnter|p_count[5] -attr @rip(#000000) 5 -attr @name p_count[5] -hierPin ref_gen_cnter p_count[5] -pin ref_gen_cnter|limit_over0_i I0[5] -pin ref_gen_cnter|p_count0_i I0[5] -pin ref_gen_cnter|p_count0_i__0 I0[5] -pin ref_gen_cnter|p_count_reg[9:0] Q[5]
load net ref_gen_cnter|p_count[6] -attr @rip(#000000) 6 -attr @name p_count[6] -hierPin ref_gen_cnter p_count[6] -pin ref_gen_cnter|limit_over0_i I0[6] -pin ref_gen_cnter|p_count0_i I0[6] -pin ref_gen_cnter|p_count0_i__0 I0[6] -pin ref_gen_cnter|p_count_reg[9:0] Q[6]
load net ref_gen_cnter|p_count[7] -attr @rip(#000000) 7 -attr @name p_count[7] -hierPin ref_gen_cnter p_count[7] -pin ref_gen_cnter|limit_over0_i I0[7] -pin ref_gen_cnter|p_count0_i I0[7] -pin ref_gen_cnter|p_count0_i__0 I0[7] -pin ref_gen_cnter|p_count_reg[9:0] Q[7]
load net ref_gen_cnter|p_count[8] -attr @rip(#000000) 8 -attr @name p_count[8] -hierPin ref_gen_cnter p_count[8] -pin ref_gen_cnter|limit_over0_i I0[8] -pin ref_gen_cnter|p_count0_i I0[8] -pin ref_gen_cnter|p_count0_i__0 I0[8] -pin ref_gen_cnter|p_count_reg[9:0] Q[8]
load net ref_gen_cnter|p_count[9] -attr @rip(#000000) 9 -attr @name p_count[9] -hierPin ref_gen_cnter p_count[9] -pin ref_gen_cnter|limit_over0_i I0[9] -pin ref_gen_cnter|p_count0_i I0[9] -pin ref_gen_cnter|p_count0_i__0 I0[9] -pin ref_gen_cnter|p_count_reg[9:0] Q[9]
load net ref_gen_cnter|p_count_i__0_n_0 -attr @rip(#000000) O[9] -attr @name p_count_i__0_n_0 -pin ref_gen_cnter|p_count_i__0 O[9] -pin ref_gen_cnter|p_count_reg[9:0] D[9]
load net ref_gen_cnter|p_count_i__0_n_1 -attr @rip(#000000) O[8] -attr @name p_count_i__0_n_1 -pin ref_gen_cnter|p_count_i__0 O[8] -pin ref_gen_cnter|p_count_reg[9:0] D[8]
load net ref_gen_cnter|p_count_i__0_n_2 -attr @rip(#000000) O[7] -attr @name p_count_i__0_n_2 -pin ref_gen_cnter|p_count_i__0 O[7] -pin ref_gen_cnter|p_count_reg[9:0] D[7]
load net ref_gen_cnter|p_count_i__0_n_3 -attr @rip(#000000) O[6] -attr @name p_count_i__0_n_3 -pin ref_gen_cnter|p_count_i__0 O[6] -pin ref_gen_cnter|p_count_reg[9:0] D[6]
load net ref_gen_cnter|p_count_i__0_n_4 -attr @rip(#000000) O[5] -attr @name p_count_i__0_n_4 -pin ref_gen_cnter|p_count_i__0 O[5] -pin ref_gen_cnter|p_count_reg[9:0] D[5]
load net ref_gen_cnter|p_count_i__0_n_5 -attr @rip(#000000) O[4] -attr @name p_count_i__0_n_5 -pin ref_gen_cnter|p_count_i__0 O[4] -pin ref_gen_cnter|p_count_reg[9:0] D[4]
load net ref_gen_cnter|p_count_i__0_n_6 -attr @rip(#000000) O[3] -attr @name p_count_i__0_n_6 -pin ref_gen_cnter|p_count_i__0 O[3] -pin ref_gen_cnter|p_count_reg[9:0] D[3]
load net ref_gen_cnter|p_count_i__0_n_7 -attr @rip(#000000) O[2] -attr @name p_count_i__0_n_7 -pin ref_gen_cnter|p_count_i__0 O[2] -pin ref_gen_cnter|p_count_reg[9:0] D[2]
load net ref_gen_cnter|p_count_i__0_n_8 -attr @rip(#000000) O[1] -attr @name p_count_i__0_n_8 -pin ref_gen_cnter|p_count_i__0 O[1] -pin ref_gen_cnter|p_count_reg[9:0] D[1]
load net ref_gen_cnter|p_count_i__0_n_9 -attr @rip(#000000) O[0] -attr @name p_count_i__0_n_9 -pin ref_gen_cnter|p_count_i__0 O[0] -pin ref_gen_cnter|p_count_reg[9:0] D[0]
load net ref_gen_cnter|p_count_i__1_n_0 -attr @name p_count_i__1_n_0 -pin ref_gen_cnter|p_count_i__1 O -pin ref_gen_cnter|p_count_reg[9:0] CE
netloc ref_gen_cnter|p_count_i__1_n_0 1 3 1 N 228
load net ref_gen_cnter|p_count_i_n_0 -attr @rip(#000000) O[9] -attr @name p_count_i_n_0 -pin ref_gen_cnter|p_count_i O[9] -pin ref_gen_cnter|p_count_i__0 I1[9]
load net ref_gen_cnter|p_count_i_n_1 -attr @rip(#000000) O[8] -attr @name p_count_i_n_1 -pin ref_gen_cnter|p_count_i O[8] -pin ref_gen_cnter|p_count_i__0 I1[8]
load net ref_gen_cnter|p_count_i_n_2 -attr @rip(#000000) O[7] -attr @name p_count_i_n_2 -pin ref_gen_cnter|p_count_i O[7] -pin ref_gen_cnter|p_count_i__0 I1[7]
load net ref_gen_cnter|p_count_i_n_3 -attr @rip(#000000) O[6] -attr @name p_count_i_n_3 -pin ref_gen_cnter|p_count_i O[6] -pin ref_gen_cnter|p_count_i__0 I1[6]
load net ref_gen_cnter|p_count_i_n_4 -attr @rip(#000000) O[5] -attr @name p_count_i_n_4 -pin ref_gen_cnter|p_count_i O[5] -pin ref_gen_cnter|p_count_i__0 I1[5]
load net ref_gen_cnter|p_count_i_n_5 -attr @rip(#000000) O[4] -attr @name p_count_i_n_5 -pin ref_gen_cnter|p_count_i O[4] -pin ref_gen_cnter|p_count_i__0 I1[4]
load net ref_gen_cnter|p_count_i_n_6 -attr @rip(#000000) O[3] -attr @name p_count_i_n_6 -pin ref_gen_cnter|p_count_i O[3] -pin ref_gen_cnter|p_count_i__0 I1[3]
load net ref_gen_cnter|p_count_i_n_7 -attr @rip(#000000) O[2] -attr @name p_count_i_n_7 -pin ref_gen_cnter|p_count_i O[2] -pin ref_gen_cnter|p_count_i__0 I1[2]
load net ref_gen_cnter|p_count_i_n_8 -attr @rip(#000000) O[1] -attr @name p_count_i_n_8 -pin ref_gen_cnter|p_count_i O[1] -pin ref_gen_cnter|p_count_i__0 I1[1]
load net ref_gen_cnter|p_count_i_n_9 -attr @rip(#000000) O[0] -attr @name p_count_i_n_9 -pin ref_gen_cnter|p_count_i O[0] -pin ref_gen_cnter|p_count_i__0 I1[0]
load net ref_gen_cnter|reset -attr @name reset -hierPin ref_gen_cnter reset -pin ref_gen_cnter|p_count_i__0 S -pin ref_gen_cnter|p_count_i__1 S
netloc ref_gen_cnter|reset 1 0 3 NJ 368 NJ 368 790
load net ref_gen_cnter|upCount -attr @name upCount -hierPin ref_gen_cnter upCount -pin ref_gen_cnter|p_count_i S
netloc ref_gen_cnter|upCount 1 0 2 NJ 408 490
load netBundle @ref_gen_cnter|inc 10 ref_gen_cnter|inc[9] ref_gen_cnter|inc[8] ref_gen_cnter|inc[7] ref_gen_cnter|inc[6] ref_gen_cnter|inc[5] ref_gen_cnter|inc[4] ref_gen_cnter|inc[3] ref_gen_cnter|inc[2] ref_gen_cnter|inc[1] ref_gen_cnter|inc[0] -autobundled
netbloc @ref_gen_cnter|inc 1 0 1 100 158n
load netBundle @ref_gen_cnter|initial_count 10 ref_gen_cnter|initial_count[9] ref_gen_cnter|initial_count[8] ref_gen_cnter|initial_count[7] ref_gen_cnter|initial_count[6] ref_gen_cnter|initial_count[5] ref_gen_cnter|initial_count[4] ref_gen_cnter|initial_count[3] ref_gen_cnter|initial_count[2] ref_gen_cnter|initial_count[1] ref_gen_cnter|initial_count[0] -autobundled
netbloc @ref_gen_cnter|initial_count 1 0 3 NJ 328 NJ 328 730
load netBundle @ref_gen_cnter|max_to_count 10 ref_gen_cnter|max_to_count[9] ref_gen_cnter|max_to_count[8] ref_gen_cnter|max_to_count[7] ref_gen_cnter|max_to_count[6] ref_gen_cnter|max_to_count[5] ref_gen_cnter|max_to_count[4] ref_gen_cnter|max_to_count[3] ref_gen_cnter|max_to_count[2] ref_gen_cnter|max_to_count[1] ref_gen_cnter|max_to_count[0] -autobundled
netbloc @ref_gen_cnter|max_to_count 1 0 3 NJ 348 NJ 348 830
load netBundle @ref_gen_cnter|p_count0 10 ref_gen_cnter|p_count0[9] ref_gen_cnter|p_count0[8] ref_gen_cnter|p_count0[7] ref_gen_cnter|p_count0[6] ref_gen_cnter|p_count0[5] ref_gen_cnter|p_count0[4] ref_gen_cnter|p_count0[3] ref_gen_cnter|p_count0[2] ref_gen_cnter|p_count0[1] ref_gen_cnter|p_count0[0] -autobundled
netbloc @ref_gen_cnter|p_count0 1 1 1 470 218n
load netBundle @ref_gen_cnter|p_count0_i__0_n_ 10 ref_gen_cnter|p_count0_i__0_n_0 ref_gen_cnter|p_count0_i__0_n_1 ref_gen_cnter|p_count0_i__0_n_2 ref_gen_cnter|p_count0_i__0_n_3 ref_gen_cnter|p_count0_i__0_n_4 ref_gen_cnter|p_count0_i__0_n_5 ref_gen_cnter|p_count0_i__0_n_6 ref_gen_cnter|p_count0_i__0_n_7 ref_gen_cnter|p_count0_i__0_n_8 ref_gen_cnter|p_count0_i__0_n_9 -autobundled
netbloc @ref_gen_cnter|p_count0_i__0_n_ 1 1 1 490 148n
load netBundle @ref_gen_cnter|p_count_i_n_ 10 ref_gen_cnter|p_count_i_n_0 ref_gen_cnter|p_count_i_n_1 ref_gen_cnter|p_count_i_n_2 ref_gen_cnter|p_count_i_n_3 ref_gen_cnter|p_count_i_n_4 ref_gen_cnter|p_count_i_n_5 ref_gen_cnter|p_count_i_n_6 ref_gen_cnter|p_count_i_n_7 ref_gen_cnter|p_count_i_n_8 ref_gen_cnter|p_count_i_n_9 -autobundled
netbloc @ref_gen_cnter|p_count_i_n_ 1 2 1 750 98n
load netBundle @ref_gen_cnter|p_count_i__0_n_ 10 ref_gen_cnter|p_count_i__0_n_0 ref_gen_cnter|p_count_i__0_n_1 ref_gen_cnter|p_count_i__0_n_2 ref_gen_cnter|p_count_i__0_n_3 ref_gen_cnter|p_count_i__0_n_4 ref_gen_cnter|p_count_i__0_n_5 ref_gen_cnter|p_count_i__0_n_6 ref_gen_cnter|p_count_i__0_n_7 ref_gen_cnter|p_count_i__0_n_8 ref_gen_cnter|p_count_i__0_n_9 -autobundled
netbloc @ref_gen_cnter|p_count_i__0_n_ 1 3 1 1080 88n
load netBundle @ref_gen_cnter|p_count 10 ref_gen_cnter|p_count[9] ref_gen_cnter|p_count[8] ref_gen_cnter|p_count[7] ref_gen_cnter|p_count[6] ref_gen_cnter|p_count[5] ref_gen_cnter|p_count[4] ref_gen_cnter|p_count[3] ref_gen_cnter|p_count[2] ref_gen_cnter|p_count[1] ref_gen_cnter|p_count[0] -autobundled
netbloc @ref_gen_cnter|p_count 1 0 5 140 388 NJ 388 810 328 1120J 308 1280
levelinfo -pg 1 -90 70 1400
levelinfo -hier ref_gen_cnter * 300 600 950 1170 *
pagesize -pg 1 -db -bbox -sgen -90 -10 1400 460
pagesize -hier ref_gen_cnter -db -bbox -sgen 70 28 1310 428
show
fullfit
#
# initialize ictrl to current module Sequencer_DP work:Sequencer_DP:NOFILE
ictrl init topinfo |
