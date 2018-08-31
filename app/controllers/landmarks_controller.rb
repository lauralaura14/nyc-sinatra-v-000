class LandmarksController < ApplicationController
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get 'landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end

  post '/landmarks' do
    @landmark = Landmark.create(:name => params["Name"])
    @landmark.title = Title.find(:name => params["Title Name"])
    @landmark.title_id = params[:titles]
    @landmark.save
    redirect to("/landmarks/#{@landmark.id}")
  end

end
