require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  def setup
    @subscription = subscriptions(:one)
  end

  test 'subscription is valid' do
    assert @subscription.valid?, "#{@subscription.inspect} is valid"
  end

  test 'subscription name should be present' do
    @subscription.name = nil
    assert_not @subscription.valid?
  end
end
