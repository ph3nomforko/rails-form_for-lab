class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def show
        set_school_class
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new
        @school_class.title = params[:school_class][:title]
        @school_class.room_number = params[:school_class][:room_number]
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        set_school_class
    end

    def update
        set_school_class
        @school_class.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private

    def set_school_class
        @school_class = SchoolClass.find(params[:id])
    end

end