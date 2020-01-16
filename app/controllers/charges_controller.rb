require "stripe"

class ChargesController < ApplicationController

    skip_before_action :authenticate

    def create
        Stripe.api_key = "sk_test_7p9Uk5wzXySyenTCLQMGTuvR00dxls3gHd"

        customer = Stripe::Customer.create(
            email: params[:email],
            source: params[:id]
        )

        charge = Stripe::Charge.create(
            customer: customer.id,
            receipt_email: params[:email],
            shipping: {
                name: params[:card][:name],
                address: {
                    line1: params[:card][:address_line1],
                    line2: params[:card][:address_line2],
                    city: params[:card][:address_city],
                    country: params[:card][:address_country],
                    postal_code: params[:card][:address_zip]
                }
            }, 
            idempotency_key: ip_key
        )
    end

end

