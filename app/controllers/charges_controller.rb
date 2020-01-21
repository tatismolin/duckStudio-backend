require "stripe"

class ChargesController < ApplicationController

    skip_before_action :authenticate

    def create
        Stripe.api_key = "sk_test_7p9Uk5wzXySyenTCLQMGTuvR00dxls3gHd"

        customer = Stripe::Customer.create(
            email: params[:token][:email],
            source: params[:token][:id]
        )

        charge = Stripe::Charge.create({
            amount: 100,
            currency: "usd",
            customer: customer.id,
            receipt_email: params[:token][:email],
            description: "Duck",
            shipping: {
                name: params[:token][:card][:name],
                address: {
                    line1: params[:token][:card][:address_line1],
                    line2: params[:token][:card][:address_line2],
                    city: params[:token][:card][:address_city],
                    country: params[:token][:card][:address_country],
                    postal_code: params[:token][:card][:address_zip]
                }
            }
        },{
            idempotency_key: params[:ip_key]
        })
    end

end

