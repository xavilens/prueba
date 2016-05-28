class User < ActiveRecord::Base
  validates :userable_id, presence: true
  # Con validates campoX uniqueness: {scope: campoY} creamos unicidad en la tupla de campos {campoX, campoY},
  # imposibilitando crear un Usuario con valores repetidos en dicha tupla
  validates :userable_type, presence: true
  # validates :userable_type, presence: true, uniqueness: {scope: :userable_id}
  belongs_to :userable, polymorphic: true

  def grupo
    if esGrupo?
      @grupo = Grupo.where(id: userable_id)
    end
  end

  def musico
    if esMusico?
      @musico = Musico.where(id: userable_id)
    end
  end

  def tipo
    return userable_type
  end

  private
    #Utilizamos self para crear un método de clase. En ausencia de self estaremos creando un método para instancia.
    def self.musicoUsers
      @musicos = Musico.where()
    end
    #Utilizamos self para crear un método de clase. En ausencia de self estaremos creando un método para instancia.
    def self.grupoUsers
      @grupos = User.where(userable_type: Grupo)
    end

    def esMusico?
      return userable_type=='Musico'
    end

    def esGrupo?
      return userable_type=='Grupo'
    end
end
