class Service < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :slug, presence: true

  # include AlgoliaSearch

  # algoliasearch do
    # attribute :name, :slug
    # geoloc :lat_attr, :lng_attr
    # the `searchableAttributes` (formerly known as attributesToIndex) setting defines the attributes
    # you want to search in: here `title`, `subtitle` & `description`.
    # You need to list them by order of importance. `description` is tagged as
    # `unordered` to avoid taking the position of a match into account in that attribute.
    # searchableAttributes ['name']

    # the `customRanking` setting defines the ranking criteria use to compare two matching
    # records in case their text-relevance is equal. It should reflect your record popularity.
    # customRanking ['desc(likes_count)']
  # end
end
