require 'twilio-ruby'

class TwilioController < ApplicationController

    def send_message
        @message_body = params["content"]["message"]
        @to_number = HelpfulUser.find(params["content"]["id"]).phone_number
        @twilio_number = ENV['TWILIO_NUMBER']
        @client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']

        message = @client.messages.create(
            :from => @twilio_number,
            :to => @to_number,
            :body => @message_body
            # :media_url => image_url
        )
        puts message.to
        render json: { message: "successfully sent" }
    end

end
