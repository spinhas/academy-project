class AccountsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def show_account
    render json: Api::Account.find_account_by_app_key(params[:app_key])
  end

  def show_features_of_account
    render json: Api::Account.get_features_by_app_key(params[:app_key])
  end

  def enable_feature
    render json: Api::Account.enable_feature(params[:app_key],params[:id])
  end

  def disable_feature
    render json: Api::Account.disable_feature(params[:app_key],params[:id])
  end
end
