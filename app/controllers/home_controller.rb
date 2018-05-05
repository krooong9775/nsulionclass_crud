class HomeController < ApplicationController
  def index
    @every_post = Post.all.order("id desc")
  end

  def write
  end

  def write_result
    @title = params[:title]
    @content = params[:content]
    
    save_post = Post.new
    save_post.title = @title
    save_post.content = @content
    save_post.save
  end
  
  def destroy
    destroy_post = Post.find(params[:post_id])
    destroy_post.destroy
    
    redirect_to "/"
  end
  
  def edit_page
    @edit_post = Post.find(params[:post_id])
  end
  
  def edit
    edit_post = Post.find(params[:post_id])
    edit_post.title = params[:title]
    edit_post.content = params[:content]
    edit_post.save
    
    redirect_to "/"
  end
  
end
