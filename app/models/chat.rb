class Chat < ApplicationRecord
  belongs_to :chatable, polymorphic: true

  validates :name, presence: true, length: {minimum:3, maximum:20}
end
