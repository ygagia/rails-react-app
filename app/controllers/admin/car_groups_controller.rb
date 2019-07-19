class Admin::CarGroupsController < Admin::BaseController
  def index
    @car_groups = CarGroup.all
  end

  def show
    @car_group = CarGroup.find(params[:id])
  end

  def new
    @car_group = CarGroup.new
  end

  def edit
    @car_group = CarGroup.find(params[:id])
  end

  def create
    @car_group = CarGroup.new(car_group_params)

    if  @car_group.save
      redirect_to admin_car_group_path(@car_group), notice: 'Car Group was successfully created.'
    else
      render 'new'
    end
  end

  def update
    @car_group = CarGroup.find(params[:id])

    if @car_group.update(car_group_params)
      redirect_to admin_car_group_path(@car_group), notice: 'Car Group was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @car_group = CarGroup.find(params[:id])
    @car_group.destroy

    redirect_to admin_car_groups_path, notice: 'Car Group was successfully deleted.'
  end

  private

  def car_group_params
    params.require(:car_group).permit(:name)
  end
end
