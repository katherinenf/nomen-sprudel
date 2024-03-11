class MasteriesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    respond_to do |format|
      format.html
      format.text {
        @ids = request.raw_post.split
        @my_masteries = Mastery.where(user: current_user)
        @ids.each do |id|
          # check if mastery already exists
          if @my_masteries.where(word_id: id).exists?
            @mastery = @my_masteries.find_by(word_id: id)
            @mastery.update(mastered: true)
          else
            @mastery = Mastery.new
            @mastery.user_id = current_user.id
            @mastery.word_id = id
            @mastery.save
          end
        end
        redirect_to masteries_path
      }
    end
  end
end
