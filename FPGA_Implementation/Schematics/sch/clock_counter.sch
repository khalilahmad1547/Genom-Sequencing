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
load symbol counter work:counter:NOFILE HIERBOX pin clk input.left pin enb input.left pin limit_over output.right pin reset input.left pin upCount input.left pinBus inc input.left [2:0] pinBus initial_count input.left [2:0] pinBus max_to_count input.left [2:0] pinBus p_count output.right [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load inst clk_counter_inst clk_counter work:clk_counter:NOFILE -autohide -attr @cell(#000000) clk_counter -attr @fillcolor #fafafa -pinBusAttr cycles @name cycles[2:0] -pinBusAttr cycles @attr V=B\"101\" -pinBusAttr p_count @name p_count[2:0] -pinBusAttr p_count @attr n/c -pg 1 -lvl 1 -x 40 -y 58
load inst clk_counter_inst|counter_inst counter work:counter:NOFILE -hier clk_counter_inst -autohide -attr @cell(#000000) counter -attr @name counter_inst -pinBusAttr inc @name inc[2:0] -pinBusAttr inc @attr V=B\"001\" -pinBusAttr initial_count @name initial_count[2:0] -pinBusAttr max_to_count @name max_to_count[2:0] -pinBusAttr max_to_count @attr V=B\"101\" -pinBusAttr p_count @name p_count[2:0] -pinBusAttr p_count @attr n/c -pg 1 -lvl 1 -x 300 -y 88
load net clk_counter_inst|<const0> -ground -attr @name <const0> -pin clk_counter_inst|counter_inst inc[2] -pin clk_counter_inst|counter_inst inc[1] -pin clk_counter_inst|counter_inst initial_count[2] -pin clk_counter_inst|counter_inst initial_count[1] -pin clk_counter_inst|counter_inst initial_count[0]
load net clk_counter_inst|<const1> -power -attr @rip 0 -attr @name <const1> -pin clk_counter_inst|counter_inst upCount -pin clk_counter_inst|counter_inst inc[0]
load net clk_counter_inst|clk -attr @name clk -hierPin clk_counter_inst clk -pin clk_counter_inst|counter_inst clk -pin clk_counter_inst|counter_inst enb
netloc clk_counter_inst|clk 1 0 1 70 98n
load net clk_counter_inst|cycles[0] -attr @rip cycles[0] -attr @name cycles[0] -hierPin clk_counter_inst cycles[0] -pin clk_counter_inst|counter_inst max_to_count[0]
load net clk_counter_inst|cycles[1] -attr @rip cycles[1] -attr @name cycles[1] -hierPin clk_counter_inst cycles[1] -pin clk_counter_inst|counter_inst max_to_count[1]
load net clk_counter_inst|cycles[2] -attr @rip cycles[2] -attr @name cycles[2] -hierPin clk_counter_inst cycles[2] -pin clk_counter_inst|counter_inst max_to_count[2]
load net clk_counter_inst|times_up -attr @name times_up -hierPin clk_counter_inst times_up -pin clk_counter_inst|counter_inst limit_over -pin clk_counter_inst|counter_inst reset
netloc clk_counter_inst|times_up 1 0 2 70 278 450
load netBundle @clk_counter_inst|cycles 3 clk_counter_inst|cycles[2] clk_counter_inst|cycles[1] clk_counter_inst|cycles[0] -autobundled
netbloc @clk_counter_inst|cycles 1 0 1 N 178
levelinfo -pg 1 -100 40 560
levelinfo -hier clk_counter_inst * 300 *
pagesize -pg 1 -db -bbox -sgen -100 -10 560 320
pagesize -hier clk_counter_inst -db -bbox -sgen 40 28 480 288
show
fullfit
#
# initialize ictrl to current module Sequencer_DP work:Sequencer_DP:NOFILE
ictrl init topinfo |
