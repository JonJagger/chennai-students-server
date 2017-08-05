
require_relative '../models/images'

class MemoryController < ApplicationController

  get '/' do
    erb :memory
  end

  get '/images/index' do
    @names = Images.all
    erb :image_index
  end

  get '/images/index_shuffled' do
    @names = Images.all.shuffle
    erb :image_index
  end

end
