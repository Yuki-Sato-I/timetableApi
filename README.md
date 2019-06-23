## 時間割API

### 全ての時間割を獲得

GET `/apis/index`

### その時間の受けることが可能な授業

GET `/apis/show/(ここに曜日)/(ここに開始コマ数字)/(学部)`

### 時間割作成
POST `/apis/create_timetable`
json形式

```
{ 
  "title": "教養科目２",
  "teacher": "Mr.sato",
  "credit": 3, 
  "day": "Friday", 
  "hours": 2, 
  "year": "2019", 
  "faculty": "理工学部", 
  "specialty?": true
}
```

### 時間割の評価

POST `/apis/create_evaluation`
json形式

```
{ 
  timetable_id: 1,
  title: "すごかったよwaddsvf",
  content: "すごい授業3",
  user: "default3",
  star: 3.0,
  permission: true,
}
```
