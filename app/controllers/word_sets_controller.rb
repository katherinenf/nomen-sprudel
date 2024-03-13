class WordSetsController < ApplicationController

  def index
    @sets = WordSet.all
    @new_word_set = WordSet.new
    if params["url_path"]
      redirect_to word_set_path(params["url_path"]["set"])
    end
  end

  def show
    @set = WordSet.find(params[:id])
    @words = @set.words
    respond_to do |format|
      format.html
      format.text {
        render partial: "/shared/list", locals: { words: @words }, formats: [:html]
      }
    end
  end

  def word_set_create
    @set = WordSet.find(params[:id])
    @all_words = Word.all
    if params[:query].present?
      @all_words = @all_words.where("german ILIKE ?", "%#{params[:query]}%")
    end
  end

  def create
    @new_word_set = WordSet.new(new_word_set_params)
    @new_word_set.save!

    redirect_to word_set_create_path(@new_word_set)
  end

  private

  def new_word_set_params
    params.require(:word_set).permit(:name)
  end
end
