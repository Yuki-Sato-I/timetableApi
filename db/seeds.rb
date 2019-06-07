# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
Timetable.create!(
  [ 
    {
      title: 'デバック専門科目',
      teacher: 'ゆうき',
      credit: 2,
      day: 'Monday',
      hours: 1,
      year: '2019',
      faculty: '理工学部',
      specialty?: true
     },
    {
     title: 'デバック教養科目',
     teacher: 'さとう',
     credit: 2,
     day: 'Wednesday',
     hours: 3,
     year: '2019',
     faculty: '農学部',
     specialty?: false
    },
   {
     title: 'メディアシステム',
     teacher: '今野',
     credit: 2,
     day: 'Friday',
     hours: 2,
     year: '2019',
     faculty: '理工学部',
     specialty?: true
   },
   {
    title: 'ソフトウェア設計及び演習',
    teacher: '山中',
    credit: 2,
    day: 'Friday',
    hours: 3,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   },
   {
    title: 'コンピュータグラフィックス',
    teacher: '藤本',
    credit: 2,
    day: 'Thursday',
    hours: 1,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   },
   {
    title: '人工知能',
    teacher: '金',
    credit: 2,
    day: 'Thursday',
    hours: 3,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   },
   {
    title: '形式言語とオートマトン',
    teacher: '山中',
    credit: 2,
    day: 'Wednesday',
    hours: 1,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   },
   {
    title: 'ネットワーク実験',
    teacher: '山中',
    credit: 1,
    day: 'Wednesday',
    hours: 3,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   },
   {
    title: '情報工学特別講義',
    teacher: '担任',
    credit: 2,
    day: 'Tuesday',
    hours: 1,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   },
   {
    title: '信号処理',
    teacher: '西山',
    credit: 2,
    day: 'Tuesday',
    hours: 2,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   },
   {
    title: 'コンピュータアーキテクチャ',
    teacher: '安部',
    credit: 2,
    day: 'Tuesday',
    hours: 3,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   },
   {
    title: 'コンピュータネットワーク',
    teacher: '中谷',
    credit: 2,
    day: 'Monday',
    hours: 2,
    year: '2019',
    faculty: '理工学部',
    specialty?: true
   }
  ]
)


Evaluation.create!(
  [
    {
      timetable_id: 1,
      content: "すごい授業1",
      star: 3,
    },
    {
      timetable_id: 1,
      content: "すごい授業2",
      star: 4,
    },
    {
      timetable_id: 1,
      content: "すごい授業3",
      star: 3,
    },
    {
      timetable_id: 2,
      content: "すごい授業4",
      star: 3,
    }
  ]
)