#!/bin/bash

GCD() (
    if (( $1 % $2 == 0)) ; then
        echo $2
     else
        GCD $2 $(( $1 % $2 ))
    fi
)


# 引数が2個以外はエラー
if [ ! $# = 2 ] ; then
	echo 引数には自然数を2個指定してください >&2
	exit 1
fi

a=$1
b=$2

# 引数1が数値(自然数)以外はエラー
expr $a + 1 >&/dev/null
if [ ! $? -lt 2 ] || [ $a -le 0 ] ; then
	echo 引数1は自然数ではありません >&2
	exit 1
fi

# 引数2が数値(自然数)以外はエラー
expr $b + 1 >&/dev/null
if [ ! $? -lt 2 ] || [ $b -le 0 ] ; then
	echo 引数2は自然数ではありません >&2
	exit 1
fi



# 最大公約数を計算
GCD $a $b

exit 0
