class EventsController < ApplicationController

  before_filter :find_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.scoped
    @events = Event.between(params['start'], params['end']) if (params['start'] && params['end'])
    respond_to do |format|
      format.html { redirect_to calendar_path }
      format.json { render json: @events }
    end
  end
  
  def show
    respond_to do |format|
      format.html 
      format.json { render json: @event }
    end
  end
  
  def new
    @event = Event.new
    respond_to do |format|
      format.html 
      format.json { render json: @event }
    end
  end
  
  def create
    @event = Event.new(params[:event])
    respond_to do |format|
      if @event.save
        format.html { redirect_to calendar_path, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to calendar_path, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  private

    def find_event
      @event = Event.find(params[:id])
    end
end
