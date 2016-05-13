class CreateMiembros < ActiveRecord::Migration
  def change
    create_table :miembros do |t|
      t.references :musico_id
      t.references :grupo_id
      t.string :instrumento
    end
  end
end
