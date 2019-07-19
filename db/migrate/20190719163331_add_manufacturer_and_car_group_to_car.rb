class AddManufacturerAndCarGroupToCar < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :manufacturer, foreign_key: true
    add_reference :cars, :car_group, foreign_key: true
  end
end
