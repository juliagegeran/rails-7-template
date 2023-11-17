Rails.application.routes.draw do
  # Routes for the Quanty resource:

  # CREATE
  post("/insert_quanty", { :controller => "quanties", :action => "create" })
          
  # READ
  get("/quanties", { :controller => "quanties", :action => "index" })
  
  get("/quanties/:path_id", { :controller => "quanties", :action => "show" })
  
  # UPDATE
  
  post("/modify_quanty/:path_id", { :controller => "quanties", :action => "update" })
  
  # DELETE
  get("/delete_quanty/:path_id", { :controller => "quanties", :action => "destroy" })

  #------------------------------

  # Routes for the Recipe ingredient resource:

  # CREATE
  post("/insert_recipe_ingredient", { :controller => "recipe_ingredients", :action => "create" })
          
  # READ
  get("/recipe_ingredients", { :controller => "recipe_ingredients", :action => "index" })
  
  get("/recipe_ingredients/:path_id", { :controller => "recipe_ingredients", :action => "show" })
  
  # UPDATE
  
  post("/modify_recipe_ingredient/:path_id", { :controller => "recipe_ingredients", :action => "update" })
  
  # DELETE
  get("/delete_recipe_ingredient/:path_id", { :controller => "recipe_ingredients", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
