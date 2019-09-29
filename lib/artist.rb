class Artist

    attr_reader :name

    # The Artist class needs a class variable @@all that begins as an empty array
    
    @@all = []

    def initialize(name)
        # An artist is initialized with a name and is saved in the @@all array.
        
        @name = name
        @@all << self
    end

    # The Artist class needs a class method .all that lists each artist in the class variable

    def self.all 
        @@all
    end

    # The Artist class needs an instance method, #new_song, that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    # The Artist class needs an instance method, #songs, that iterates through all songs and finds the songs that belong to that artist. Try using select to achieve this.

    def songs
        Song.all.select { |song| song.artist == self }
    end

    # The Artist class needs an instance method, #genres that iterates over that artist's songs and collects the genre of each song.

    def genres 
        songs.map { |song| song.genre }
    end

    









end     # end of Artist class