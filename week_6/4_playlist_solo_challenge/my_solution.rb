# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution
class Song
	def initialize(track, artist)
		@track = track
		@artist = artist
	end

	def play
		"Playing song #{@track} by #{@artist}."
	end
end

class Playlist
	def initialize(*playlist)
		@playlist = playlist
	end

	def add(*tracks)
		tracks.each {|track| @playlist << track}
	end

	def num_of_tracks
		@playlist.count
	end

	def remove(song)
		@playlist.delete(song)
	end

	def includes?(song)
		@playlist.include?(song)
	end

	def play_all
	end

	def display
		puts "#{@playlist.inspect}"
	end
end

# Refactored Solution

class Song
	def initialize(track, artist)
		@track = track
		@artist = artist
	end

	def play
		puts "Playing song #{@track} by #{@artist}."
	end
end

class Playlist
	def initialize(*playlist)
		@playlist = playlist
	end

	def add(*tracks)
		tracks.each {|track| @playlist << track}
	end

	def num_of_tracks
		@playlist.count
	end

	def remove(song)
		@playlist.delete(song)
	end

	def includes?(song)
		@playlist.include?(song)
	end

	def play_all
		puts "Playing #{@playlist}"
	end

	def display
		puts "#{@playlist.inspect}"
	end
end





# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence") 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under) 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
my_playlist.includes?(angels) == false
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 
=begin 
Well, you can have one of two prroblems when making this
=end