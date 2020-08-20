class TagsController < ApplicationController
    def index
       @tag = Tag.all
    end

    def destroy
        @tag = Article.find(params[:id])
        @tag.destroy

        flash.notice = "Tag '#{@tag.name}' Deleted!"
        redirect_to articles_path(@article)
    end


    def new
        @tag = Tag.new
    end

    def show
        @tag = Tag.find(params[:id])
    end
end
