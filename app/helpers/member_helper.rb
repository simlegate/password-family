# -*- coding: utf-8 -*-
module MemberHelper

  def table_members_title
    ["站点名称","用户名","密码","注册邮箱","链接"]
  end

  def form_title member
    member.new_record? ? '新建站点' : '编辑站点'
  end

  def form_url member
    member.new_record? ? url_for_event(:create) : url_for_event(:replace,:id=>member.id)
  end
end
