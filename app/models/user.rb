class User < ActiveRecord::Base
  validates :userable_id, presence: true
  # Con validates campoX uniqueness: {scope: campoY} creamos unicidad en la tupla de campos {campoX, campoY},
  # imposibilitando crear un Usuario con valores repetidos en dicha tupla
  validates :userable_type, presence: true, uniqueness: {scope: :userable_id}

  belongs_to :userable, polymorphic: true

  def grupo
    if esGrupo?
      @grupo = Grupo.where(id: userable_id).first
    end
  end

  def musico
    if esMusico?
      @musico = Musico.where(id: userable_id).first
    end
  end

  def tipo
    userable_type
  end

  private
    #Utilizamos self para crear un método de clase. En ausencia de self estaremos creando un método para instancia.
    def self.musicos
      musicos = User.where(userable_type: 'Musico')
      @musicos = Array.new

      musicos.each do |m|
        musico = Musico.where(id: m.userable_id)
        @musicos.push(musico)
      end
    end

    #Utilizamos self para crear un método de clase. En ausencia de self estaremos creando un método para instancia.
    def self.grupos
      grupos = User.where(userable_type: 'Grupo')
      @grupos = Array.new

      grupos.each do |g|
        grupo = Grupo.where(id: g.userable_id)
        @grupos.push(grupo)
      end
    end

    def esMusico?
      userable_type=='Musico'
    end

    def esGrupo?
      userable_type=='Grupo'
    end
end
