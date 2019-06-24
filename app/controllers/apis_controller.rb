class ApisController < ApplicationController
  def index # GET apis/index
    time = Timetable.all
    render json: time
  end

  def show # GET apis/show/Friday/2/理工学部 その時間の受けることが可能な授業
    time = Timetable.where(day: params[:day], hours: params[:hours].to_i, faculty: params[:faculty]).or(Timetable.where(day: params[:day], hours: params[:hours].to_i, specialty?: false))
    render json: time
  end

  def voice_index #GET apis/voice_index/:timetable_id
    eva = Evaluation.where(timetable_id: params[:timetable_id])
    render json: eva
  end

  def create_timetable
    timetable = Timetable.new(timetable_params)

    if timetable.save # POST apis/create_timetable
      render json: {'result': 'OK'}
    else
      render json: {'result': 'NG'}, status: 400
    end
  end

  def create_evaluation #POST apis/create_evaluation 
    evaluation = Evaluation.new(evaluation_params)
    
    if evaluation.save
      render json: {'result': 'OK'}
    else
      render json: {'result': 'NG'}, status: 400
    end
  end



  private
  
  def timetable_params
    params.permit(:title, :teacher, :credit, :day, :hours, :year, :faculty, :specialty?)
  end
  
  def evaluation_params
    params.permit(:timetable_id, :title, :content, :user, :star, :permission)
  end
end
