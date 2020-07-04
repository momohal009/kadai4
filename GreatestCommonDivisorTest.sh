#!/bin/bash

# 上手く作動している時
./GreatestCommonDivisor.sh 2 4	1> out-$$
echo "2" > ans-$$
diff out-$$ ans-$$ || exit 1


# 個数が2以外の時
./GreatestCommonDivisor.sh 18 		2> out-$$
echo "引数には自然数を2個指定してください" > ans-$$
diff out-$$ ans-$$ || exit 1

./gcd.sh 33 55 77	2> out-$$
echo "引数には自然数を2個指定してください" > ans-$$
diff out-$$ ans-$$ || exit 1


#引数1にエラーが有る時
./GreatestCommonDivisor.sh   a 33		2> out-$$
echo "引数1は自然数ではありません" > ans-$$
diff out-$$ ans-$$ || exit 1

./GreatestCommonDivisor.sh -98 55		2> out-$$
echo "引数1は自然数ではありません" > ans-$$
diff out-$$ ans-$$ || exit 1

./GreatestCommonDivisor.sh 3.7 98		2> out-$$
echo "引数1は自然数ではありません" > ans-$$
diff out-$$ ans-$$ || exit 1


# 引数2にエラーが有る時
./GreatestCommonDivisor.sh 18  B		2> out-$$
echo "引数2は自然数ではありません" > ans-$$
diff out-$$ ans-$$ || exit 1

./GreatestCommonDivisor.sh 87 -98		2> out-$$
echo "引数2は自然数ではありません" > ans-$$
diff out-$$ ans-$$ || exit 1

./GreatestCommonDivisor.sh 89 9.9		2> out-$$
echo "引数2は自然数ではありません" > ans-$$
diff out-$$ ans-$$ || exit 1

echo "Test complete."

rm -f ans* out*

exit 0
