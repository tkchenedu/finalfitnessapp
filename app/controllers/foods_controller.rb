class FoodsController < ApplicationController
  def index
    matching_foods = Food.all

    @list_of_foods = matching_foods.order({ :created_at => :desc })

    render({ :template => "foods/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_foods = Food.where({ :id => the_id })

    @the_food = matching_foods.at(0)

    render({ :template => "foods/show.html.erb" })
  end

  def create
    the_food = Food.new
    the_food.name = params.fetch("query_name")
    the_food.fat = params.fetch("query_fat")
    the_food.carb = params.fetch("query_carb")
    the_food.protein = params.fetch("query_protein")
    the_food.calories = params.fetch("query_calories")
    the_food.image = params.fetch("query_image")
    the_food.grams = params.fetch("query_grams")
    the_food.trackings_count = params.fetch("query_trackings_count")

    if the_food.valid?
      the_food.save
      redirect_to("/foods", { :notice => "Food created successfully." })
    else
      redirect_to("/foods", { :alert => the_food.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_food = Food.where({ :id => the_id }).at(0)

    the_food.name = params.fetch("query_name")
    the_food.fat = params.fetch("query_fat")
    the_food.carb = params.fetch("query_carb")
    the_food.protein = params.fetch("query_protein")
    the_food.calories = params.fetch("query_calories")
    the_food.image = params.fetch("query_image")
    the_food.grams = params.fetch("query_grams")
    the_food.trackings_count = params.fetch("query_trackings_count")

    if the_food.valid?
      the_food.save
      redirect_to("/foods/#{the_food.id}", { :notice => "Food updated successfully."} )
    else
      redirect_to("/foods/#{the_food.id}", { :alert => the_food.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_food = Food.where({ :id => the_id }).at(0)

    the_food.destroy

    redirect_to("/foods", { :notice => "Food deleted successfully."} )
  end
end
