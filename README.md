# Linux-Program-Design

# Linux語法:沒消息就是好消息

---
## 資料夾與檔案處理

- 建立檔案
	> touch 檔名
	
- 建立資料夾 
	> mkdir 資料夾名
	
- 刪除檔案與目錄
	> rm 檔名
	
- 列出資料夾下內容
	> ls -l
	
- 切換工作目錄
	> cd 目標位置
	
- 列出當前目錄
	> pwd 
	
- 修改檔名
	> mv 舊檔名 新檔名
	
- 移動檔案
	> mv 檔名 目標位置
	
- 開啟檔案
	> nano 檔名
	
---

## 文本處理

- 顯示檔案內容
	> cat 檔名
	
- 覆蓋寫入檔案
	> echo "內容" > 檔名
	
- 追加寫入
	> echo "追加內容" >> 檔名
---

## 	系統權限管理

- 參數

	> 對象
		* u(使用者)
		* g(群組)
		* o(其他)
		* a(全部)
		
	> 權限設定
		* +(增加權限)
		* -(取消權限)
		* =(設定單一權限)
		
	> 運作權限
		* r(可讀取)
		* w(可寫入)
		* x(可執行)
		
- 數字表示

	> chmod abc 檔名
		* a表user
		* b表group
		* c表others
		
	> rwx權限=4+2+1=7
		* r=4
		* w=2
		* r=1
		
- 給滿所有人權限
	> chmod 777 檔名
	
- 取得root權限
	> sudo
	
- 變更密碼

	> 自己的
		* passwd
	> 其他使用者
		* sudo passwd 使用者名稱
	> root
		* sudo passwd
		
---

## 實用功能		

- 中斷目前畫面操作
	> Crtl + C
	
- 清理畫面
	> clear 
	
- 回家目錄
	> cd + Enter 
- 查找IP位址
	> ifconfig
	
---

## C++編譯工具

- 安裝編譯器
	> sudo apt update
	> sudo apt install build-essential
	
- 驗證安裝是否成功
	> g++ --version
	
- 編譯產生執行檔
	> g++ 檔名 -o 檔名
	
- 執行檔案
	> ./執行檔檔名
	
---
