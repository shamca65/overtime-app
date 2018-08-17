class PostsController < ApplicationController
  before_action :set_post, only:[:show]

  def index
    @posts = Post.all
  end

  def new
    # just renders the form  and create the instance variable
    @post = Post.new
  end

  def create
    # whitelist params
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Your post was created successfully'
    else

      render :new, notice: 'Post was not saved'
    end
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:date, :rationale)
  end

end
