class ProductController < ApplicationController

  def index
    redirect_to home_index_path if user_signed_in?
  end

  def about
  end


end
