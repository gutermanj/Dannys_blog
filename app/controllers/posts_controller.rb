class PostsController < ApplicationController

# before_action :authenticate_user!


  def index
    @posts = Post.all.order('created_at DESC')
  end
  
  def destroy
   @post = Post.find(params[:id])
   @post.destroy

   respond_to do |format|
     format.html { redirect_to posts_url }
     format.json { head :no_content }
    end
  end
  
  
  def new
  end
  
  def create
      @post = Post.new(post_params)
      @post.save
      
      redirect_to @post
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
  
end
