#! /bin/bash

#set -x


function copyfile()
{
  local srcfile=$1
  local dstfile=$2

  cp $srcfile $dstfile

  return 0
}

#copyfile ./src.txt ./des.txt


function factorial
{
factorial=1
for (( i=1;i <= $1;i++ ))
        do
        #$[] 啥用法?
        factorial=$[ $factorial * $i ]
        done
echo $1的阶乘是:$factorial
}
#echo '程序名':$0,用于求阶乘
#factorial $1


g_var=  
function mytest()  
{  
        if [ $1 = "1" ]; then  
            echo "arg1 = $1"
            g_var=test
            return 1    # return to pipe only  
        else
            g_var=default
            return 0
        fi  
  
} 
mytest $1 
echo "result = " $?
result=`mytest $1`
echo $result
echo "g_var ; " $g_var

