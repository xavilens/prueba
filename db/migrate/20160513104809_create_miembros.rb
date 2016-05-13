class CreateMiembros < ActiveRecord::Migration
  def change
    create_table :miembros do |t|
      t.reference :musico_id
      t.reference :grupo_id
      t.string :instrumento
    end
  end
end
