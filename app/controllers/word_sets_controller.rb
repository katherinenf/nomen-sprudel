class WordSetsController < ApplicationController

  def show
    @set = WordSet.find(params: id)
    @words = @set.words
  end
  
end
