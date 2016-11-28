class RubyquizzesController < ApplicationController
  before_filter :authenticate, exec: [:home]
  before_action :set_rubyquiz, only: [:show, :edit, :update, :destroy]

  # GET /rubyquizzes
  # GET /rubyquizzes.json
  def index
    @rubyquizzes = Rubyquiz.all
  end

  # GET /rubyquizzes/1
  # GET /rubyquizzes/1.json
  def show
  end

  # GET /rubyquizzes/new
  def new
    @rubyquiz = Rubyquiz.new
  end

  # GET /rubyquizzes/1/edit
  def edit
  end

  # POST /rubyquizzes
  # POST /rubyquizzes.json
  def create
    @rubyquiz = Rubyquiz.new(rubyquiz_params)

    respond_to do |format|
      if @rubyquiz.save
        format.html { redirect_to @rubyquiz, notice: 'Rubyquiz was successfully created.' }
        format.json { render :show, status: :created, location: @rubyquiz }
      else
        format.html { render :new }
        format.json { render json: @rubyquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubyquizzes/1
  # PATCH/PUT /rubyquizzes/1.json
  def update
    respond_to do |format|
      if @rubyquiz.update(rubyquiz_params)
        format.html { redirect_to @rubyquiz, notice: 'Rubyquiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubyquiz }
      else
        format.html { render :edit }
        format.json { render json: @rubyquiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubyquizzes/1
  # DELETE /rubyquizzes/1.json
  def destroy
    @rubyquiz.destroy
    respond_to do |format|
      format.html { redirect_to rubyquizzes_url, notice: 'Rubyquiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def answering
    @quizz = Rubyquiz.all
  end
  
  def check
    @quiz = Rubyquiz.find(params[:id])
    respond_to do |format|
    if params[:ans][0].to_i == @quiz.correctAns
      flash[:notice] = "Correct Answer"
      format.html { redirect_to answering_rubyquizzes_path}
      format.json { head :ok }
    else
      flash[:notice] = "Wrong Answer"
      format.html { redirect_to answering_rubyquizzes_path}
      format.json { head :ok }

end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubyquiz
      @rubyquiz = Rubyquiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubyquiz_params
      params.require(:rubyquiz).permit(:question, :ans1, :ans2, :ans3, :ans4, :correctAns)
    end
    def authenticate
      authenticate_or_request_with_http_basic do |name,password|
      name =="rhea" && password == "rhea"
    end
  end
end
