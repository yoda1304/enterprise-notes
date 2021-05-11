class HomeController < ApplicationController
    before_action :check_login, only: :search

    def index
        @notes = Note.last(5)
    end

    def search

        redirect_back(fallback_location: home_path) if params[:query].blank?
        @query = params[:query]
        @user_courses =  current_user.courses
        @notes = Note.search(@query)
        @course_notes = @notes.select{|n| !(@user_courses & n.courses).empty?}
        @users = User.search(@query)
        @total_hits = @notes.size + @users.size

    end

end
