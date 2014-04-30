class Event < ActiveRecord::Base
  attr_accessible :title, :starts_at, :ends_at, :all_day, :description, :created_at, :updated_at

  scope :between, lambda {|start_time, end_time|
    {:conditions => ["? < starts_at < ?", Event.format_date(start_time), Event.format_date(end_time)] }
  }

  def as_json(options = {})
    {
      :id => self.id,
      :title => self.title,
      :description => self.description || "",
      :start => starts_at.rfc822,
      :end => ends_at.rfc822,
      :allDay => self.all_day,
      :recurring => false,
      :url => Rails.application.routes.url_helpers.event_path(id),
      :color => "orange"
    }

  end

  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end
end
