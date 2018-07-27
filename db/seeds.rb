# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Service.delete_all
Subscription.delete_all
ProviderType.delete_all
Provider.delete_all

categories = [
  { name: 'Arts & Crafts',  slug: 'arts-&-crafts' },
  { name: 'Barbers',        slug: 'barbers' },
  { name: 'Beauty',         slug: 'beauty' },
  { name: 'Events',         slug: 'events' },
  { name: 'Foot care',       slug: 'foot-care' },
  { name: 'Imaging',        slug: 'imaging' },
  { name: 'Massages',       slug: 'massages' },
  { name: 'Personal stylist', slug: 'personal-stylist' },
  { name: 'Skin care',       slug: 'skin-care' },
  { name: 'Therapy',       slug: 'therapy' },
  { name: 'Training',       slug: 'training' },
]

provider_type = [
  { name: 'Business' },
  { name: 'Company' },
  { name: 'Entrepreneur' }
]

services = [
  {category_id: 10, name: 'Facial', slug: 'facial'},
  {category_id: 10, name: 'Waxing', slug: 'waxing'},
  {category_id: 10, name: 'Laser', slug: 'laser'},
  {category_id: 3, name: 'Eyelashes', slug: 'eyelashes'},
  {category_id: 3, name: 'Fillers', slug: 'fillers'},
  {category_id: 3, name: 'Manicure', slug: 'manicure'},
  {category_id: 3, name: 'Make ups', slug: 'make-ups'},
  {category_id: 11, name: 'Yoga', slug: 'yoga'},
  {category_id: 11, name: 'Group training', slug: 'group-training'},
  {category_id: 7, name: 'Classical massage', slug: 'classical-massage'},
  {category_id: 7, name: 'Energy', slug: 'energy'},
  {category_id: 7, name: 'Thai', slug: 'thai'},
  {category_id: 7, name: 'Back', slug: 'back'},
  {category_id: 5, name: 'Classical foot-care', slug: 'classical-foot-care'},
  {category_id: 5, name: 'Medical', slug: 'medical'},
  {category_id: 5, name: 'Spa', slug: 'spa'},
  {category_id: 2, name: 'Editor', slug: 'editor'},
  {category_id: 2, name: 'Styling', slug: 'styling'},
  {category_id: 2, name: 'Color', slug: 'color'},
  {category_id: 6, name: 'Photography', slug: 'photography'},
  {category_id: 6, name: 'Video editing', slug: 'video-editing'},
  {category_id: 6, name: 'Animator', slug: 'animator'},
]

subscriptions = [
  {name: 'Basic', price: 0.00, description: 'Basic plan is free.'},
  {name: 'Starter', price: 4.99, description: 'Not so much features are enabled.'},
  {name: 'Premium', price: 9.99, description: 'Our recommended package for all startups.'},
  {name: 'Gold', price: 14.99, description: 'You get access to an array of options.'},
  {name: 'Platinum', price: 19.99, description: 'Gain un-tethered access to amazing and awesome features.'},
]

providers = [
  {user_id: 3, subscription_id: 1, provider_type_id: 2, name: 'Foodain Inc', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
  {user_id: 4, subscription_id: 2, provider_type_id: 3, name: 'Massage Parlor', address: 'P.O. Box 2934 Magodo Estate, Banana Island', country: 'Nigeria', state: 'Lagos'},
  {user_id: 1, subscription_id: 1, provider_type_id: 1, name: 'Foodain Inc.', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
  {user_id: 1, subscription_id: 1, provider_type_id: 2, name: 'Foodain Inc.', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
  {user_id: 1, subscription_id: 1, provider_type_id: 2, name: 'Foodain Inc.', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
  {user_id: 1, subscription_id: 1, provider_type_id: 3, name: 'Foodain Inc.', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
  {user_id: 1, subscription_id: 1, provider_type_id: 1, name: 'Foodain Inc.', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
  {user_id: 1, subscription_id: 1, provider_type_id: 1, name: 'Foodain Inc.', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
  {user_id: 1, subscription_id: 1, provider_type_id: 2, name: 'Foodain Inc.', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
  {user_id: 1, subscription_id: 2, provider_type_id: 3, name: 'Foodain Inc.', address: '15 Deedaw Lane, Madina', country: 'Ghana', state: 'Greater Accra'},
]

Category.create([categories])
Service.create([services])
ProviderType.create([provider_type])
Subscription.create([subscriptions])
Provider.create([providers])