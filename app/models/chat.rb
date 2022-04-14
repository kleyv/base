class Chat < ApplicationRecord
  belongs_to :chatable, polymorphic: true
  has_many :messages

  validates :name, presence: true, length: {minimum:3, maximum:20}
end
