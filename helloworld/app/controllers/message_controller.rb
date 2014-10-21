class MessageController < ApplicationController
	before_filter :authenticate_user!
  def show
  	@message = Message.find(params[:id])
  end
end
