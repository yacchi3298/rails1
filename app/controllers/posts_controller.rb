class PostsController < ApplicationController
  def index
    @posts=Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :start, :end, :allday, :memo))
      if @post.save
        flash[:notice] = "投稿しました"
        redirect_to :posts
      else
        flash.now[:alert] = "投稿に失敗しました"
        render :new , status: :unprocessable_entity
      end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
      if @post.update(params.require(:post).permit(:title, :start, :end, :allday, :memo))
        flash[:notice] = "更新しました"
        redirect_to :post
      else
        flash.now[:alert] = "更新に失敗しました"
        render :edit , status: :unprocessable_entity
      end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "削除しました"
    redirect_to :posts
  end


end
