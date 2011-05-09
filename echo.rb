if ENV['RACK_ENV'] != 'production'
  require 'rubygems'
end

require 'json'
require 'sinatra'
require 'sinatra/jsonp'

def format_response(params, source)
  response = {
    :success => true,
    :source => source    
  }.merge(params)
end
                                  
# Action methods
# --------------

before do
  content_type :json
end

get '/*?', :provides => :json do
  jsonp format_response(params, request.url)
end

post '/*?', :provides => :json do
  jsonp format_response(params, request.url)
end

put '/*?', :provides => :json do
  jsonp format_response(params, request.url)
end

delete '/*?', :provides => :json do
  jsonp format_response(params, request.url)
end
