class BadgesController < ApplicationController

    def new

        @badge = Badge.new

    end

    def create
        @badge = Badge.new(badge_params)
    
        respond_to do |format|
          if @badge.save
 
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @note.errors, status: :unprocessable_entity }
          end
        end
      end

    private

    def badge_params
        params.require(:badge).permit(:user_id)
    end

end