class WordSetsWordsController < ApplicationController

  def create
    @word_set_word = WordSetsWord.new(word_set_id: params[:word_set_id], word_id: params[:word_id])
    @word_set_word.save!
  end

  # Parameters: {"word_set_id"=>"30", "word_id"=>"110", "word_sets_word"=>{}}
end
