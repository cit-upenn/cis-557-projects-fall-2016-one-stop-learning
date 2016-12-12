class PythonquizzesController < ApplicationController
  before_action :set_pythonquiz, only: [:show, :edit, :update, :destroy]

  # GET /pythonquizzes
  # GET /pythonquizzes.json
  def index
    @pythonquizzes = Pythonquiz.all
  end

  # GET /pythonquizzes/1
  # GET /pythonquizzes/1.json
  def show
  end

  # GET /pythonquizzes/new
  def new
    @pythonquiz = Pythonquiz.new
  end

  # GET /pythonquizzes/1/edit
  def edit
  end

  # POST /pythonquizzes
  # POST /pythonquizzes.json
  def create
    @pythonquiz = Pythonquiz.new(pythonquiz_params)

    respond_to do |format|
      if @pythonquiz.save
        format.html { redirect_to @pythonquiz, notice: 'Pythonquiz was successfully created.' }
        format.json { render :show, status: :created, location: @pythonquiz }
      else
        format.html { render :new }
        format.json { render json: @pythonquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pythonquizzes/1
  # PATCH/PUT /pythonquizzes/1.json
  def update
    respond_to do |format|
      if @pythonquiz.update(pythonquiz_params)
        format.html { redirect_to @pythonquiz, notice: 'Pythonquiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @pythonquiz }
      else
        format.html { render :edit }
        format.json { render json: @pythonquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pythonquizzes/1
  # DELETE /pythonquizzes/1.json
  def destroy
    @pythonquiz.destroy
    respond_to do |format|
      format.html { redirect_to pythonquizzes_url, notice: 'Pythonquiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def answering
    @quizz = Pythonquiz.all
  end
  
  def check
    @quiz = Pythonquiz.find(params[:id])
    respond_to do |format|
      if params[:ans][0].to_i == @quiz.correctAns
      flash[:notice] = "Correct Answer"
      format.html { redirect_to answering_pythonquizzes_path}
      format.json { head :ok }
    else
      flash[:wrong] = "Wrong Answer"
      format.html { redirect_to answering_pythonquizzes_path}
      format.json { head :ok }
end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pythonquiz
      @pythonquiz = Pythonquiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pythonquiz_params
      params.require(:pythonquiz).permit(:question, :ans1, :ans2, :ans3, :ans4, :correctAns)
    end
end
