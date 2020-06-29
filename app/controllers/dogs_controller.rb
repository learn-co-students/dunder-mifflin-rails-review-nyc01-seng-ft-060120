class DogsController < ApplicationController

    def index 
        @dogs = Dog.all
    end

    def show 
        @dog = Dog.find(params[:id])
    end

    def dog_params(*args)
        params.require(:dog).permit(*args)
    end
end
