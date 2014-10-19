class ArticlesController < ApplicationController
def new
end

def create
	render plain: params[:article].inspect
	#make a new article with those params as it's title and text!
	#Article.new(title: params[:article].title, text: params[:article].text)
end
end
