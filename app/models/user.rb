class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :userName, presence: true, length: { in: 2..25 }
  # validates :nameLast, presence: true, length: { in: 2..25 }
  # validates :nameFirst, presence: true, length: { in: 2..25 }

  has_many :articles
end
