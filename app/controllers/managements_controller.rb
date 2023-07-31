class ManagementsController < ApplicationController
  def index
    @managements = Management.all
  end
  def show
    @management = Management.find(params[:id])
  end
  def new
    @management = Management.new
  end
  def create
    @management = Management.new(x_params)

    if @management.save
      redirect_to @management
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @management = Management.find(params[:id])
  end

  def update
    @management = Management.find(params[:id])

    if @management.update(x_params)
      redirect_to @management
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @management = Management.find(params[:id])
    @management.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def x_params
      params.require(:management).permit(:name, :email, :contact, :meeting_date, :start_time, :end_time)
    end
end
