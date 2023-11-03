class SquareController < ApplicationController
  def square_new
    render(template: "form_design/square_new")
  end
  
  def square_results
    @num = params.fetch("number").to_f
    @squared_num = @num ** 2
  
    render(template: "form_design/square_results")
  end
end
