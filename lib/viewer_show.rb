class ViewerShow < ActiveRecord::Base
  belongs_to :viewer
  belongs_to :tv_show
end
