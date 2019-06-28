class Admin::CarsController < Admin::BaseController
  def index
    @cars = Car.all
  end
end
