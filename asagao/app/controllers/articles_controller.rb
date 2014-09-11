# coding: utf-8

class ArticlesController < ApplicationController
	def index
		@articles = Article.readable_for(@current_member).order("released_at DESC").paginate(page: params[:page], per_page: 5)
  end
	def show
		@article = Article.readable_for(@current_member).find(params[:id])
	end
end
