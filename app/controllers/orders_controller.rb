class OrdersController < ApplicationController

  def create
    @user = current_user
    @total = params[:total].to_d
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [
        {
          name: 'Rails Stripe Checkout au top, tu connais ! ;)',
          amount: (@total*100).to_i,
          currency: 'eur',
          quantity: 1
        },
      ],
      success_url: order_success_url + '?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: order_cancel_url # on peut rediriger ailleurs si on veut, par exemple vers 'root_url' plutot qu'une page 'order_cancel'
      #on peut aussi ajouter un flash 'Transaction annulée - erreur lors du paiement' en cas d'erreur 
    )  
    respond_to do |format|
      format.js # renders create.js.erb
    end
  end # fin methode 'create'


  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
  end

  def cancel
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
  end





end # fin classe OrdersController
