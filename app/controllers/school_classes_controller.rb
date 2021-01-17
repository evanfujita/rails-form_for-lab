class SchoolClassesController < ApplicationController

    def show
        @classes = SchoolClass.find(params[:id])
    end

    def new
        @class = Class.new
    end

    def create
        @class = Class.new(post_params)
        @class.save
        redirect_to school_class_path(@class)
    end

    def edit
        @class = Class.find(params[:id])
    end

    def update
        @class = Class.find(params[:id])
        @class.update(post_params)
        redirect_to school_class_path(@class)
    end
    
    private

    def post_params
        params.require(:student).permit(:title, :room_number)
    end

end
