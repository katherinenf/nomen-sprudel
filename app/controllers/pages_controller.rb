class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home; end

  def practice_set_up
    @sets = WordSet.all
  end

  def high_scores
    @users = User.all.order(high_score: :desc)
  end
end
