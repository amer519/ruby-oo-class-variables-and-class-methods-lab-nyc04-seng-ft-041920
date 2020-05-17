class Song
attr_reader :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []
@@genre_count = {}
@@artist_count ={}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << self.artist
        @@genres << self.genre
        
        
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count 
        @@genres.each do |gen|
            if !@@genre_count.include?(gen)
                @@genre_count[gen] = 1
             else
                @@genre_count[gen] += 1
            end
        end
        @@genre_count
    end

    def self.artist_count
        @@artists.each do |art|
            if !@@artist_count.include?(art)
                @@artist_count[art] = 1
             else
                @@artist_count[art] += 1
            end
        end
        @@artist_count

        
    end

end