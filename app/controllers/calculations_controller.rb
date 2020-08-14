class CalculationsController < ApplicationController
  def new; end

  def show
    @answer = calculate(calculation_params)
  end

  private

  def calculate(params)
    height = Integer(params[:height])
    width = Integer(params[:width])

    width * height
  end

  def calculation_params
    params.require(:calculation).permit(:height, :width)
  end
end
