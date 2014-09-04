class Purchase < ActiveRecord::Base
	belongs_to :user
	belongs_to :songs

	validates :song_id, uniqueness: { scope: :user_id,
    message: "you already purchased this song" }
    
end
