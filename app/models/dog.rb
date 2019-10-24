class Dog < ApplicationRecord
  belongs_to :city
  has_many :knowledges
  has_many :strolls, through: :knowledges
  has_many :dogsitters, through: :strolls
end
