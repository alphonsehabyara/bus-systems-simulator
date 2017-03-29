class StaticPagesController < ApplicationController
  def index
    render 'home.html.erb'
  end
end
