class DinosaursController < ApplicationController
  # Interceptors, actions, and some config
  # CSRF disabled only for local testing!!!
  skip_before_action :verify_authenticity_token

  # GET /dinosaurs
  def list
    dinosaurs = Dinosaur.all
    render json: dinosaurs
  end

  # GET /dinosaurs/:id
  def getOne
    dinosaur = Dinosaur.find_by!(id: params[:id])
    render json: dinosaur
  end

  # POST /dinosaurs
  def create
    jsonBodyName = request[:name]
    dinosaur = Dinosaur.create!(:name => jsonBodyName)
    render json: dinosaur
  end
end
