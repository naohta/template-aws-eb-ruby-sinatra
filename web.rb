#coding:utf-8
require 'sinatra'
require 'json'

creds = eval ENV['PARAM1'] # Set PARAM1 on AWS-ElasticBeanstalk.

get '*' do
  puts "[#{Time.now},web.rb] Request[#{request.url}] comes from[#{request.user_agent}]"
  pass 
end

get '/' do
  creds.to_json
end
