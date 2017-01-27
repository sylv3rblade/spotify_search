class SearchSerializer < ActiveModel::Serializer
  attributes :id, :name, :href, :external_urls, :genres
  
  def id
    object['id']
  end

  def name
    object['name']
  end

  def href
    object['href']
  end

  def external_urls
    object['external_urls']
  end

  def genres
    object['genres']
  end
end
