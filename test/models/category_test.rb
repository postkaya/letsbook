require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = categories(:one)
  end

  test "category should be valid" do
    assert @category.valid?, "#{@category}.inspect "
  end

  test "category should have a name" do
    @category.name = nil
    assert_not @category.valid?
  end

  test "category should have a slug" do
    @category.slug = nil
    assert_not @category.valid?
  end
end
