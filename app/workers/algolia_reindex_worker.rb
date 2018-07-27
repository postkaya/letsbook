class AlgoliaReindexWorker
  include Sidekiq::Worker

  def perform(id, remove)
    if remove
      # the record has likely already been removed from your database so we cannot
      # use ActiveRecord#find to load it
      index = Algolia::Index.new("Category")
      index.delete_object(id)
    else
      # the record should be present
      c = Category.find(id)
      c.index!
    end
  end
end
