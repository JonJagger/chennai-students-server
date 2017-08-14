require 'sinatra/base'
require_relative './images'

class FacesBook < Sinatra::Base

  get '/' do
    erb :faces
  end

  get '/faces/index' do
    @filenames = Images.filenames
    @filenames.shuffle! if params['shuffled'] === 'true'
    erb :faces_index
  end

end
