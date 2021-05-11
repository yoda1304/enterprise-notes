class CourseNotesController < ApplicationController
    before_action :check_login
    
    def new
        @course_note = CourseNote.new
        @note = Note.find(params[:note_id])

    end

    def create

        @course_note = CourseNote.new(course_note_params)
        if @course_note.save
            flash[:notice] = "Successfully added to your courses."
            redirect_to note_path(@course_note.note)
        end
    end

    private
        def course_note_params
            params.require(:course_note).permit(:note_id, :course_id)
        end


end