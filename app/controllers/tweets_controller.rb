class TweetsController < ApplicationController
  def index
  end

  def search
    @tweets = Tweet.search(params[:keyword])
  end
end
