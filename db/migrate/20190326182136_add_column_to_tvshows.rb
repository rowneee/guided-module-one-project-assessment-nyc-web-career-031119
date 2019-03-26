class AddColumnToTvshows < ActiveRecord::Migration[5.2]
  def change
    add_column :tv_shows, :summary, :text 
  end
end
