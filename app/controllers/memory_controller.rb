
require_relative '../models/images'

class MemoryController < ApplicationController

  get '/' do
    erb :memory
  end

  get '/images/index' do
    @filenames = Images.filenames
    @filenames.shuffle! if params['shuffled'] === 'true'
    erb :images_index
  end

end
