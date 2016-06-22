class RatesController < ApplicationController
  before_action :set_rate, only: [:show, :update, :destroy]

  # GET /rates
  def index
    @rates = Rate.all

    render json: @rates
  end

  # GET /rates/1
  def show
    render json: @rate
  end

  # POST /rates
  def create
    @rate = Rate.new(rate_params)

    if @rate.save
      render json: @rate, status: :created, location: @rate
    else
      render json: @rate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rates/1
  def update
    if @rate.update(rate_params)
      render json: @rate
    else
      render json: @rate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rates/1
  def destroy
    @rate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rate
      @rate = Rate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rate_params
      params.require(:rate).permit(:name, :category_id, :max_num)
    end
end
