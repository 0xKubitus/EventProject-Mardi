class AttendancesController < ApplicationController

  def new
    @attendance = Attendance.new(event: Event.find(params[:event_id]), attendee: current_user)
  end

  def create
  end

  def show
  end

  def index
  end









end
