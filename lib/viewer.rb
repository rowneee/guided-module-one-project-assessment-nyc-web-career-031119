class Viewer < ActiveRecord::Base
  has_many :viewer_shows
  has_many :tv_shows, through: :viewer_shows

  


end
