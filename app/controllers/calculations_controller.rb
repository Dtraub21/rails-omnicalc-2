class CalculationsController < ApplicationController
  # Display the addition form
  def add_form
    render({ :template => "calculations/add_form" })
  end

  # Handle addition form submission
  def calculate_addition
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @first_num + @second_num
    render({ :template => "calculations/add_results" })
  end

  # Display the subtraction form
  def subtract_form
    render({ :template => "calculations/subtraction_form" })
  end

  # Handle subtraction form submission
  def calculate_subtraction
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @first_num - @second_num
    render({ :template => "calculations/sub_results" })
  end

  # Display the multiplication form
  def multiply_form
    render({ :template => "calculations/multiplication_form" })
  end

  # Handle multiplication form submission
  def calculate_multiplication
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @first_num * @second_num
    render({ :template => "calculations/multiply_results" })
  end

  # Display the division form
  def divide_form
    render({ :template => "calculations/division_form" })
  end

  # Handle division form submission
  def calculate_division
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
    @result = @second_num == 0 ? "Infinity" : (@first_num / @second_num)
    render({ :template => "calculations/divide_results" })
  end
end
