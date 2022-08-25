class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks

  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :bookmark, dependent: :destroy
end
