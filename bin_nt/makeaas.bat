@echo off
setlocal

rem Enable this next line to compile maps without debug info (put in a rem to enable debug info)
rem set extraparms=-optimize

bspc -threads 1 -ext _b0 -cfg aascfg_sm.c -bsp2aas ..\main\maps\%1.bsp -output ..\main\maps %extraparms%
copy bspc.log temp_b0.log
bspc -threads 1 -ext _b1 -cfg aascfg_lg.c -bsp2aas ..\main\maps\%1.bsp -output ..\main\maps %extraparms%
copy bspc.log temp_b1.log