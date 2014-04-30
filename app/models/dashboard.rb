class Dashboard < ActiveRecord::Base
  attr_accessible :desc, :title

  self.per_page = 10

  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end
end
