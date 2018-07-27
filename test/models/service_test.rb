require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(name: 'Beauty', 
                              slug: 'beauty')
    
    @service = @category.service.build(name: 'Massage', 
                              slug: 'massage')
  end

  test "service should be valid" do
    assert @service.valid?
  end

  test "service must belong to a category" do
    @service.category = nil
    assert_not @service.valid?
  end

  test "service should have a name" do
    @service.name = '      '
    assert_not @service.valid?
  end

  test "service should have a slug" do
    @service.slug = '       '
    assert_not @service.valid?
  end
end
