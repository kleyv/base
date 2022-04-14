class Project < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  validates :name, presence: true, length: { minimum: 6 }

  has_one :chat, as: :chatable, dependent: :destroy
end
