class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
      # binding.pry
    redirect_to root_path
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :image)
  end

end
