class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    @figures = Figure.all
    erb :'/landmarks/index'
  end

  get 'landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    redirect to("/landmarks/#{@landmark.id}")
  end

end
