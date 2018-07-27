require 'test_helper'

class WorkingHourTest < ActiveSupport::TestCase
  def setup
    @working_hour = Working.new(time_from: '', time_to: '', provider_id: 1)
  end
  
  test "working hour must have a time from" do
    @working_hour.time_from = nil
    assert_not @working_hour.valid?
  end
  
  test "working hour must have a time to" do
    @working_hour.time_to = nil
    assert_not @working_hour.valid?
  end
end
