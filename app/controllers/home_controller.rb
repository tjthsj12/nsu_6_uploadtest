class HomeController < ApplicationController
  def index
    @every_post = Post.all.order("id desc")
  end

  def write
  end

  def update
    @update_post = Post.find(params[:post_id])
  end
  
  def update_result
    @title = params[:title]
    @content = params[:content]
    @update_post = Post.find(params[:post_id])
    @update_post.title = @title
    @update_post.content = @content
    @update_post.save
  end

  def destroy
    @destroy_post = Post.find(params[:post_id])
    @destroy_post.delete
  end
  
  def result
    @title = params[:title]
    @content = params[:content]
    @save_post = Post.new
    @save_post.title = @title
    @save_post.content = @content
    @save_post.save
  end
  
end
