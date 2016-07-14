class SensorsController < ApplicationController
  def index
    sensor = Sensor.where(client_id: params[:client_id])

    render json: sensor
  end

  def show
    sensor = Sensor.find(params[:id])
    render json: sensor
  end

  def create
     Sensor.create!(sensor_params)
  end

  private

  def sensor_params
    params.require(:sensor).permit(:client_id, :value, :description)
  end
end
