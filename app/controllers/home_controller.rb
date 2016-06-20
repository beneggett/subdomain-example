class HomeController < ApplicationController
  before_action :find_subdomain, only: :show
  def index
  end
  def show

  end

end
