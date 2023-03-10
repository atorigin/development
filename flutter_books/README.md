# Dart 語法篇
基本的組成「變數，字串，數字、函數、類別、異步」

## chapter02-1 homework
Q1 : 有一個文字表達的變數，其變數名為 jobInfo，其內容叫做全端工程師   
Q2 : 有一個文字表達的變數，其變數名為 description，其內容叫做「會寫給用戶看的，也會寫接觸資料 庫的」   
Q3 : 有一個數字表達的變數，其變數名為 salary，其內容為 35000   
Q4 : 將這些內容組合成一個大型字串，並使用 print 印在畫面上   
Q5 : 有一個東西，他有兩個特徵，名字是大話 AWS 雲端架構、重量是 140，請用 Dart 程式語言的方式 對這兩個變數進行宣告   

## chapter02-2 homework
Q1 : 定義一個會回傳字串的方法，函數名為 iAmStringFunction，並帶有字串型別的函數參數 iAmString, 之後回傳字串為 HelloWorld+該參數的內容   
Q2 : 定義一個會回傳數字的方法，函數名為 iAmIntFunction，並帶有字串型別的函數參數 iAmInt, 之後回傳數字為 該參數*20   
Q3 : 定義一個不回傳內容的方法，函數名為 iWillNotReturnValue，在裡面設置 print("通常會用於 與資料庫、硬碟等外部系統接觸的情境")   

## chapter02-3 homework
Q1 : 設計一個條件判斷，如果比較的變數內容值為 atorgin，則印出 "coding is live"，比較的變數內容值若不是 atorigin，則印出 "coding is live also is part of work"   
Q2 : 有一個上班族，愛人告訴上班族，每個月你都得拿薪水的一半出來養家，剩下的另一半得繳交 10000 房租，5000 元交際費，扣除這些之後，剩下的薪資有超過 3 萬元的話，則印出有錢一族，不超過三萬的話，印出我還是繼續寫程式吧   
Q3 : 現在有一家公司，股本為 100 萬、公司營收為 500 萬、員工平均薪資為 4 萬元、員工人數 5 人、公司運營雜支基礎值為 200 萬、勞健保以每人 10000 計算、營所稅 20%。請依照下面的條件，設計一個存股判斷機   

### 額外說明
```
營收為主要變數
公司營收的百分之五，必須課徵5%的營業稅。   
每多一位員工，公司運營雜支必須增加一萬二。   
營收扣除員工總薪資及運營雜支後，必須課徵20%的營業稅。   
公司盈餘除以公司股本為公司每股盈餘。   
若公司每股盈餘大於 5 元，則印出 好投資標的。   
若公司每股盈餘介於 2 元到 5 元之間，則印出 可投資標的。   
若公司每股盈餘 2 元以下，則印出 建議看其他家。
```

## chapter02-4 homework
Q1 : 建立一個整數的List集合，內容為[3,5,6,1,2]   
Q2 : 使用 數字序列號的迴圈方式，為Q1的List內的數字作加總   
Q3 : 以元素遍歷版的迴圈方式，為Q1的List內的數字作加總   
Q4 : 以迴圈的方式，印出 4 階層的星星左上三角金字塔。

```
*   
**   
***   
****
```   
Q5 : 以迴圈的方式，print出一個9*9的九九乘法表

## chapter02-5 homework
Q1 : 有一個家庭，爸爸是李小鴻，媽媽是秉鴻李，兒子是李小秉，請將father、mother、son作為Map的key，並將內容填入   
Q2 : 接續上一題，家庭後來有了女兒daughter，女兒叫作李小花，請為先前建置的Map，追加一個新的鍵值   

## chapter02-6 homework
Q1 : 宣告一個Map，鍵值型態分別為String,dynamic有一個鍵叫做 questionId，內容為整數有一個鍵叫做 questionContent，內容為字串   
Q2 : 將先前建置的 Map 轉換成 json object 格式的字串   
Q3 : 有一個符合 json object 格式的字串，請嘗試轉換成`Map<String, dynamic>`的資料結構，並成功提取 itemId 欄位   
```
{
    "itemId": 303031,   
    "itemName": "白米飯",   
    "itemPrice": 300  
}
```
Q4 : 有一個複雜巢狀 json string，嘗試解析並提出 stringInJsonObject 的內容值   
```
String validNestedJsonObjectString = """{"jsonString": "hello", "jsonNumber": 123, "jsonArray": [1, 2, 3, 4, 5, 6], "jsonObject": {"stringInJsonObject": "abc", "numberInJsonObject": 456, "arrayInJsonObject": [7, 8, 9, 1, 2, 3], "objectInJsonObject": {"lastStringField": "cxcxc"}}}""";
 ```

## chapter02-7 homework
Q1 : 有一個複雜巢狀 json string，嘗試解析並提出 arrayInJsonObject 的內容值
```
String validNestedJsonObjectString = """{"jsonString": "hello", "jsonNumber": 123, "jsonArray": [1, 2, 3, 4, 5, 6], "jsonObject": {"stringInJsonObject": "abc", "numberInJsonObject": 456, "arrayInJsonObject": [7, 8, 9, 1, 2, 3], "objectInJsonObject": {"lastStringField": "cxcxc"}}}""";
```

## chapter02-8 homework
Q1 : 剖析 [https://jsonplaceholder.typicode.com/posts](https://jsonplaceholder.typicode.com/posts)，對其使用 get 方法，取回一系列 json array，並取用第五個 json object 。對其使用 post 方法，取得 json object，傳回其資料編號的 id   
Q2 : 剖析 [https://jsonplaceholder.typicode.com/comments](https://jsonplaceholder.typicode.com/comments)，對其使用 get 方法，取回一系列 json array， 並取用第五個 json object 。對其使用 post 方法，取得 json object，傳回其資料編號的 id   
Q3 : 剖析 [https://jsonplaceholder.typicode.com/albums](https://jsonplaceholder.typicode.com/albums)，對其使用 get 方法，取回一系列 json array，並取用第五個 json object 。對其使用 post 方法，取得 json object，傳回其資料編號的 id   
Q4 : 剖析 [https://jsonplaceholder.typicode.com/todos](https://jsonplaceholder.typicode.com/todos)，對其使用 get 方法，取回一系列 json array，並取用第五個 json object 。對其使用 post 方法，取得 json object，傳回其資料編號的 id   

## chapter02-9 homework
Q1 : 設計一個主程序，會印出會議開始，中間過程透過 Future.delayed 印出請老何訂購餐點，最後在主程序印出會議結束   
Q2 : 設計一個主程序，會印出會議開始，中間過程透過 Future.delayed 印出請老何訂購餐點，再透過 Future.microtask 印出請老何定機票，最後在主程序印出會議結束   

## chapter02-10 homework
Q1 : 以 Future 的 microtask 為開頭，串接多個 then 方法，依序印出。為了要做高效能的 APP、我們必須知道異步分工合作、要知道 Dart 的異步分工機制、可以使用 Future、並透過 then 方法、讓分工有順序性   
Q2 : http 套件的 get 與 post 行為，其實會傳入一個 Future 內進行操作，以 http 套件結合 Future 與 then 的方式，將 https://jsonplaceholder.typicode.com/users/1 的 json 資料爬取下來，並印出 phone 欄位 的內容   

## chapter02-11 homework
Q1 : 以 Future 的 microtask 為開頭，串接多個 then 方法，依序印出為了要做高效能的 APP、我們必須知道異步分工合作、要知道 Dart 的異步分工機制、透過建立一個新函數，並使用 async 與 await、讓分工有順序性   
Q2 : http 套件的 get 與 post 行為，其實會傳入一個 Future 內進行操作，重建立一個 async 函數，在裡面以 http 套件結合 Future 與 await 的方式，將 https://jsonplaceholder.typicode.com/users/1 的 json 資 料爬取下來，並印出 phone 欄位的內容   

## chapter02-12 homework
Q0 : 將範例重新切割成多函數的方式，並搭配 async/await，讓程式碼看起來更簡潔一些   
Q1 : 剖析 [https://jsonplaceholder.typicode.com/posts](https://jsonplaceholder.typicode.com/posts)，對其使用 get 方法，取回一系列 json array，並取用第五個 json object。對其使用 post 方法，取得 json object 傳回資料的編號 id   
Q2 : 剖析 [https://jsonplaceholder.typicode.com/comments](https://jsonplaceholder.typicode.com/comments)，對其使用 get 方法，取回一系列 json array，並取用第五個 json object。對其使用 post 方法，取得 json object 傳回資料的編號 id   
Q3 : 剖析 [https://jsonplaceholder.typicode.com/albums](https://jsonplaceholder.typicode.com/albums)，對其使用 get 方法，取回一系列 json array，並取用第五個 json object。對其使用 post 方法，取得 json object 傳回資料的編號 id   
Q3 : 剖析 [https://jsonplaceholder.typicode.com/todos](https://jsonplaceholder.typicode.com/todos)，對其使用 get 方法，取回一系列 json array，並取用第五個 json object。對其使用 post 方法，取得 json object 傳回資料的編號 id   

## chapter02-13 homework
Q1 : 建立一個 Cat 類別，裡面有字串型別的 variety (品種屬性)，數字型別的 weight(重量屬性)，一個 echo 函數，使用時會印出喵   
Q2 : 建立一個 Dog 類別，裡面有字串型別的 variety (品種屬性)，數字型別的 weight(重量屬性)，一個 echo 函數，使用時會印出汪   
Q3 : 建立一個 Human 類別，裡面有字串型別的 variety (品種屬性)，數字型別的 weight(重量屬性)，一個 echo 函數，使用時會印出HI   
Q4 : 建立一個 Rabbit 類別，裡面有字串型別的 variety (品種屬性)，數字型別的 weight(重量屬性)，一個 echo 函數，使用時會印出咕咕，一個 score 函數，評鑑 weight 重量屬性，超過 20 時，傳回文字胖，低於或等於 20 時，傳回文字普通   

## chapter02-14 homework
Q1 : 建立一個 Cat 類別，裡面有字串型別的 variety (品種屬性)，數字型別的 weight(重量屬性)，一個 echo 函數，使用時會印出喵。並設計一個第二建構子 fromJson()，能接收 dynamic 的 json 資料去生成 Cat 物件，並設計一個 toJson()，能將 Cat 物件，轉換回 String 型別的 json 資料   
Q2 : 建立一個 Dog 類別，裡面有字串型別的 variety (品種屬性)，數字型別的 weight(重量屬 性)，一個 echo 函數，使用時會印出汪。並設計一個第二建構子 fromJson()，能接收 dynamic 的 json 資料去生成 Dog 物件，並設計一個 toJson()，能將 Dog 物件，轉換回 String 型別的 json 資料   
Q3 : 建立一個 Human 類別，裡面有字串型別的 variety (品種屬性)，數字型別的 weight(重量屬 性)，一個 echo 函數，使用時會印出雲育鏈。並設計一個第二建構子 fromJson()，能接收 dynamic 的 json 資料去生成 Human 物件，並設計一個 toJson()，能將 Human 物件，轉換回 String 型別的 json 資料   

## chapter02-15 homework
Q1 : 剖析 [https://jsonplaceholder.typicode.com/posts](https://jsonplaceholder.typicode.com/posts)，並定義 Post 類別，設計 toJson 與 fromJson 方法，從外部系統取回一系列 json array 時，能夠轉換成 List<Post>，並取用第五個 Post object。 再將該 Post object，轉換回 json 後，作為 http 的 post 方法內容送出   
Q2 : 剖析 [https://jsonplaceholder.typicode.com/comments](https://jsonplaceholder.typicode.com/comments)，並定義 Comment 類別，設計 toJson 與 fromJson 方法，從外部系統取回一系列 json array 時，能夠轉換成 List<Comment>，並取用第五個 Comment object 。 再將該 Comment object，轉換回 json 後，作為 http 的 post 方法內容送出   
Q3 : 剖析 [https://jsonplaceholder.typicode.com/albums](https://jsonplaceholder.typicode.com/albums)，並定義 Album 類別，設計 toJson 與 fromJson 方 法，從外部系統取回一系列 json array 時，能夠轉換成 List<Album>，並取用第五個 Album object。 再將該 Album object，轉換回 json 後，作為 http 的 post 方法內容送出   
Q4 : 剖析 [https://jsonplaceholder.typicode.com/todos](https://jsonplaceholder.typicode.com/todos)，並定義 Todo 類別，設計 toJson 與 fromJson 方 法，從外部系統取回一系列 json array 時，能夠轉換成 List<Todo>，並取用第五個 Todo object 。 再 將該 Todo object，轉換回 json 後，作為 http 的 post 方法內容送出   

## chapter02-16 homework
Q1 : 定義一個 Animal 抽象類別，有一個字串基礎屬性為姓名，另外有一個未實踐的 echo 函數。另外設置一個 Dog 類別，繼承 Animal 類別，調度 echo 函數時，必須印出 「汪」; 另外設置一個 Cat 類別，繼承 Animal 類別，調度 echo 函數時，必須印出「喵」   
Q2 : 定義一個 Human 抽象類別，有一個字串基礎屬性為姓名，另外有一個未實踐的 echo 函數。另外設置一個 Asian 類別，繼承 Human 類別，調度 echo 函數時，必須印出 「你好」; 另外設置一個 European 類別，繼承 Human 類別，調度 echo 函數時，必須印出 「Hello」   