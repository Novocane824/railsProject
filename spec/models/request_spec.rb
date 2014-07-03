require 'rails_helper'

RSpec.describe Request, :type => :model do
  it "is a valid request" do
    request = Request.new
    request.location = "central"
    request.save

    expect(request).to be_valid
  end
end