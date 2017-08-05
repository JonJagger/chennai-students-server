
require_relative '../models/images'

class MemoryController < ApplicationController

  get '/' do
    erb :memory
  end

  get '/images/index' do
    @filenames = Images.filenames
    erb :image_index
  end

  get '/images/index_shuffled' do
    @filenames = Images.filenames.shuffle
    erb :image_index
  end

end
