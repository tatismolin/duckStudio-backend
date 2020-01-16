require "stripe"

class ChargesController < ApplicationController

    skip_before_action :authenticate, except: [:create]

    def create
        Stripe.api_key = "pk_test_n25VuFBwG0P8arNmqBOWXehY00B8Jc6bdi"

        begin

            customer = Stripe::Customer.create(
                :email => params[:token][:email],
                :source => params[:token][:id]
            )

            charge = Stripe::Charge.create({
                :customer => customer.id,
                :receipt_email => params[:token][:email]
                :shipping => {
                    :name => params[:token][:card][:name],
                    :address => {
                        :line1 => params[:token][:card][:address_line1],
                        :line2 => params[:token][:card][:address_line2],
                        :city => params[:token][:card][:address_city],
                        :country => params[:token][:card][:address_country],
                        :postal_code => params[:token][:card][:address_zip],
                    }
                }
            }, {
                :idempotency_key => ip_key
            })

        rescue Stripe::CardError => e
            render json: {message: "oops"}, status: :not_acceptable
        end
    end

end

