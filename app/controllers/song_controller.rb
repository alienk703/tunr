class SongsController < ActionController::Base

	def index
		@songs = Song.all
	end
  
  	def show
  		@songs = Song.find( params [:id] )
  		@artists = Artist.all
  	end
end
