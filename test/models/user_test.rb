require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "Example User",
                     name: "Example Name",
                     last
                     email: "user@example.com")
  end
end
