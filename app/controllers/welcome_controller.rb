class WelcomeController < ApplicationController
  def index
    @rooms = Room.order('created_at DESC').all
  end
end
