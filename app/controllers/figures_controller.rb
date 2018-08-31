class FiguresController < ApplicationController
  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get 'figures/:id' do
    @figure = Figures.find(params[:id])
    erb :'/figures/show'
  end
end
