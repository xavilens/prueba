class CreateMusicos < ActiveRecord::Migration
  def change
    create_table :musicos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
