class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(songname)
        newsong = Song.new(songname)
        newsong.artist = self
    end

    def self.song_count
        Song.all.length
    end


end