class CategoryOffersController < ApplicationController
  before_filter :find_product, only: [:show, :edit, :update, :destroy]

  # GET /category_offers
  # GET /category_offers.json
  def index
    @category_offers = CategoryOffer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category_offers }
    end
  end

  # GET /category_offers/1
  # GET /category_offers/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category_offer }
    end
  end

  # GET /category_offers/new
  # GET /category_offers/new.json
  def new
    @category_offer = CategoryOffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category_offer }
    end
  end

  # GET /category_offers/1/edit
  def edit
  end

  # POST /category_offers
  # POST /category_offers.json
  def create
    @category_offer = CategoryOffer.new(params[:category_offer])

    respond_to do |format|
      if @category_offer.save
        format.html { redirect_to @category_offer, notice: 'Category offer was successfully created.' }
        format.json { render json: @category_offer, status: :created, location: @category_offer }
      else
        format.html { render action: "new" }
        format.json { render json: @category_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /category_offers/1
  # PUT /category_offers/1.json
  def update
    respond_to do |format|
      if @category_offer.update_attributes(params[:category_offer])
        format.html { redirect_to @category_offer, notice: 'Category offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_offers/1
  # DELETE /category_offers/1.json
  def destroy
    @category_offer.destroy

    respond_to do |format|
      format.html { redirect_to category_offers_url }
      format.json { head :no_content }
    end
  end

  private

  def find_product
    @category_offer = CategoryOffer.find(params[:id])
  end
end
