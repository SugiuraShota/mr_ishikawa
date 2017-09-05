class Api::V1::VotesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    @vote_count = (REDIS.incr :vote_count).to_i
  end

end