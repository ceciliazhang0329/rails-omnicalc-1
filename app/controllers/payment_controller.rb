class PaymentController < ApplicationController
  def payment_new
    render(template: "form_design/payment_new")
  end

  def payment_results
    @user_apr = params["user_apr"].to_f / 100  # Convert to decimal if user inputs as percentage
    @user_years = params["user_years"].to_f
    @user_pv = params["user_pv"].to_f

    @rate_monthly = @user_apr / 12
    @period_monthly = @user_years * 12 
    
    @numerator = @rate_monthly * @user_pv
    @denominator = 1 - (1 + @rate_monthly) ** -@period_monthly  

    @result = @numerator / @denominator

    render(template: "form_design/payment_results")
  end
end
