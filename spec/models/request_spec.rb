require 'rails_helper'

RSpec.describe Request, :type => :model do
  it "is a valid request" do
    request = Request.new
    request.location = "central"
    request.save

    expect(request).to be_valid
  end

  it "is invalid if the request does not have a letter" do
    request = Request.new
    request.time = "12"
    request.save

    expect(request).to be_valid
  end

end