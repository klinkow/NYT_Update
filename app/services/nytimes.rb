class Nytimes

  def get_NYT
    uri = URI("https://api.nytimes.com/svc/topstories/v2/home.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    uri.query = URI.encode_www_form({
      "api-key" => ENV['NYT_TOP_STORIES'],
      "callback" => "article"
    })
    request = Net::HTTP::Get.new(uri.request_uri)
    @result = JSON.parse(http.request(request).body)
    @results = @result["results"]
    return @results
  end


  def sort_us_politics(articles)
    results = []
    articles.each do |article|
      if result['section'] === "U.S." && result['subsection'] === "Politics" &&
        results.push(article)
      end
    end
    return results
  end


  def rest_client
    # RestClient.get 'https://api.nytimes.com/svc/topstories/v2/home.json', {params: {id: 50, 'foo' => 'bar'}}
  end




end
