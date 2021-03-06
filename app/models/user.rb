class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tags, dependent: :destroy
  has_many :posts, dependent: :destroy
         
  validates :name, presence: true, uniqueness: true, length: { maximum: 15 }
end
