# -*- coding: utf-8 -*-
class MembersController < ApplicationController
  def index
  end

  def create
    member = Member.new params[:member]
    member.save! ? flash[:error]="出错！重建" : flash[:success]="成功！"
    redirect_to :back
  end
end
