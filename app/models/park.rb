class Park < ApplicationRecord

  validates :directions, presence: true
  validates :description, presence: true
  validates :name, presence: true
  validates :states, presence: true
  validates :website, presence: true

end
