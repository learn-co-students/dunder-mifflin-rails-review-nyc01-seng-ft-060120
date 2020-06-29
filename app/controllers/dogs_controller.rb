class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def show
  end

  def create
    @dog = Dog.create(dog_params)
    if @dog.save
      redirect_to @dog
    else
      render :new
    end
  end

  def edit
  end

  def update 
  end
  
  def destroy 
    @dog.destroy
    redirect_to dogs_path
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :breed)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end
end
