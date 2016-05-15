class MyNamesController < ApplicationController
  before_action :set_my_name, only: [:show, :edit, :update, :destroy]

  # GET /my_names
  # GET /my_names.json
  def index
    @my_names = MyName.all
  end

  # GET /my_names/1
  # GET /my_names/1.json
  def show
  end

  # GET /my_names/new
  def new
    @my_name = MyName.new
  end

  # GET /my_names/1/edit
  def edit
  end

  # POST /my_names
  # POST /my_names.json
  def create
    @my_name = MyName.new(my_name_params)

    respond_to do |format|
      if @my_name.save
        format.html { redirect_to @my_name, notice: 'My name was successfully created.' }
        format.json { render :show, status: :created, location: @my_name }
      else
        format.html { render :new }
        format.json { render json: @my_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_names/1
  # PATCH/PUT /my_names/1.json
  def update
    respond_to do |format|
      if @my_name.update(my_name_params)
        format.html { redirect_to @my_name, notice: 'My name was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_name }
      else
        format.html { render :edit }
        format.json { render json: @my_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_names/1
  # DELETE /my_names/1.json
  def destroy
    @my_name.destroy
    respond_to do |format|
      format.html { redirect_to my_names_url, notice: 'My name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_name
      @my_name = MyName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_name_params
      params.require(:my_name).permit(:name, :color)
    end
end
