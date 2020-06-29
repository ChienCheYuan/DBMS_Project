# README
操作流程:

下載所有的檔案 安裝python,flask,flask-login,psycopg2
```sh
$ python install flask
```
確認有postgres建立資料庫FP 在run.py裡將password改成自己postgres的密碼
```sh
conn = psycopg2.connect(database="FP1", user="postgres", password="""Your password""", host="127.0.0.1", port="5432")
```

執行run.py 可以在local host 127.0.0.1:5000看到

```sh
$ python run.py
```
之後就能到瀏覽器操作嘍~~