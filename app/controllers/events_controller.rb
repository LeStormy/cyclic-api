class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def index
    render json: @current_user.events, status: :ok
  end

  def create
    event = @current_user.events.new(event_params)
    authorize @event, policy_class: EventPolicy
    if event.save
      render json: event, status: :ok
    else
      render json: { :errors => event.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @event.assign_attributes(event_params)
    authorize @event, policy_class: EventPolicy
    if @event.save
      render json: @event, status: :ok
    else
      render json: { :errors => @event.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    authorize @event, policy_class: EventPolicy
    if @event.destroy
      render json: @event, status: :ok
    else
      render json: { :errors => @event.errors.full_messages }, status: :bad_request
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(
      :type,
      :value,
      :date
    )
  end
end
