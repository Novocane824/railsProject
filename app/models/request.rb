class Request < ActiveRecord::Base
  before_save :check_string

  def check_string
    unless self.time.nil?
      self.time = self.time + 'pm'
    end
  end

end
