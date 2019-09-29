class Song

    attr_reader :name, :artist, :genre

    # The Song class needs a class variable @@all that begins as an empty array.
    
    @@all = []

    def initialize(name, artist, genre)
        # A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.
        
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    # The Artist class needs a class method .all that lists each artist in the class variable

    def self.all 
        @@all
    end
    
end     # End of Song class





