class SquarerootController < ApplicationController
  def squareroot_new
    render(template: "form_design/squareroot_new")
  end

  def squareroot_results
    @num2 = params.fetch("user_number").to_f
    @squaredroot_num = Math.sqrt(@num2)

    render(template: "form_design/squareroot_results")
  end
end
