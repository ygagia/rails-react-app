class PagesController < ApplicationController
  around_action :hypernova_render_support

  def index
    @cars = Car.all
  end
end
