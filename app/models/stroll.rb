class Stroll < ApplicationRecord
  belongs_to :dogsitter
  has_many :knowledges
  has_many :dogs, through: :knowledges
end
