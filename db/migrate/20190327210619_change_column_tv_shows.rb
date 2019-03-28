class ChangeColumnTvShows < ActiveRecord::Migration[5.2]
  def change
    rename_column :viewer_shows, :tvshow_id, :tv_show_id
  end
end
