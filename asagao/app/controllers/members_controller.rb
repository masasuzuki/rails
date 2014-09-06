#coding: utf-8

class MembersController < ApplicationController
  before_filter :login_required
  def index
    @members = Member.order("number")
  end
  def search
    @members = Member.search(params[:q])
    render "index"
  end
  def show
    @member = Member.find(params[:id])
  end
  #新規作成フォーム
  #def new
  #  @member = Member.new(birthday: Date.new(1980, 1, 1))
  #end
#
  ##更新20140903
  ##更新フォーム
  #def edit
  #  @member = Member.find(params[:id])
  #end
  #def create
  #  @member = Member.new(params[:member])
  #  if @member.save
  #    redirect_to @member, notice: "会員を登録しました"
  #  else
  #    render "new"
  #  end
  #end
  #def update
  #  @member = Member.find(params[:id])
  #  @member.assign_attributes(params[:member])
  #  if @member.save
  #    redirect_to @member, notice: "会員情報を更新しました"
  #  else
  #    render "edit"
  #  end
  #end
  #def destroy
  #  @member = Member.find(params[:id])
  #  @member.destroy
  #  redirect_to :members, notice: "会員を削除しました"
  #end
end
