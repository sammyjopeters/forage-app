class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
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
    all_listing_count = @listings.count
    
    if params[:search_term].present?
      search_term = "%#{params[:search_term]}%"
      @listings = @listings.where("name ilike ?", search_term) 
      # if @listings == nil
      # render text: "" 
      # end
      search_count = @listings.count


    end
    if params[:suburb].present?
      search_term = "%#{params[:suburb]}%"
      @listings = @listings.where("location ilike ?", search_term)
    end
    final_count = @listings.count


      if final_count == 0

        flash.notice = "There aren't any listings that match '#{h params[:search_term]}' and '#{h params[:suburb]}'. <a href='/'>Try some different search terms</a> or check out <a href='/listings'>All Listings</a> instead. ".html_safe
      
        if search_count != 0 && params[:search_term].present?
          flash.notice = "There aren't any listings that match '#{h params[:search_term]}' and '#{h params[:suburb]}' specifically. There are <a href='/listings?utf8=✓&search_term=#{params[:search_term]}&suburb=&commit=Forage'>#{search_count} #{pluralize 'listing', search_count} for just '#{h params[:search_term]}'</a> though! <a href='/'>Try some different search terms</a> or check out <a href='/listings'>All Listings</a> instead. ".html_safe
        end

      else 
        
      end


  end
  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])
  end

  # GET /listings/new
  def new
    @listing = current_user.listings.new
  end

  # GET /listings/1/edit
  def edit
    @categories = Category.all
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = current_user.listings.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: "Listing for #{@listing.name} was successfully created." }
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
      params.require(:listing).permit(:name, :amount, :description, :location, :transaction_type, :cost, :expiry, :user_id, :pictures, :location_state, :sold, :sold_to, :category_id)
    end
end
