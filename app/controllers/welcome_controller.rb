class WelcomeController < ApplicationController
  def index
    @votes = (REDIS.get :vote_count).to_i
    unless @votes
      @votes = 0
    end
  end

  def create
    REDIS.incr :vote_count
    @votes = (REDIS.get :vote_count).to_i
  end
end
