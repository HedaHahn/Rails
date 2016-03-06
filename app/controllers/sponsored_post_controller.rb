class SponsoredPost < ApplicationController

  def show
    @sponsored_posts = SponsoredPost.find(params[:id])
  end

  def new
    @sponsored_posts = SponsoredPost.find(params[:topic_id])
    @sponsored_posts = SponsoredPost.new
  end

  def edit
      @sponsored_posts = SponsoredPost.find(params[:id])
  end
end
