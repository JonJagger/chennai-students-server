
require_relative '../models/images'

class MemoryController < ApplicationController

  get '/' do
    erb :memory
  end

  get '/images/index' do
    @filenames = Images.filenames
    if params['shuffled'] === 'true'
      @filenames.shuffle!
    end
    erb :image_index
  end

end
