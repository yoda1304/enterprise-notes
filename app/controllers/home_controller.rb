class HomeController < ApplicationController

    def index
        @notes = Note.all
        @users = User.all
    end

    def search

        redirect_back(fallback_location: home_path) if params[:query].blank?
        @query = params[:query]
        @notes = Note.search(@query)
        @users = User.search(@query)
        @total_hits = @notes.size + @users.size

    end

end
