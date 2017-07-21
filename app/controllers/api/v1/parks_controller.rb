
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
      @park = Park.create!(park_params)
      json_response(@park, :created)
    end

    # PATCH/PUT /parks/1
    # PATCH/PUT /parks/1.json
    def update
      @park = Park.find(params[:id])
      if @park.update!(park_params)
        render status: 200, json: {
        message: "Your park has successfully been updated."
        }
      end
    end

    # DELETE /parks/1
    # DELETE /parks/1.json
    def destroy
      @park = Park.find(params[:id])

      if @park.destroy!
      render status: 200, json: {
        message: "Your park has been successfully deleted."
      }
    end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_park
        @park = Park.find(params[:id])
      end
      # Never trust parameters from the scary internet, only allow the white list through.
      def park_params
        params.permit(:name, :description, :location)
      end
  end
