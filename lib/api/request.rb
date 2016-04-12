
module Api
  class Request

    #return response by url, otherwise return nil
    def self.get_response_by_url(url)
      response = HTTParty.get(url)

      if response.success?
        return response.parsed_response
      else
        return nil
      end
    end

  end
end