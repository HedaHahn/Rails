class PostsController < ApplicationController
   def index
     @posts = Post.all
   end

   def update

     @post = Post.new
     @post.title = params[:post][:title]
     @post.body = params[:post][:body]

     if @post.save

       flash[:notice] = "Post was saved."
       redirect_to @post
     else

       flash.now[:alert] = "There was an error saving the post. Please try again."
       render :new
     end
   end

   def destroy
     @post = Post.find(params[:id])

     if @post.destroy
       flash[:notice] = "\"#{@post.title}\" was deleted successfully."
       redirect_to posts_path
     else
       flash.now[:alert] = "There was an error deleting the post."
       render :show
     end
   end

   def show
   end

   def new
   end

   def edit
     @post = Post.find(params[:id])
   end

   def faq
   end

 end
