class CourseUsersController < ApplicationController
    before_action :check_login
    
    def new
        @course_user = CourseUser.new
        @user = current_user

    end

    def create

        @course_user = CourseUser.new(course_user_params)
        if @course_user.save
            flash[:notice] = "Successfully added to your courses."
            @course_user.user.badge.courses_increment
            redirect_to user_path(@course_user.user)

        end
    end

    private
        def course_user_params
            params.require(:course_user).permit(:user_id, :course_id)
        end


end

