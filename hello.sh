# 這是註解：Shell 會忽略這裡的內容[cite: 148]

# 1. 參數數量檢查 (test 指令與整數比較)
# $# 代表傳入參數的總數，-eq 代表等於[cite: 192, 222]
if [ "$#" -eq 0 ]
then
    echo "請提供至少一個名字！"
    echo "用法：hello.sh 名字1 名字2 ..."
    exit 1  # 終止程式並回傳非零的失敗狀態碼[cite: 234]
fi

# 2. 命令替換 (Command Substitution)
# 將 date +%H 的輸出結果（兩位數的小時）存入變數 hour 中[cite: 180, 251]
hour=$(date +%H)

# 3. for 迴圈走訪所有參數
# $@ 代表所有命令列參數的集合[cite: 265]
for user in "$@"
do
    # 4. case 多重分支：根據時間決定問候語[cite: 251]
    case "$hour" in
        0? | 1[01] ) greeting="Good morning";;  # 00~11 點[cite: 251, 252]
        1[2-7] ) greeting="Good afternoon";;    # 12~17 點[cite: 252]
        * ) greeting="Good evening";;           # 其他時間 (例外捕捉)[cite: 252]
    esac

    # 5. if 條件判斷與 echo 的引號展示
    # 變數加上雙引號可避免空值造成的語法錯誤[cite: 216]
    if [ "$user" = "steve" ]
    then
        # 雙引號 (")：允許變數替換，會印出實際內容
        echo ">>> $greeting, $user! (這是管理者)"
    else
        # 單引號 (')：完全不解析特殊字元，會印出原貌
        # 這裡示範混用單引號與雙引號
        echo '>>> System says:' "$greeting, $user!"
    fi
done
