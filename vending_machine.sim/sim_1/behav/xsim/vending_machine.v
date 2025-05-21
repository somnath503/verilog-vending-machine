$date
   Thu Apr 17 15:41:48 2025
$end

$version
  2024.2.0
  $dumpfile ("vending_machine.v") 
$end

$timescale
  1ps
$end

$scope module vending_machine_tb $end
$var reg 1 ! clk $end
$var reg 2 " in [1:0] $end
$var reg 1 # rst $end
$var wire 1 $ out $end
$var wire 2 % change [1:0] $end
$scope module uut $end
$var wire 1 & clk $end
$var wire 1 ' rst $end
$var wire 2 ( in [1:0] $end
$var reg 1 ) out $end
$var reg 2 * change [1:0] $end
$var reg 2 + c_state [1:0] $end
$var reg 2 , n_state [1:0] $end
$upscope $end
$upscope $end
$enddefinitions $end

#0
$dumpvars
0!
bx "
1#
x$
bx %
0&
1'
bx (
x)
bx *
bx +
bx ,
$end

#5000
1!
b0 %
1&
b0 *
b0 +
b0 ,

#6000
b1 "
0#
0'
b1 (

#10000
0!
0&

#15000
1!
0$
1&
0)
b1 ,

#17000
b10 "
b10 (

#20000
0!
0&

#25000
1!
1$
1&
1)
b1 +
b0 ,

#30000
0!
0&

#33000
b1 "
b1 (

#35000
1!
0$
1&
0)
b0 +
b1 ,

#40000
0!
0&

#45000
1!
1&
b1 +
b10 ,

#50000
0!
0&

#55000
1!
1$
1&
1)
b10 +
b0 ,
