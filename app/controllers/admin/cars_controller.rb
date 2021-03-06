class Admin::CarsController < Admin::BaseController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def edit
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)

    if  @car.save
      redirect_to admin_car_path(@car), notice: 'Car was successfully created.'
    else
      render 'new'
    end
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(car_params)
      redirect_to admin_car_path(@car), notice: 'Car was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to admin_cars_path, notice: 'Car was successfully deleted.'
  end

  private

  def car_params
    params.require(:car).permit(:model, :manufacturer_id, :car_group_id)
  end
end
