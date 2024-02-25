class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @looks = Look.all
    @look = Look.new
  end
end
