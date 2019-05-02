class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all
  end

  def show
    @dragon = Dragon.find(params[:id])
  end

  def new
    @dragon = Dragon.new
  end

  def create
    @dragons = Dragon.new(dragon_params)
    if @dragons.valid?
      @dragons.save
      redirect_to @dragon 
    else
      flash[:error] = @dragons.errors.full_messages
redirect_to new_dragon_path
    end
  end

  def edit
@dragon = Dragon.find(params[:id])
  end

  def update
    @dragon = Dragon.find(params[:id])
    new_dragon=Dragon.new(dragon_params)
    if new_dragon.valid?
      @dragon.update(dragon_params)
      redirect_to @dragon 
    else
      flash[:error] = new_dragon.errors.full_messages
      redirect_to edit_dragon_path
    end

  end

  def destroy
    @dragon = Dragon.find(params[:id])
    @dragon.destroy 
    redirect_to dragons_path
  end

private 

def dragon_params
  params.require(:dragon).permit(:name,:age,:user_id)
end

end

