require 'twilio-ruby'

class TwilioController < ApplicationController

    def send_message
        puts params
        @twilio_number = ENV['TWILIO_NUMBER']
        @client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
        to = '+14155708692'

        message = @client.messages.create(
            :from => @twilio_number,
            :to => to,
            :body => "hi there"
            # :media_url => image_url
        )
        puts message.to
    end

end
