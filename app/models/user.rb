class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects, class_name: "Project", foreign_key: "creator_id", dependent: :destroy
  has_many :chats, as: :chatable
end
