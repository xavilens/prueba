class CreateAbcs < ActiveRecord::Migration
  def change
    create_table :abcs do |t|
      t.references :a, index: true, foreign_key: true
      t.references :b, index: true, foreign_key: true
      t.references :c, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
