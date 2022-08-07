class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exams_params)
    @exam.user =  current_user

    if @exam.save!
    redirect_to exams_path
    else 
      redirect_to root_path
    end
  end

  def show
    @exam = Exam.find(params[:id])
  end

  # def edit
  #   @exam = Exam.find(params[:id])
  # end

  # def update
  #   exam = Exam.find(params[:id])
  #   exam.update(exam_params)
  #   redirect_to exam
  # end

  #def destroy
    #exam = Exam.find(params[:id])
  #   exam.delete
  #   redirect_to exams_path
  # end

  private

  def exams_params
    params.require(:exam).permit(:class_name,:class_type,:impression,:content,:teacher_name,:examdate,:user_id, :id)
  end
end
