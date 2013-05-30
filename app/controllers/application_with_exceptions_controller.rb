# -*- coding: utf-8 -*-
class  ApplicationWithExceptionsController < ActionController::Base
  # 异常种类：
  # rescue_from ActionController::UnknownController 
  # rescue_from AbstractController::ActionNotFound
  # rescue_from NoMethodError
  # rescue_from RuntimeError
  # rescue_from Mongoid::Errors::DocumentNotFound
  # rescue_from Mongoid::Errors::Validations
  # rescue_from Moped::Errors::OperationFailure
  # rescue_from NameError
  # rescue_from CanCan::AccessDenied
  
#  rescue_from Exception do | exception|
#    flash[:error]=  exception.message
#    render :error , :layout => false
#  end
  

#
#  
#  def routing_error
#    flash[:error]= "你所访问的url不存在！"
#    render :error ,:layout => false
#  end


 
end
