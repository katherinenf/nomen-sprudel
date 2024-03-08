class MasteryController < ApplicationController

  def update_many(ids)
    ids.split
    @my_masteries = Mastery.where(user: current_user)
  end
end
