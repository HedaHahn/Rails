class PostsController < ApplicationController
  def index

    @posts = Post.all
<<<<<<< HEAD
    @posts.each_with_index do [post, index]
      if index % 5 == 0
        post.title = "SPAM"
      end
    end
=======
>>>>>>> e0ad21a37d35a3a20ac8d463fe75a291a99ca51c
  end

  def show
  end

  def new
  end

  def edit
  end
end
