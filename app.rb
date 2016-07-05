require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')
require('pry')

get('/') do
  erb(:index)
end

get('/parcel') do
  length = params.fetch('length').to_i
  width = params.fetch('width').to_i
  height = params.fetch('height').to_i
  speed = params[:speed].to_i
  weight = params.fetch('weight').to_i
  @parcel= Parcel.new(length, width, height, speed, weight)
  erb(:parcel)
end
