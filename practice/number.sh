#!/bin/sh
while true;
 do 
# 提示使用者輸入兩個數字
read -p "請輸入第一個數字: " num1
read -p "請輸入第二個數字: " num2
# 判斷兩數是否相等
if [ "$num1" -eq "$num2" ]; then
    echo "這兩個數字相等 ($num1 == $num2)"
else
    echo "這兩個數字不相等 ($num1 != $num2)"
fi
done 
