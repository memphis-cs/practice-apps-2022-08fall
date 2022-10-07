class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.order(created_at: :desc)
    render :index
  end

  def show
    @blog_post = BlogPost.find(params[:id])
    render :show
  end

  def new
    @blog_post = BlogPost.new
    render :new
  end

  def create
    @blog_post = BlogPost.new(params.require(:blog_post).permit(:title, :body))
    if @blog_post.save
      flash[:success] = 'Blog post was successfully created.'
      redirect_to blog_post_path(@blog_post)
    else
      flash.now[:error] = 'Unable to create blog post.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
    render :edit
  end

  def update
    @blog_post = BlogPost.find(params[:id])
    if @blog_post.update(params.require(:blog_post).permit(:title, :body))
      flash[:success] = 'Blog post was successfully updated.'
      redirect_to blog_post_path(@blog_post)
    else
      flash.now[:error] = 'Unable to update blog post.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog_post = BlogPost.find(params[:id])
    @blog_post.destroy
    flash[:success] = 'Blog post was successfully destroyed.'
    redirect_to blog_posts_url
  end
end
