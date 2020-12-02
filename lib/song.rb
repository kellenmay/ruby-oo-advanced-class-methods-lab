class Song
  attr_accessor :name, :artist_name
  @@all = []

  def inintialize 
    @save = save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end

  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end

  def self.find_by_name(song_name)
    self.all.find{|s| s.name == song_name}
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end

  def self.alphabetical
    self.all.sort_by{|s| s.name}
  end

  def self.new_from_filename(file_name)
    title = file_name.split(" - ")
    artist = title[0]
    song_title = title[1].gsub(".mp3", "")
    song = self.new
    song.name = song_title
    song.artist_name = artist
    song
  end

  def self.create_from_filename(file_name)
    title = file_name.split(" - ")
    artist = title[0]
    song_title = title[1].gsub(".mp3", "")
    song = self.create
    song.name = song_title
    song.artist_name = artist
    song
  end

  def self.destroy_all
    self.all.clear
  end


end
