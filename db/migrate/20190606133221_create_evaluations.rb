class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.integer :timetable_id #タイムテーブルとの関連づけ
      t.string :title #コメントのtitle
      t.text :content #みんなの評価内容
      t.string :user #登録した人の名前
      t.float :star #星で評価（数値）
      t.boolean :permission #許可されたコメントか

      t.timestamps
    end
  end
end
