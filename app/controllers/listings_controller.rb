class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :new, :create]
  

  # GET /listings
  # GET /listings.json
  def index
    if @user.present? 
      @listings = @user.listings
    else
      @listings = Listing.all
    end
  end
  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])
  end

  # GET /listings/new
  def new
    @listing = @user.listings.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = @user.listings.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: "Listing for #{@listing.goods_type} was successfully created." }
        format.json { render action: 'show', status: :created, location: @listing }
      else
        format.html { render action: 'new' }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id]) if params[:user_id].present?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:goods_type, :amount, :description, :location, :transaction_type, :cost, :expiry, :user_id, :pictures, :location_state, :sold, :sold_to)
    end
end
