# 終端機 Git 推送教學手冊：SSH 金鑰設定指南

透過設定 SSH 金鑰，可以讓你的電腦與 GitHub 建立安全且綁定的連線，未來在終端機執行 `git push` 或 `git pull` 時，系統就能自動通關，再也不需要手動輸入帳號與密碼（或 Token）。

---

## 步驟一：產生新的 SSH 金鑰

在終端機中輸入以下指令，並將引號內的信箱替換為你註冊 GitHub 的 Email：

```bash
ssh-keygen -t ed25519 -C "你的信箱@example.com"
```

> **提示**：執行後系統會詢問金鑰的儲存位置以及是否要設定密碼保護。為了日常推送的便利性，遇到所有詢問時**直接按 Enter 到底**即可（採用預設路徑且不加額外密碼）。

## 步驟二：查看並複製公開金鑰

接著輸入以下指令來印出剛剛產生的「公開金鑰」：

```bash
cat ~/.ssh/id_ed25519.pub
```

> **提示**：畫面上會印出一長串以 `ssh-ed25519` 開頭的文字，請使用滑鼠將這整段文字**完整複製**下來。

## 步驟三：將金鑰新增至 GitHub

1. 登入 GitHub 網站。
2. 點擊右上角大頭貼，從下拉選單進入 **Settings**。
3. 在左側選單找到並點擊 **SSH and GPG keys**。
4. 點擊右上角的綠色按鈕 **New SSH key**。
5. **Title（標題）**：隨意輸入一個能辨識這台電腦的名稱（例如：`Ubuntu-Laptop` 或 `Victus-PC`）。
6. **Key（金鑰）**：將剛剛在終端機複製的那一長串文字貼上。
7. 點擊 **Add SSH key** 即完成新增。

## 步驟四：測試連線是否成功

回到終端機，輸入以下指令來測試電腦是否能順利連上 GitHub：

```bash
ssh -T git@github.com
```

> **提示**：初次連線時，系統會跳出警告詢問 `Are you sure you want to continue connecting (yes/no/[fingerprint])?`，請**輸入 `yes` 並按 Enter**。

如果畫面出現以下訊息，代表你的 SSH 金鑰已經成功綁定：
`Hi 你的帳號! You've successfully authenticated, but GitHub does not provide shell access.`

---

## 重要補充：將現有專案切換為 SSH 連線

金鑰設定完成後，如果你原本的專案是使用 `https://` 網址複製下來的，你需要將專案的連線方式切換成 SSH，金鑰才會發揮作用。

進入你的專案資料夾，輸入以下指令修改遠端網址：

```bash
git remote set-url origin git@github.com:你的GitHub帳號/你的專案名稱.git
```

修改完成後，未來使用 `git push` 時就會自動透過 SSH 金鑰通關了！
