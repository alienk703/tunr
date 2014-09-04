class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :songs, through: :purchases
	has_many :purchases

	validates :name, :email, :password_digest, presence: true
	validates :email, uniqueness: true
	validates :balance, numericality: true
	validates :balance, numericality: { greater_than_or_eqaul_to: 0} 
	validates :name, length: { minimum: 2 }
	validates :password_digest, length: { in: 6..12}

end
