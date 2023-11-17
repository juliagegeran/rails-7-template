Rails.application.routes.draw do
  # Routes for the Entry resource:

  # CREATE
  post("/insert_entry", { :controller => "entries", :action => "create" })
          
  # READ
  get("/entries", { :controller => "entries", :action => "index" })
  
  get("/entries/:path_id", { :controller => "entries", :action => "show" })
  
  # UPDATE
  
  post("/modify_entry/:path_id", { :controller => "entries", :action => "update" })
  
  # DELETE
  get("/delete_entry/:path_id", { :controller => "entries", :action => "destroy" })

  #------------------------------

  # Routes for the Todo resource:

  # CREATE
  post("/insert_todo", { :controller => "todos", :action => "create" })
          
  # READ
  get("/todos", { :controller => "todos", :action => "index" })
  
  get("/todos/:path_id", { :controller => "todos", :action => "show" })
  
  # UPDATE
  
  post("/modify_todo/:path_id", { :controller => "todos", :action => "update" })
  
  # DELETE
  get("/delete_todo/:path_id", { :controller => "todos", :action => "destroy" })

  #------------------------------

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

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
