class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.integer :timetable_id #タイムテーブルとの関連づけ
      t.text :content #みんなの評価内容
      t.integer :star #星で評価（数値）

      t.timestamps
    end
  end
end
