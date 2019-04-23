class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!

  # ==========================
  # INDEX ALL ACTION
  # ==========================
  get '/' do
    @recipes = Recipe.all
    erb :"recipes/index"
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :"recipes/index"
  end

  # ==========================
  # NEW ACTION
  # ==========================
  get '/recipes/new' do
    erb :"recipes/new"
  end

  post '/recipes' do
    name = params[:name]
    ingredients = params[:ingredients]
    cook_time = params[:cook_time]

    @recipe = Recipe.create(name: name, ingredients: ingredients, cook_time: cook_time )
    redirect "/recipes/#{@recipe.id}"
  end

  # ==========================
  # SHOW ACTION
  # ==========================
  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :"recipes/show"
  end

  # ==========================
  # EDIT ACTION
  # ==========================
  get '/recipes/:id/edit' do
    @recipe = Recipe.find(params[:id])
    erb :"recipes/edit"
  end

  patch '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.update(
      name: params[:name],
      ingredients: params[:ingredients],
      cook_time: params[:cook_time]
    )
    redirect "/recipes/#{@recipe.id}"
  end

  # ==========================
  # DELETE ACTION
  # ==========================

  delete '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    redirect "/recipes"
  end

end
