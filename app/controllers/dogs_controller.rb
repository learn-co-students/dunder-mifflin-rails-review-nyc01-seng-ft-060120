class DogsController < ApplicationController

    def index
        @dogs = Dog.sorted
    end

    def show
        @dog = Dog.find(params[:id])
    end

end
