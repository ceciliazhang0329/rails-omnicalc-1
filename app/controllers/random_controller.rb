class RandomController < ApplicationController
  def random_new
    render(template: "form_design/random_new")
  end
  
  def random_results
    @min = params.fetch("user_min").to_f  
    @max = params.fetch("user_max").to_f  
    @random_float = rand(@min...@max)

    render(template: "form_design/random_results")
  end
end
