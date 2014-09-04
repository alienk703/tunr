class Song < ActiveRecord::Base
	belongs_to :artist
	has_many :purchases
	has_many :users, through: :purchases

	validates :title, :price, :preview_url, :song_url, presence: true
	validates :price, numericality: true
	validates :price, numericality: :greater_than 0
	
end
