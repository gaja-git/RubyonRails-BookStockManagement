class SearchbkauthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render html: "Rendering searchbkauthor"
    end

    def create
        bkbyauthor = Bookstock.find_by('bookauthor': params[:bookauthor])
        if(bkbyauthor.nil?)
            render json: "Book does not exit"
        else
            render json: bkbyauthor
            
        end
    end
end
