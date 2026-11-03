# 產生新的SSH金鑰
```
ssh-keygen -t ed25519 -C "你的信箱@example.com"
```
- 過程詢問Enter按到底即可

# 查看金鑰並複製以作後續連結
```
cat ~/.ssh/id_ed25519.pub
```

# 金鑰貼入GitHub步驟
1. 登入帳號
2. 點擊大頭貼進入"Settings"
3. 左側選單尋找"SSH and GPG keys" 
4. 點擊"New SSH key"
5. Title 隨意輸入
6. Key 貼上金鑰
7. 點擊"Add SSH key"即完成

# 測試連線是否成功
```
ssh -T git@github.com
```

