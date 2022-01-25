class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes

  get '/messages' do
    Message.all.order(:created_at).to_json
  end
  
end
