class CreateViewerShows < ActiveRecord::Migration[5.2]
  def change
    create_table :viewer_shows do |t|
      t.integer :viewer_id
      t.integer :tvshow_id
      t.float :rating
    end
  end
end
