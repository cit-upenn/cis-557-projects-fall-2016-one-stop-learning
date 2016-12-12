class JavaquizzesController < ApplicationController
  before_action :set_javaquiz, only: [:show, :edit, :update, :destroy]

  # GET /javaquizzes
  # GET /javaquizzes.json
  def index
    @javaquizzes = Javaquiz.all
  end

  # GET /javaquizzes/1
  # GET /javaquizzes/1.json
  def show
  end

  # GET /javaquizzes/new
  def new
    @javaquiz = Javaquiz.new
  end

  # GET /javaquizzes/1/edit
  def edit
  end

  # POST /javaquizzes
  # POST /javaquizzes.json
  def create
    @javaquiz = Javaquiz.new(javaquiz_params)

    respond_to do |format|
      if @javaquiz.save
        format.html { redirect_to @javaquiz, notice: 'Javaquiz was successfully created.' }
        format.json { render :show, status: :created, location: @javaquiz }
      else
        format.html { render :new }
        format.json { render json: @javaquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /javaquizzes/1
  # PATCH/PUT /javaquizzes/1.json
  def update
    respond_to do |format|
      if @javaquiz.update(javaquiz_params)
        format.html { redirect_to @javaquiz, notice: 'Javaquiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @javaquiz }
      else
        format.html { render :edit }
        format.json { render json: @javaquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /javaquizzes/1
  # DELETE /javaquizzes/1.json
  def destroy
    @javaquiz.destroy
    respond_to do |format|
      format.html { redirect_to javaquizzes_url, notice: 'Javaquiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def answering
    @quizz = Javaquiz.all
  end
  
  def check
    @quiz = Javaquiz.find(params[:id])
    respond_to do |format|
      if params[:ans][0].to_i == @quiz.correctAns
      flash[:notice] = "Correct Answer"
      format.html { redirect_to answering_javaquizzes_path}
      format.json { head :ok }
    else
      flash[:wrong] = "Wrong Answer"
      format.html { redirect_to answering_javaquizzes_path}
      format.json { head :ok }
end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_javaquiz
      @javaquiz = Javaquiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def javaquiz_params
      params.require(:javaquiz).permit(:question, :ans1, :ans2, :ans3, :ans4, :correctAns)
    end
end
