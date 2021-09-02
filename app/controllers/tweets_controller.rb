class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
  end

  def show
  end

  def search
    @tweets = Tweet.search(params[:keyword])
  end
end
