class FavoritesListsController < ApplicationController
  before_action :set_favorites_list, only: %i[ show edit update destroy ]

  # GET /favorites_lists or /favorites_lists.json
  def index
    @favorites_lists = FavoritesList.all
  end

  # GET /favorites_lists/1 or /favorites_lists/1.json
  def show
    @attractions    = WdwSources::TouringplansAttraction.where(venue_permalink: "magic-kingdom")
    @dining_venues  = WdwSources::TouringplansDiningVenue.where(venue_permalink: "magic-kingdom")
  end

  # GET /favorites_lists/new
  def new
    @favorites_list = FavoritesList.new
  end

  # GET /favorites_lists/1/edit
  def edit
  end

  # POST /favorites_lists or /favorites_lists.json
  def create
    @favorites_list = FavoritesList.new(favorites_list_params)

    respond_to do |format|
      if @favorites_list.save
        format.html { redirect_to @favorites_list, notice: "Favorites list was successfully created." }
        format.json { render :show, status: :created, location: @favorites_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favorites_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorites_lists/1 or /favorites_lists/1.json
  def update
    respond_to do |format|
      if @favorites_list.update(favorites_list_params)
        format.html { redirect_to @favorites_list, notice: "Favorites list was successfully updated." }
        format.json { render :show, status: :ok, location: @favorites_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @favorites_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites_lists/1 or /favorites_lists/1.json
  def destroy
    @favorites_list.destroy
    respond_to do |format|
      format.html { redirect_to favorites_lists_url, notice: "Favorites list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorites_list
      @favorites_list = FavoritesList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorites_list_params
      params.require(:favorites_list).permit(:name)
    end
end
