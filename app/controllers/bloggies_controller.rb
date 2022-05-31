class BloggiesController < ApplicationController
  before_action :set_bloggy, only: %i[ show edit update destroy ]

  # GET /bloggies or /bloggies.json
  def index
    @bloggies = Bloggy.all
  end

  # GET /bloggies/1 or /bloggies/1.json
  def show
  end

  # GET /bloggies/new
  def new
    @bloggy = Bloggy.new
  end

  # GET /bloggies/1/edit
  def edit
  end

  # POST /bloggies or /bloggies.json
  def create
    @bloggy = Bloggy.new(bloggy_params)

    respond_to do |format|
      if @bloggy.save
        format.html { redirect_to bloggy_url(@bloggy), notice: "Bloggy was successfully created." }
        format.json { render :show, status: :created, location: @bloggy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bloggy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloggies/1 or /bloggies/1.json
  def update
    respond_to do |format|
      if @bloggy.update(bloggy_params)
        format.html { redirect_to bloggy_url(@bloggy), notice: "Bloggy was successfully updated." }
        format.json { render :show, status: :ok, location: @bloggy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bloggy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloggies/1 or /bloggies/1.json
  def destroy
    @bloggy.destroy

    respond_to do |format|
      format.html { redirect_to bloggies_url, notice: "Bloggy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloggy
      @bloggy = Bloggy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bloggy_params
      params.require(:bloggy).permit(:title, :content)
    end
end
