class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify
  	client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
  	
  	message = client.messages.create from: '+14152148009', to: '+16463202769', body: 'Learning to send SMS you are.'
  	
  	render plain: message.status
  end
 
end