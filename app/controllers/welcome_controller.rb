class WelcomeController < ApplicationController
  def index
    render "device/registrations/new"
  end
end
