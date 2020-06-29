class DogsController < ApplicationController
    before_action :dogs_method, only: [:show, :edit, :update]

    def index
        @dogs = Dog.all
    end

    def show

    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        if @dog.valid?
            redirect_to dog_path(@dog)
        else      
            flash[:my_errors] = @dog.errors.full_messages
            redirect_to new_dog_path
        end 
    end

    def edit

    end

    def update
        if @dog.update(dog_params)
            redirect_to dog_path(@dog)
        else     
            flash[:my_errors] = @dog.errors.full_messages
            redirect_to new_dog_path 
        end
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age, :employee_id)
    end

    def dogs_method
        @dog = Dog.find(params[:id])
    end
end
