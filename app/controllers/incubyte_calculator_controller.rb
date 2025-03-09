class IncubyteCalculatorController < ApplicationController
  
  def index
  end

  def calculate
    input = params[:numbers] || ""
    begin
      @result = IncubyteStringCalculator.add(input)
    rescue ArgumentError => e
      @error = e.message
    end
    render :index
  end
end