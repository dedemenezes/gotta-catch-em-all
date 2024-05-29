class PokemonsController < ApplicationController
  def create
    # 0. find the right trainer
    @trainer = Trainer.find(params[:trainer_id])
    # 1 .initialize the new pokemon with the information coming from the form
    @pokemon = Pokemon.new(pokemon_params)
    # 2. assign the right trainer
    @pokemon.trainer = @trainer

    if @pokemon.save
      redirect_to trainer_path(@trainer)
    else
      # Render doesn't trigger a new HTTP request
      # gets the HTML and siplay on the page
      # uses the variable inside THIS ACTION
      # to render the html required
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy

    redirect_to trainer_path(@pokemon.trainer)
  end

  private

  def pokemon_params
    # params
#     {"authenticity_token"=>"[FILTERED]",
#  "pokemon"=>{"name"=>"Brok", "image_url"=>"https://static1.srcdn.com/wordpress/wp-content/uploads/2016/11/Brock-Pokemon-Series.jpg"},
#  "commit"=>"Create Pokemon",
#  "trainer_id"=>"5"}
#   params.require(:pokemon) => {"name"=>"Brok", "image_url"=>"https://static1.srcdn.com/wordpress/wp-content/uploads/2016/11/Brock-Pokemon-Series.jpg"},
    params.require(:pokemon).permit(:name, :image_url)
  end
end
