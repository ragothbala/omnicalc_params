class CalculationsController < ApplicationController

  def flexible_square

    @user_num = params["number"].to_f

    @result = @user_num ** 2

    render("calculations/flexible_square.html.erb")

  end

  def flexible_square_root

    @user_num = params["number"].to_f

    @result = @user_num ** 0.5
    @result = @result.round(2)
    render("calculations/flexible_square_root.html.erb")

  end

  def flexible_payment

    @rate = params["r"].to_f
    @years = params["n"].to_f
    @principal = params["p"].to_f

    r=(@rate/10000)/12
    pv = @principal
    n = @years * 12

    @payment = (r*pv) / (1-((1+r)**(-1*n)))

    render("calculations/flexible_payment.html.erb")

  end

  def flexible_random

    @lower = params["a"].to_i
    @higher = params["b"].to_i

    @result = rand(@lower..@higher)

    render("calculations/flexible_random.html.erb")

  end




  def square_form

    render("calculations/square_form.html.erb")

  end


  def square

    @user_num = params["user_num"].to_f
    @result = @user_num ** 2

    render("calculations/square_results.html.erb")

  end


  def square_root_form

    render("calculations/square_root_form.html.erb")

  end


  def square_root

    @user_num = params["user_num"].to_f
    @result = @user_num ** 0.5

    render("calculations/square_root_results.html.erb")

  end


    def payment_form

      render("calculations/payment_form.html.erb")

    end


      def payment

        @apr = params["r"].to_f
        @years = params["n"].to_f
        @principal = params["p"].to_f

        r=(@apr/100)/12
        pv = @principal
        n = @years * 12

        @payment = (r*pv) / (1-((1+r)**(-1*n)))

        render("calculations/payment_results.html.erb")

      end

      def random_form

        render("calculations/random_form.html.erb")

      end

      def random

        @lower = params["a"].to_i
        @higher = params["b"].to_i

        @result = rand(@lower..@higher)

        render("calculations/random_results.html.erb")



      end



end
