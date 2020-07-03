class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        set_dog
    end

    private

    def set_dog
        @dog = Dog.find(params[:id])
    end
end
