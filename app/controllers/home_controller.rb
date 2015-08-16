class HomeController < ApplicationController
  def index
  end

  def show_newest_posts
    @posts = Post.order(created_at: :desc).first(10)
  end

end
