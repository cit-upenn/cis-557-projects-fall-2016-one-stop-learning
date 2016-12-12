class CppquizzesController < ApplicationController
  before_action :set_cppquiz, only: [:show, :edit, :update, :destroy]

  # GET /cppquizzes
  # GET /cppquizzes.json
  def index
    @cppquizzes = Cppquiz.all
  end

  # GET /cppquizzes/1
  # GET /cppquizzes/1.json
  def show
  end

  # GET /cppquizzes/new
  def new
    @cppquiz = Cppquiz.new
  end

  # GET /cppquizzes/1/edit
  def edit
  end

  # POST /cppquizzes
  # POST /cppquizzes.json
  def create
    @cppquiz = Cppquiz.new(cppquiz_params)

    respond_to do |format|
      if @cppquiz.save
        format.html { redirect_to @cppquiz, notice: 'Cppquiz was successfully created.' }
        format.json { render :show, status: :created, location: @cppquiz }
      else
        format.html { render :new }
        format.json { render json: @cppquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cppquizzes/1
  # PATCH/PUT /cppquizzes/1.json
  def update
    respond_to do |format|
      if @cppquiz.update(cppquiz_params)
        format.html { redirect_to @cppquiz, notice: 'Cppquiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @cppquiz }
      else
        format.html { render :edit }
        format.json { render json: @cppquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cppquizzes/1
  # DELETE /cppquizzes/1.json
  def destroy
    @cppquiz.destroy
    respond_to do |format|
      format.html { redirect_to cppquizzes_url, notice: 'Cppquiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def answering
    @quizz = Cppquiz.all
  end
  
  def check
    @quiz = Cppquiz.find(params[:id])
    respond_to do |format|
      if params[:ans][0].to_i == @quiz.correctAns
      flash[:notice] = "Correct Answer"
      format.html { redirect_to answering_cppquizzes_path}
      format.json { head :ok }
    else
      flash[:wrong] = "Wrong Answer"
      format.html { redirect_to answering_cppquizzes_path}
      format.json { head :ok }
end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cppquiz
      @cppquiz = Cppquiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cppquiz_params
      params.require(:cppquiz).permit(:question, :ans1, :ans2, :ans3, :ans4, :correctAns)
    end
end
