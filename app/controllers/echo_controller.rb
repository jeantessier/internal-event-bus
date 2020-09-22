class EchoController < ApplicationController
  def index
    ActiveSupport::Notifications.instrument('echo', params) do
      Rails.logger.info 'Echo params'
    end
    render json: params
  end
end
