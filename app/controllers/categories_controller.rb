class CategoriesController < ApplicationController

  hobo_model_controller

  auto_actions :all, :except => :new

end
