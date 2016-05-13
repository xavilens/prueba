class RenameMusicoIdIdToMusicoIdInMiembros < ActiveRecord::Migration
  def change
    rename_column :miembros, :musico_id_id, :musico_id
    rename_column :miembros, :grupo_id_id, :grupo_id
  end
end
