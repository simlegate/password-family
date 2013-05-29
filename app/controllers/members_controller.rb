# -*- coding: utf-8 -*-
class MembersController < ApplicationController

  def create
    params[:member][:password] = Base64.encode64(params[:member][:password])

   #  Base64.decode64(code) 
    member = Member.new params[:member]
    member.save! ? flash[:error]="出错！重建" : flash[:success]="成功！"
    redirect_to :back
  end

  def update
    member = Member.find(params[:id]) 
    member.update_attributes(params[:member])
  end
end
