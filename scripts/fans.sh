#!/bin/bash

# 檢查是否有帶參數，若沒帶則顯示提示
if [ -z "$1" ]; then
    echo "使用說明: fans.sh [1|0]"
    echo "  1 : 開啟風扇全速"
    echo "  0 : 恢復自動控速"
    exit 1
fi

# 根據你帶的參數 1 或 0，自動轉換為系統實際需要的數值
if [ "$1" == "1" ]; then
    VALUE=0
    MODE_NAME="【全速運轉模式】"
elif [ "$1" == "0" ]; then
    VALUE=2
    MODE_NAME="【自動控速模式】"
else
    echo "錯誤: 參數只能是 1 或 0"
    exit 1
fi

# 核心寫入程式碼
for path in /sys/devices/platform/hp-wmi/hwmon/hwmon*/pwm1_enable; do
    if [ -f "$path" ]; then
        echo "$VALUE" | sudo tee "$path" > /dev/null
        echo "🔥 已將 $path 設定為 $MODE_NAME"
    fi
done
