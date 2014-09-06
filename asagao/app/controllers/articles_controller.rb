# coding: utf-8

class ArticlesController < ApplicationController
	def index
		@articles = Article.readable_for(@current_member).order("released_at DESC")
  end
	def show
		@article = Article.readable_for(@current_member).find(params[:id])
	end
end
