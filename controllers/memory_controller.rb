
require_relative '../helpers/image_index_helper'

class MemoryController < ApplicationController

  get '/' do
    erb :memory
  end

  include ImageIndexHelper
  get '/image_index' do
    @names = image_index
    erb :image_index
  end

  get '/image_index_shuffled' do
    @names = image_index.shuffle
    erb :image_index
  end

end
