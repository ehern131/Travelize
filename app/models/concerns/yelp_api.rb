
class YelpApi
 def self.search(location, term, limit=5)
   response = Yelp.client.search(location, { term: term, limit: limit})
   # total_results = response.total
   # geographic_center = response.center
   response.businesses
 end
end
