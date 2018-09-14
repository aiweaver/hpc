#!/bin/sh

while true

do

DATE=`date '+%Y-%m-%d %H:%M:%S'`

#GPU UTILIZATION
RESULT1=`nvidia-smi |grep % |head -1 |awk '{print "       "$3,"       "$9,$10,$11,"          "$13}'`
RESULT2=`nvidia-smi |grep % |tail -n +2 |head -1 |awk '{print "       "$3,"       "$9,$10,$11,"          "$13}'`
RESULT3=`nvidia-smi |grep % |tail -n +3 |head -1 |awk '{print "       "$3,"       "$9,$10,$11,"          "$13}'`
RESULT4=`nvidia-smi |grep % |tail -n +4 |head -1 |awk '{print "       "$3,"       "$9,$10,$11,"          "$13}'`
RESULT5=`nvidia-smi |grep % |tail -n +5 |head -1 |awk '{print "       "$3,"       "$9,$10,$11,"          "$13}'`
RESULT6=`nvidia-smi |grep % |tail -n +6 |head -1 |awk '{print "       "$3,"       "$9,$10,$11,"          "$13}'`
RESULT7=`nvidia-smi |grep % |tail -n +7 |head -1 |awk '{print "       "$3,"       "$9,$10,$11,"          "$13}'`
RESULT8=`nvidia-smi |grep % |tail -n +8 |head -1 |awk '{print "       "$3,"       "$9,$10,$11,"          "$13}'`

#CPU UTILIZATION
CPU_IDLE=`top -n1 |grep Cpu |awk '{print int($8)}'`
CPU_USAGE=`top -n1 |grep Cpu |awk '{print int(100-$8)}'`

#MEM UTILIZATION
MEM_TOTAL=`free -g |grep Mem |awk '{print $2}'`
MEM_FREE=`free -g |grep Mem |awk '{print $4}'`
MEM_USED=`free -g |grep Mem |awk '{print $2-$4}'`
MEM_USAGE=`free -g |grep Mem |awk '{print int($4/$2*100)}'`

clear

echo""
echo "                             Start Time : $DATE"
echo "------------------------------------------------------------------------------------"
echo "           GPU.No        TEMP              MEM             GPU.USAGE(%)"
echo "------------------------------------------------------------------------------------"
echo "              0   $RESULT1"
echo "              1   $RESULT2"
echo "              2   $RESULT3"
echo "              3   $RESULT4"
echo "              4   $RESULT5"
echo "              5   $RESULT6"
echo "              6   $RESULT7"
echo "              7   $RESULT8"
echo "------------------------------------------------------------------------------------"
echo ""
"monitor.sh" 54L, 2590C