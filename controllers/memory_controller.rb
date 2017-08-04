
class MemoryController < ApplicationController

  get '/' do
    erb :memory
  end

  get '/image_index' do
    erb :image_index
  end

end
