class DrinkIngredientsController < ProtectedController
  before_action :set_drink_ingredient, only: [:show, :update, :destroy]

  # GET /drink_drink_ingredients
  # GET /drink_drink_ingredients.json
  def index
    @drink_ingredients = DrinkIngredient.all

    render json: @drink_ingredients
  end

  # GET /drink_ingredients/1
  # GET /drink_ingredients/1.json
  def show
    render json: @drink_ingredient
  end

  # POST /drink_ingredients
  # POST /drink_ingredients.json
  # Only the user can make a Ingredient
  def create
    @drink_ingredient = DrinkIngredient.new(drink_ingredient_params)

    if @drink_ingredient.save
      render json: @drink_ingredient, status: :created, location: @drink_ingredient
    else
      render json: @drink_ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drink_ingredients/1
  # PATCH/PUT /drink_ingredients/1.json
  def update
    @drink_ingredient = DrinkIngredient.find(params[:id])

    if @drink_ingredient.update(drink_ingredient_params)
      head :no_content
    else
      render json: @drink_ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drink_ingredients/1
  # DELETE /drink_ingredients/1.json
  def destroy
    @drink_ingredient.destroy

    head :no_content
  end


  private

    def set_drink_ingredient
      @drink_ingredient = DrinkIngredient.find(params[:id])
    end

    def drink_ingredient_params
      params.require(:drink_ingredient).permit(:drink_id, :ingredient_id)
    end
end
