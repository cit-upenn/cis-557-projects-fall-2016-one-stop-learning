class LangoptsController < ApplicationController
  before_action :set_langopt, only: [:show, :edit, :update, :destroy]

  # GET /langopts
  # GET /langopts.json
  def index
    @langopts = Langopt.all
  end

  # GET /langopts/1
  # GET /langopts/1.json
  def show
  end

  # GET /langopts/new
  def new
    @langopt = Langopt.new
  end

  # GET /langopts/1/edit
  def edit
  end

  # POST /langopts
  # POST /langopts.json
  def create
    @langopt = Langopt.new(langopt_params)

    respond_to do |format|
      if @langopt.save
        format.html { redirect_to @langopt, notice: 'Langopt was successfully created.' }
        format.json { render :show, status: :created, location: @langopt }
      else
        format.html { render :new }
        format.json { render json: @langopt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /langopts/1
  # PATCH/PUT /langopts/1.json
  def update
    respond_to do |format|
      if @langopt.update(langopt_params)
        format.html { redirect_to @langopt, notice: 'Langopt was successfully updated.' }
        format.json { render :show, status: :ok, location: @langopt }
      else
        format.html { render :edit }
        format.json { render json: @langopt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /langopts/1
  # DELETE /langopts/1.json
  def destroy
    @langopt.destroy
    respond_to do |format|
      format.html { redirect_to langopts_url, notice: 'Langopt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_langopt
      @langopt = Langopt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def langopt_params
      params.require(:langopt).permit(:name)
    end
end
