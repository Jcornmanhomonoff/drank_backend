class IngredientsController < ProtectedController
  before_action :set_ingredient, only: [:show, :update, :destroy]

  # GET /ingredients
  # GET /ingredients.json
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
    render json: @ingredient
  end

  # POST /ingredients
  # POST /ingredients.json
  # Only the user can make a Ingredient
  def create
    @ingredient = Ingredient.create(drink_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update(drink_params)
      head :no_content
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @ingredient.destroy

    head :no_content
  end


  private

    def set_drink
      @ingredient = Ingredient.find(params[:id])
    end

    def drink_params
      params.require(:ingredient).permit(:alcohol, :mixer, :suggestion)
    end
end
