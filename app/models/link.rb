require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  has n, :tags, through: Resource

  property :id, Serial
  property :title, String, required: true
  property :url, String, required: true
end
