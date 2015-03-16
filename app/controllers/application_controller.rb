class ApplicationController < ActionController::API
  include ActionController::Serialization
  include ActionController::RespondWith
  include ActionController::ImplicitRender

  respond_to :json
end
