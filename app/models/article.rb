class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

  # É considerada uma boa prática declarar métodos callbacks como privados.
  # Se deixados públicos, eles podem ser chamados de fora do modelo e violar o princípio do encapsulamento de objetos
  before_validation :standard_text, if: -> { text.blank? }
  before_create :sintaxe_title

  validates :title, presence: true, length: { minimum: 4 }

  after_initialize do |article|
    puts "Você criou um artigo, agora salve"
  end
 
  after_find do |article|
    puts "Procurou um artigo"
  end

  private

  def standard_text
    self.text = 'Sem comentários'
  end

  def sintaxe_title
    self.title = title.capitalize
  end
end
