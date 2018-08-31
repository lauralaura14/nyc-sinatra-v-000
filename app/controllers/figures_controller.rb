class FiguresController < ApplicationController
  get '/figures' do
    @landmarks = Landmark.all
    @figures = Figure.all
    erb :'/figures/index'
  end

  get 'figuress/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    redirect to("/figures/#{@figure.id}")
  end

end
