class CreateTimetables < ActiveRecord::Migration[5.2]
  def change
    create_table :timetables do |t|
      t.string :title #時間割名
      t.string :teacher #教授名
      t.integer :credit #単位数
      t.string :day #授業の曜日
      t.integer :hours #開始時間が何コマ目か
      t.string :year #この時間割を登録した年度
      t.string :faculty #一般教養じゃない時の学部でフィルターかける
      t.boolean :specialty?      ,default: false #専門科目かどうか

      t.timestamps
    end
  end
end
