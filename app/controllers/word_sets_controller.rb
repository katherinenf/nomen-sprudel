class WordSetsController < ApplicationController
  def index
    @sets  = WordSet.all
    if params["url_path"]
      redirect_to word_set_path(params["url_path"]["set"])
    end
  end

  def show
    @set = WordSet.find(params[:id])
    @words = @set.words
  end
end
