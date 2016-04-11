
module Api
  class Account

    def self.find_account_by_app_key(app_key)
      url = "#{ENV['DB_API']}/apps/#{app_key}?utoken=#{ENV['UTOKEN']}"
      response = Api::Request.get_response_by_url(url)

      unless response.nil?
        return response['response']['app']
      end
    end

    def self.get_features_by_app_key(app_key)
      url = "#{ENV['DB_API']}/apps/#{app_key}/features?utoken=#{ENV['UTOKEN']}"
      response = Api::Request.get_response_by_url(url)

      unless response.nil?
        return response['response']['features']
      end
    end

    def self.enable_feature(app_key, feature_id)
      url = "#{ENV['DB_API']}/apps/#{app_key}/features?utoken=#{ENV['UTOKEN']}&id=#{feature_id}"

      HTTParty.post(url)
    end

    def self.disable_feature(app_key, feature_id)
      url = "#{ENV['DB_API']}/apps/#{app_key}/features/#{feature_id}?utoken=#{ENV['UTOKEN']}"

      HTTParty.delete(url)
    end

  end
end