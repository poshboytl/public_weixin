class VotesController < ApplicationController
  def create
    vs = VotingService.new(request, params[:bizid], params[:msgid])
    if vs.vote!
      render text: "", status: 201
    end
  end

  def destroy
    vs = VotingService.new(request, params[:bizid], params[:msgid])
    if vs.unvote!
      render text: "", status: 200
    end
  end
end
