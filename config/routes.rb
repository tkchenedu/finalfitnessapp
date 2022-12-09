Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "index" })
  get("users/:id", { :controller => "application", :action => "userpage" })
  get("users", { :controller => "application", :action => "community" })




  # Routes for the Tracking resource:

  # CREATE
  post("/insert_tracking", { :controller => "trackings", :action => "create" })
          
  # READ
  get("/trackings", { :controller => "trackings", :action => "index" })
  
  get("/trackings/:path_id", { :controller => "trackings", :action => "show" })
  
  # UPDATE
  
  post("/modify_tracking/:path_id", { :controller => "trackings", :action => "update" })
  
  # DELETE
  get("/delete_tracking/:path_id", { :controller => "trackings", :action => "destroy" })
  get("/delete_trackings", { :controller => "trackings", :action => "destroyall" })


  #------------------------------

  # Routes for the Competition resource:

  # CREATE
  post("/insert_competition", { :controller => "competitions", :action => "create" })
          
  # READ
  get("/competitions", { :controller => "competitions", :action => "index" })
  
  get("/competitions/:path_id", { :controller => "competitions", :action => "show" })
  
  # UPDATE
  
  post("/modify_competition/:path_id", { :controller => "competitions", :action => "update" })
  
  # DELETE
  get("/delete_competition/:path_id", { :controller => "competitions", :action => "destroy" })

  #------------------------------

  # Routes for the Food resource:

  # CREATE
  post("/insert_food", { :controller => "foods", :action => "create" })
          
  # READ
  get("/foods", { :controller => "foods", :action => "index" })
  
  get("/foods/:path_id", { :controller => "foods", :action => "show" })
  
  # UPDATE
  
  post("/modify_food/:path_id", { :controller => "foods", :action => "update" })
  
  # DELETE
  get("/delete_food/:path_id", { :controller => "foods", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
