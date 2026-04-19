class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path, notice: "作成しました"
    else
      flash.now[:alert] = "作成出来ませんでした"
      render :new
    end
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to question_path(@question), notice: "更新しました"
    else
      flash.now[:alert] = "更新出来ませんでした"
      render :edit
    end
  end
  
  def destroy
    if @question.destroy
      redirect_to questions_path, notice: "削除しました"
    else
      redirect_to questions_path, alert: "削除出来ませんでした"
    end
  end

  def random
    @question = Question.order("RANDOM()").first
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:content, :answer, :category)
  end
end
