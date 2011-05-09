if ENV['RACK_ENV'] != 'production'
  require 'rubygems'
end

require 'sinatra'
require 'json'

def format_response(params, source)
  response = {
    :success => true,
    :source => source    
  }.merge(params).to_json
end
                                  
# Action methods
# --------------

get '/*?', :provides => :json do
  content_type :json
  format_response(params, request.url)
end

post '/*?', :provides => :json do
  content_type :json  
  puts params.inspect
  format_response(params, request.url)
end

put '/*?', :provides => :json do
  content_type :json  
  format_response(params, request.url)
end

delete '/*?', :provides => :json do
  content_type :json
  format_response(params, request.url)
end
