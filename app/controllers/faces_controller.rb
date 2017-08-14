
require_relative '../models/images'

class FacesController < ApplicationController

  get '/' do
    erb :faces
  end

  get '/faces/index' do
    @filenames = Images.filenames
    @filenames.shuffle! if params['shuffled'] === 'true'
    erb :faces_index
  end

end
