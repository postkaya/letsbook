class WorkingHoursController < ApplicationController
  def index
  end

  def new
    @working_hour = WorkingHour.new
    @days = %w(monday tuesday wednesday thursday friday saturday sunday holidays)
  end

  def create
    # "working_hour"=> {"monday"=> {"time_from"=>"8:00 AM", "time_to"=>"12:00 PM"}, "thursday"=> {"time_from"=>"8:00 AM", "time_to"=>"4:00 PM"} }, "provider_id"=>"demo-company"}
    # 
    work_hours = params[:working_hour]
    @working_hour = WorkingHour.new
    work_hours.each do |wk|
      @working_hour.day = params[:day]
      @working_hours.time_from = wk.time_from
      @working_hours.time_to = wk.time_to
      @working_hours.provider_id = wk.provider_id
      @working_hours.save
    end
    redirect_to new_provider_payments_path
  end

  private
  def working_hours_params
    params.require(:working_hour).permit(:day, :time_from, :time_to, :provider_id)
  end
end
