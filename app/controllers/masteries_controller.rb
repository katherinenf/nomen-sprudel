class MasteriesController < ApplicationController

  def update_many
    @ids = request.raw_post
    @my_masteries = Mastery.where(user: current_user)
    @ids.each do |id|
      # check if mastery already exists
      if @my_masteries.where(word_id: id).exists?
        @mastery = Mastery.new
      else
        @mastery = Mastery.new
        @mastery.user_id = current_user.id
        @mastery.word_id = id
      end
    end
  end
end
