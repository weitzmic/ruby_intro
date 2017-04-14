class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    @your_output = my_birthday = Time.parse("August, 28th, 1987")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born

    first = "michael"
    last = "weitz"

    @first_then_last = first + " " + last
    @last_then_first = last + "," + first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    the_number = rand(100)

    if the_number < 25
      @your_output = "It's going to be your lucky day today"
    elsif the_number > 75
      @your_output = "Don't leave home today"
    else
      @your_output = "It'll be an okay day today"
    end

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 10, 6]
    squared_numbers = []

    our_numbers.each do |num|
      square = num * num
      squared_numbers.push(square)
    end

    @your_output = squared_numbers.sum

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a

    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs/third_program.html.erb")
  end
end
