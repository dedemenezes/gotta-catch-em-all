class PokemonTypesController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokemon_type = PokemonType.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])

    # @pokemon_type = PokemonType.new()
    # @pokemon_type.pokemon = @pokemon
    # raise
    types = Type.where(id: params[:pokemon_type][:type])
    types.each do |type|
      PokemonType.create(pokemon: @pokemon, type: type)
    end
    redirect_to trainer_path(@pokemon.trainer)
    # if @pokemon_type.save
    # else
    #   render 'new', status: :unprocessable_entity
    # end
  end

  private

  def pokemon_type_params
    params.require(:pokemon_type).permit()
  end
end
