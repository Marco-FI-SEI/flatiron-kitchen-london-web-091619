class IngredientsController < ApplicationController
    before_action :set_ingredient, only: [:show, :edit, :update]

    def index
        @ingredients = Ingredient.all
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.new(ingredient_params)
        @ingredient.save
        redirect_to ingredient_path(@ingredient)
    end

    def show
    end

    def edit
    end

    def update
        @ingredient.update(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end


    private

    def set_ingredient
        @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
end
