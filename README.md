# 113-1 資料庫管理 Gaming Platform
## 專案簡介
我們的綜合遊戲平台提供一個結構化的系統來支援遊戲購買、用戶資料管理、社交互動、成就追蹤和物品交易等功能。平台包含多個核心功能模組，例如好友關係、遊戲評論、購買記錄和安裝紀錄，幫助用戶高效管理遊戲相關數據。
此外，系統還追蹤遊戲成就和用戶遊戲統計資料，並提供發行商資訊，讓用戶深入了解遊戲背景。透過清晰的資料結構與關係設計，我們的平台不僅提升了資料管理效率，還為未來功能擴展提供了靈活性。  
[展示影片連結](https://example.com/video)

## 使用者功能
### User（一般使用者）
#### 使用者登入、註冊
- 註冊：使用者可以註冊帳號，需要輸入使用者名稱及密碼和生日。至於一些額外的資料則可以不輸入，像是使用者自述、使用者大頭貼、使用者個人檔案背景、電子郵件、國家、語言、是否過濾敏感訊息、是否接收通知、是否啟用 cookies 等等。
- 登入：使用者需要輸入使用者名稱及密碼來登入。
#### 用戶資料查詢
- 使用者可以輸入用戶名稱來查詢該用戶的個人檔案，當然也可以查詢其他用戶的個人檔案。
#### 帳戶加值
- 使用者可以為自己的帳戶加值，以便購買遊戲和遊戲物品。
#### 搜尋遊戲
- 使用者可以輸入關鍵字，並得到有包含該關鍵字的所有遊戲。
#### 購買物品
- 使用者可以購買遊戲或遊戲物品。
#### 添加好友
- 使用者可以添加好友（不需要經過對方同意）。

### Publisher（遊戲開發商）
#### 開發商登入、註冊
- 註冊：開發商可以註冊帳號，需要輸入開發商名稱，至於開發商自述可以不輸入。
- 登入：開發商需要輸入開發商名稱來登入。
#### 新增遊戲
- 開發商可以新增遊戲
#### 修改遊戲物品價格
- 開發商可以透過修改折扣來修改遊戲或遊戲物品的價格
#### 新增遊戲成就
- 開發商可以新增遊戲的成就。
#### 新增遊戲物品
- 開發商可以新增該遊戲的物品。
#### 查看發行的遊戲
- 開發商可以查詢自己擁有哪些遊戲。
## 使用方法
- 使用資料夾 `generate_data`裡的 備份檔 `database_with_fake_data` 自行加上 `.backup` 以後復原資料庫
- 預設連線通道為 ** http://127.0.0.1:5000 **，可至資料夾 `Front&Back` 裡的 `client.py` 修改
- 資料夾 `Front&Back` 裡的 `server.py` 的函式 
get_connection()` 設定**資料庫名稱** (dbname)、**使用者名稱** (user)、**資料庫密碼** (password)及**主機位置** (host)

先執行 `server.py` 啟動伺服器：

```bash
python .\server.py 
```

再透過 `client.py` 向伺服器連線：

```bash
python .\client.py 
```

## 技術細節
## 程式說明
1. **`./Front&Back/server.py`**
    - 包含伺服器主要功能
    - 透過 Flask 和客戶端(可多個同時)進行聯繫
    - 和資料庫進行聯繫，修改、讀取資料庫的資料並回傳給客戶端
2. **`./Front&Back/client.py`**
    - 包含客戶端主要功能
    - 透過 Flask 和伺服器進行聯繫
    - 將使用者輸入的資料傳給伺服器並些收回應

## 開發環境
- Windows 11
- Python 3.11.9
  - Flask 3.1.0
  - psycopg2 2.9.10
- PostgreSQL 16.4

## 參考資料
- Steam
- [Flask 簡介](https://devs.tw/post/448)
