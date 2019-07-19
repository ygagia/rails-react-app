class Admin::ManufacturersController < Admin::BaseController
  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if  @manufacturer.save
      redirect_to admin_manufacturer_path(@manufacturer), notice: 'Manufacturer was successfully created.'
    else
      render 'new'
    end
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])

    if @manufacturer.update(manufacturer_params)
      redirect_to admin_manufacturer_path(@manufacturer), notice: 'Manufacturer was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy

    redirect_to admin_manufacturers_path, notice: 'Manufacturer was successfully deleted.'
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name)
  end
end
