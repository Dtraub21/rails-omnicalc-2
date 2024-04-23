Rails.application.routes.draw do
  # Addition
  get("/", { :controller => "calculations", :action => "add_form" })
  get("/add", { :controller => "calculations", :action => "add_form" })
  post("/wizard_add", { :controller => "calculations", :action => "calculate_addition" })

  # Subtraction
  get("/subtract", { :controller => "calculations", :action => "subtract_form" })
  post("/wizard_subtract", { :controller => "calculations", :action => "calculate_subtraction" })

  # Multiplication
  get("/multiply", { :controller => "calculations", :action => "multiply_form" })
  post("/wizard_multiply", { :controller => "calculations", :action => "calculate_multiplication" })

  # Division
  get("/divide", { :controller => "calculations", :action => "divide_form" })
  post("/wizard_divide", { :controller => "calculations", :action => "calculate_division" })
end
