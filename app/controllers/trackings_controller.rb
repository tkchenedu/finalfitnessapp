class TrackingsController < ApplicationController
  def index
    matching_trackings = Tracking.all

    @list_of_trackings = matching_trackings.order({ :created_at => :desc })

    render({ :template => "trackings/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_trackings = Tracking.where({ :id => the_id })

    @the_tracking = matching_trackings.at(0)

    render({ :template => "trackings/show.html.erb" })
  end

  def create
    the_tracking = Tracking.new
    the_tracking.food_id = params.fetch("query_food_id")
    the_tracking.user_id = params.fetch("query_user_id")

    if the_tracking.valid?
      the_tracking.save
      redirect_to("/trackings", { :notice => "Tracking created successfully." })
    else
      redirect_to("/trackings", { :alert => the_tracking.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_tracking = Tracking.where({ :id => the_id }).at(0)

    the_tracking.food_id = params.fetch("query_food_id")
    the_tracking.user_id = params.fetch("query_user_id")

    if the_tracking.valid?
      the_tracking.save
      redirect_to("/trackings/#{the_tracking.id}", { :notice => "Tracking updated successfully."} )
    else
      redirect_to("/trackings/#{the_tracking.id}", { :alert => the_tracking.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_tracking = Tracking.where({ :id => the_id }).at(0)

    the_tracking.destroy

    redirect_to("/trackings", { :notice => "Tracking deleted successfully."} )
  end
end
