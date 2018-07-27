require 'test_helper'

class ProviderTypeTest < ActiveSupport::TestCase
  def setup
    @provider_type =provider_types(:one)
  end

  test "provider type is valid" do
    assert @provider_type.valid?
  end

  test "provider type name is present" do
    @provider_type.name = nil
    assert_not @provider_type.valid?
  end
end
