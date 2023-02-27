# Dart 語法篇
基本的組成「變數，字串，數字」

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
Q1 : 剖析 [https://jsonplaceholder.typicode.com/posts](https://jsonplaceholder.typicode.com/posts)，對其使用 get 方法，取回一系列 json array，並取 用第五個 json object 。對其使用 post 方法，取得 json object，傳回其資料編號的 id   
Q2 : 剖析 [https://jsonplaceholder.typicode.com/comments](https://jsonplaceholder.typicode.com/comments)，對其使用 get 方法，取回一系列 json array， 並取用第五個 json object 。對其使用 post 方法，取得 json object，傳回其資料編號的 id   
Q3 : 剖析 [https://jsonplaceholder.typicode.com/albums](https://jsonplaceholder.typicode.com/albums)，對其使用 get 方法，取回一系列 json array，並取 用第五個 json object 。對其使用 post 方法，取得 json object，傳回其資料編號的 id   
Q4 : 剖析 [https://jsonplaceholder.typicode.com/todos](https://jsonplaceholder.typicode.com/todos)，對其使用 get 方法，取回一系列 json array，並取 用第五個 json object 。對其使用 post 方法，取得 json object，傳回其資料編號的 id   