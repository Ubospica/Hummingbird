
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2496.8832default:default2
0.0002default:default2
5912default:default2
45782default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 157901b2a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2496.883 ; gain = 0.000 ; free physical = 591 ; free virtual = 45782default:defaulth px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.022default:default2
2496.8832default:default2
0.0002default:default2
5992default:default2
45872default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1d11402b0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2496.883 ; gain = 0.000 ; free physical = 579 ; free virtual = 45672default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 25dcdeca5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 2496.883 ; gain = 0.000 ; free physical = 538 ; free virtual = 45262default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 25dcdeca5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 2496.883 ; gain = 0.000 ; free physical = 538 ; free virtual = 45262default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 25dcdeca5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 2496.883 ; gain = 0.000 ; free physical = 538 ; free virtual = 45262default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 22261631c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:05 . Memory (MB): peak = 2512.918 ; gain = 16.035 ; free physical = 508 ; free virtual = 44962default:defaulth px? 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2520.9222default:default2
0.0002default:default2
4992default:default2
44842default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
~-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization       |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Very High Fanout   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 125a29ea8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:54 ; elapsed = 00:00:24 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 498 ; free virtual = 44832default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1e1d8c2ea
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:56 ; elapsed = 00:00:25 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 507 ; free virtual = 44922default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1e1d8c2ea
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:56 ; elapsed = 00:00:25 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 507 ; free virtual = 44922default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 20cc73392
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:02 ; elapsed = 00:00:27 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 495 ; free virtual = 44842default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 2ba677ec3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:02 ; elapsed = 00:00:28 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 495 ; free virtual = 44842default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 293e0d2e4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:02 ; elapsed = 00:00:28 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 495 ; free virtual = 44842default:defaulth px? 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px? 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 293e0d2e4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:02 ; elapsed = 00:00:28 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 495 ; free virtual = 44842default:defaulth px? 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.6 Fast Optimization | Checksum: 2526c508b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:04 ; elapsed = 00:00:30 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 490 ; free virtual = 44792default:defaulth px? 


Phase %s%s
101*constraints2
3.7 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.7 Small Shape Detail Placement | Checksum: 23108da68
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:14 ; elapsed = 00:00:42 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 472 ; free virtual = 44582default:defaulth px? 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 1dd5f479a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:14 ; elapsed = 00:00:43 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 474 ; free virtual = 44592default:defaulth px? 
?

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.9 Pipeline Register Optimization | Checksum: 1dd5f479a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:14 ; elapsed = 00:00:43 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 474 ; free virtual = 44602default:defaulth px? 
u

Phase %s%s
101*constraints2
3.10 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
H
3Phase 3.10 Fast Optimization | Checksum: 1dd5f479a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:22 ; elapsed = 00:00:46 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 475 ; free virtual = 44642default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1dd5f479a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:22 ; elapsed = 00:00:46 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 475 ; free virtual = 44642default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 1b5d3b596
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2(
hci0/value_reg[0][0]2default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets, %s success, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason.30*	placeflow2
12default:default2
02default:default2
12default:default2
02default:default2
02default:defaultZ46-31h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 1b5d3b596
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:28 ; elapsed = 00:00:48 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 493 ; free virtual = 44822default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-3.6712default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 1cdad604c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:53 ; elapsed = 00:01:09 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 489 ; free virtual = 44742default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1cdad604c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:53 ; elapsed = 00:01:09 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 489 ; free virtual = 44742default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1cdad604c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:53 ; elapsed = 00:01:09 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 490 ; free virtual = 44752default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 1cdad604c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:54 ; elapsed = 00:01:09 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 490 ; free virtual = 44752default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 11a3e2e43
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:54 ; elapsed = 00:01:09 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 489 ; free virtual = 44752default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 11a3e2e43
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:54 ; elapsed = 00:01:10 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 489 ; free virtual = 44752default:defaulth px? 
=
(Ending Placer Task | Checksum: 75cfd94a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:54 ; elapsed = 00:01:10 . Memory (MB): peak = 2520.922 ; gain = 24.039 ; free physical = 510 ; free virtual = 44952default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
572default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:01:552default:default2
00:01:112default:default2
2520.9222default:default2
24.0392default:default2
5102default:default2
44952default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:00.802default:default2
2520.9222default:default2
0.0002default:default2
4822default:default2
44922default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2v
b/home/ubospica/develop/cpu/Hummingbird/vivado/project_1/project_1.runs/impl_1/riscv_top_placed.dcp2default:defaultZ17-1381h px? 
d
%s4*runtcl2H
4Executing : report_io -file riscv_top_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.09 . Memory (MB): peak = 2520.922 ; gain = 0.000 ; free physical = 491 ; free virtual = 4487
*commonh px? 
?
%s4*runtcl2~
jExecuting : report_utilization -file riscv_top_utilization_placed.rpt -pb riscv_top_utilization_placed.pb
2default:defaulth px? 
?
?report_utilization: Time (s): cpu = 00:00:00.14 ; elapsed = 00:00:00.19 . Memory (MB): peak = 2520.922 ; gain = 0.000 ; free physical = 492 ; free virtual = 4488
*commonh px? 
?
%s4*runtcl2e
QExecuting : report_control_sets -verbose -file riscv_top_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.09 ; elapsed = 00:00:00.12 . Memory (MB): peak = 2520.922 ; gain = 0.000 ; free physical = 491 ; free virtual = 4486
*commonh px? 


End Record