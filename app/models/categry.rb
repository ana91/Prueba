class Categry < ActiveRecord::Base
  has_many :products
  validates :name, presence: true
  before_validation do
    puts "Antes de la validacion"
  end
  after_validation do
    puts "Despues de la validacion"
  end
  before_save do
    puts "Antes de guardar"
  end
  after_save do
    puts "Despues de guardar"
  end
  after_initialize do
      if self.descrpcion.nil?
        self.descrpcion = 'No hay una descripcion disponible'
      end
  end
end
