
  class Api::V1::ParksController < ApplicationController
    before_action :set_park, only: [:show, :update, :destroy]

    # GET /parks
    # GET /parks.json
    def index
      @parks = Park.all
      json_response(@parks)
    end

    # GET /parks/1
    # GET /parks/1.json
    def show
      @park = Park.find(params[:id])
      json_response(@park)
    end

    # POST /parks
    # POST /parks.json
    def create
      @park = Park.create(park_params)
     json_response(@park)
    end

    # PATCH/PUT /parks/1
    # PATCH/PUT /parks/1.json
    def update
      if @park.update(park_params)
        render :show, status: :ok, location: @park
      else
        render json: @park.errors, status: :unprocessable_entity
      end
    end

    # DELETE /parks/1
    # DELETE /parks/1.json
    def destroy
      @park.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_park
        @park = Park.find(params[:id])
      end
      def json_response(object, status = :ok)
        render json: object, status: status
      end
      # Never trust parameters from the scary internet, only allow the white list through.
      def park_params
        params.permit(:name, :description, :location)
      end
  end
