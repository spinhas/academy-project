
module Api
  class Feature

    def self.get_all_features()
      url = "#{ENV['DB_API']}/features?utoken=#{ENV['UTOKEN']}"
      response = Api::Request.get_response_by_url(url)

      unless response.nil?
        return response['response']['features']
      end
    end

  end

end