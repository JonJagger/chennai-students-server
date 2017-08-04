
require_relative '../models/images'

class MemoryController < ApplicationController

  get '/' do
    erb :memory
  end

  get '/image_index' do
    @names = Images.all
    erb :image_index
  end

  get '/image_index_shuffled' do
    @names = Images.all.shuffle
    erb :image_index
  end

end
