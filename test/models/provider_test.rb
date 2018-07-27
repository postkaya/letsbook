require 'test_helper'

class ProviderTest < ActiveSupport::TestCase
  def setup
    @provider = providers(:one)
    # @provider = Provider.new(user_id: 1, subscription_id: 2, provider_type_id: 2, name: 'Massage Palor', website: 'http://www.massagepalace.com', address: 'P.O. Box 1503 Deedaw Lane, Madina', country: 'Nigeria', state: 'Abuja')
  end

  # test "provider should be valid" do
  #   assert @provider.valid?, "#{@provider.inspect} should be valid"
  # end

  # test "provider must belong to a user" do
  #   @provider.user_id = nil
  #   assert_not @provider.valid?
  # end

  # test "provider must belong to a type" do
  #   @provider.provider_type_id = nil
  #   assert_not @provider.valid?
  # end

  # test "provider must have a subscription" do
  #   @provider.subscription_id = nil
  #   assert_not @provider.valid?
  # end

  # test "provider must have a name" do
  #   @provider.name = nil
  #   assert_not @provider.valid?
  # end

  test "provider name must be unique" do
    @duplicate_provider = @provider.dup
    @duplicate_provider.name = @provider.name.upcase
    @duplicate_provider.save
    assert_not @duplicate_provider.valid?
  end

  # test "provider must have an address" do
  #   @provider.address = nil
  #   assert_not @provider.valid?
  # end

  # test "provider must have come from a country" do
  #   @provider.country = nil
  #   assert_not @provider.valid?
  # end

  # test "provider must come from a state" do
  #   @provider.state = nil
  #   assert_not @provider.valid?
  # end
end
