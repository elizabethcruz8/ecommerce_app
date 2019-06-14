class Api::ShoesController < ApplicationController
  def index 
    @shoes = Shoes.all

    render "index.json.jbuilder"
  end 

  def show 
    @shoe = Shoe.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create 
    @shoe = Shoe.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]) 

    if @shoe.save 
      render "show.json.jbuilder"
    else
      render json: {errors: @shoe.errors.full_messages}, status: 422
    end
  end 

  def update 
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.name = params[:name]
    @shoe.price = params[:price]
    @shoe.description = params[:description]

    @shoe.save 

    render "show.json.jbuilder"
  end 

  def destroy 
    @shoe = Shoe.find_by(id: params[:id])
    @shoe.destroy
    render json: {message:"Shoe succesfully deleted!"}
  end 


end
