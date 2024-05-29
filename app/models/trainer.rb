class Trainer < ApplicationRecord
  validates :banner_url, :name, presence: true
  has_many :pokemons, dependent: :destroy # delete the child when removing self(trainer it self)
end
