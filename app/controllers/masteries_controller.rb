class MasteriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def updateAll
    respond_to do |format|
      format.html { redirect_to profile_path }
      format.text {
        @ids = request.raw_post.split
        @my_masteries = Mastery.where(user: current_user)
        @ids.each do |id|
          # check if mastery already exists
          if @my_masteries.where(word_id: id).exists?
            @mastery = @my_masteries.find_by(word_id: id)
            # check number of successes, if over 3, switch to mastered
            if @mastery.successes < 3
              increment = @mastery.successes + 1
              @mastery.update(successes: increment)
            else
              @mastery.update(mastered: true, successes: 0)
            end
          else
            @mastery = Mastery.new
            @mastery.user_id = current_user.id
            @mastery.word_id = id
            @mastery.save
          end
          current_user.update(high_score: current_user.high_score + 1)
        end
      }
    end
  end
end
