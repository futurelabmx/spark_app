class SubscriptionsController < ApplicationController
  def show
  end

  def new
  end

  def create
      amount = 10000
      customer = if current_user.stripe_id?
                    Stripe::Customer.retrieve(current_user.stripe_id)
                  else
                    Stripe::Customer.create(email: current_user.email, source: params[:stripeToken])
                  end

      charge = Stripe::Charge.create(
        amount: amount,
        currency: "mxn",
        customer: customer
      )


    redirect_to :root
  end

  def destroy
  end

end
