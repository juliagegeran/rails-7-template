class QuantiesController < ApplicationController
  def index
    matching_quanties = Quanty.all

    @list_of_quanties = matching_quanties.order({ :created_at => :desc })

    render({ :template => "quanties/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_quanties = Quanty.where({ :id => the_id })

    @the_quanty = matching_quanties.at(0)

    render({ :template => "quanties/show" })
  end

  def create
    the_quanty = Quanty.new

    if the_quanty.valid?
      the_quanty.save
      redirect_to("/quanties", { :notice => "Quanty created successfully." })
    else
      redirect_to("/quanties", { :alert => the_quanty.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_quanty = Quanty.where({ :id => the_id }).at(0)


    if the_quanty.valid?
      the_quanty.save
      redirect_to("/quanties/#{the_quanty.id}", { :notice => "Quanty updated successfully."} )
    else
      redirect_to("/quanties/#{the_quanty.id}", { :alert => the_quanty.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_quanty = Quanty.where({ :id => the_id }).at(0)

    the_quanty.destroy

    redirect_to("/quanties", { :notice => "Quanty deleted successfully."} )
  end
end
