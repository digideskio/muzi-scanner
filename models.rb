class Track < ActiveRecord::Base
	belongs_to :album, :foreign_key => 'album_id'
	belongs_to :genre, :foreign_key => 'genre_id'
	belongs_to :band, :foreign_key => 'band_id'
	belongs_to :year, :foreign_key => 'year_id'
	has_many :pic
end

class Album < ActiveRecord::Base
	has_many :track, :foreign_key => 'album_id'
end

class Genre < ActiveRecord::Base
	has_many :track, :foreign_key => 'genre_id'
end

class Year < ActiveRecord::Base
	has_many :track, :foreign_key => 'year_id'
end

class Band < ActiveRecord::Base
	has_many :track, :foreign_key => 'band_id'
end

class Pic < ActiveRecord::Base
	belongs_to :track
end
