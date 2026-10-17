#!/bin/sh

count=0

	while true; do
		echo "--- 目前是第 $count 盤遊戲 ---"
		printf "請問要繼續玩遊戲嗎？(輸入 0 繼續 / 輸入 1 離開): "
		read ans
		
	if test "$ans" = "1"; then
        echo "您選擇了 1，遊戲結束，謝謝遊玩！"
        break
	elif test "$ans" = "0"; then
		echo "您選擇了 0，好的，準備下一盤！"
		echo ""
		count=$((count + 1))
	else
		echo "輸入錯誤！請只能輸入 0 或 1。"
		echo ""
	fi
done
