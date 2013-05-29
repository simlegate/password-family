class ApplicationController < ApplicationWithExceptionsController
  protect_from_forgery
  before_filter :authenticate_user! unless :product_controller	


end
