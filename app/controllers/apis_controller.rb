class ApisController < ApplicationController
  def index #apis/index
    time = Timetable.all
    render json: time
  end

  def show #apis/show/Friday/2/理工学部 その時間の受けることが可能な授業
    time = Timetable.where(day: params[:day], hours: params[:hours].to_i, faculty: params[:faculty]).or(Timetable.where(day: params[:day], hours: params[:hours].to_i, specialty?: false))
    render json: time
  end

  def voice_index #apis/voice_index/:timetable_id
    eva = Evaluation.where(timetable_id: params[:timetable_id])
    render json: eva
  end

  def create
  end
end
