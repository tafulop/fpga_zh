@echo off


rem  PlanAhead(TM)
rem  runme.bat: a PlanAhead-generated ISim simulation Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.


set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;D:/Xilinx/14.7/ISE_DS/EDK/bin/nt64;D:/Xilinx/14.7/ISE_DS/EDK/lib/nt64;D:/Xilinx/14.7/ISE_DS/ISE/bin/nt64;D:/Xilinx/14.7/ISE_DS/ISE/lib/nt64;D:/Xilinx/14.7/ISE_DS/common/bin/nt64;D:/Xilinx/14.7/ISE_DS/common/lib/nt64;D:/Xilinx/14.7/ISE_DS/PlanAhead/bin;%PATH%

set XILINX_PLANAHEAD=D:/Xilinx/14.7/ISE_DS/PlanAhead

fuse -intstyle pa -incremental -L work -L secureip -o testbench.exe --prj C:/Users/fulop/ALU_testbench/ALU_testbench.sim/sim_1/behav/testbench.prj -top work.testbench
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
