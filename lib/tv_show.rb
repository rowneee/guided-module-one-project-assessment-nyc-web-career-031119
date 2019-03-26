class TvShow < ActiveRecord::Base
  has_many :viewer_shows
  has_many :viewers, through: :viewer_shows
end
