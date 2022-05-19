class EventsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]


  def index
    @events = Event.all
  end


  def new
    @event = Event.new
  end


  def create
    event = Event.new(start_date: params[:start_date], duration: params[:duration], title: params[:title], description: params[:description], price: params[:price], location: params[:location], admin: current_user)

    if event.save
      flash.notice = "L'Évènement a été créé avec succès !"
    redirect_to event_path(event.id)
    else
      flash.alert = event.errors.full_messages
      redirect_to new_event_path
    end
  end


  def show
    @event = Event.find(params[:id])
  end


  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end





end # fin 'EventsController'
