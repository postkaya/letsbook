module ProvidersHelper
  def full_location(provider)
    "#{provider.city}, #{provider.state}, #{provider.country}"
  end

  def location_with_address(provider)
    "#{provider.address}, #{provider.city}, #{provider.state}, #{provider.country}"
  end
end
