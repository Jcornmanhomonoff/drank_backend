class DrinksController < ProtectedController
  before_action :set_drink, only: [:show, :update, :destroy]

  # GET /drinks
  # GET /drinks.json
  def index
    @drinks = current_user.drinks
    render json: @drinks
  end

  # GET /drinks/1
  # GET /drinks/1.json
  def show
    render json: @drink
  end

  # POST /drinks
  # POST /drinks.json
  # Only the user can make a drink
  def create
    @drink = current_user.drinks.build(drink_params)

    if @drink.save
      render json: @drink, status: :created, location: @drink
    else
      render json: @drink.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drinks/1
  # PATCH/PUT /drinks/1.json
  def update
    @drink = Drink.find(params[:id])

    if @drink.update(drink_params)
      render json: @drink, status: :ok
    else
      render json: @drink.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drinks/1
  # DELETE /drinks/1.json
  def destroy
    @drink.destroy

    head :no_content
  end


  private

    def set_drink
      @drink = Drink.find(params[:id])
    end

    def drink_params
      params.require(:drink).permit(:name, :user_id)
    end
end
