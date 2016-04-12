class FeaturesController < ApplicationController

  def get_all_features
    render json: Api::Feature.get_all_features()
  end
end
