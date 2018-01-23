Rails.application.routes.draw do
  # Routes for the Source resource:
  # CREATE
  get "/sources/new", :controller => "sources", :action => "new"
  post "/create_source", :controller => "sources", :action => "create"

  # READ
  get "/sources", :controller => "sources", :action => "index"
  get "/sources/:id", :controller => "sources", :action => "show"

  # UPDATE
  get "/sources/:id/edit", :controller => "sources", :action => "edit"
  post "/update_source/:id", :controller => "sources", :action => "update"

  # DELETE
  get "/delete_source/:id", :controller => "sources", :action => "destroy"
  #------------------------------

  # Routes for the Industry resource:
  # CREATE
  get "/industries/new", :controller => "industries", :action => "new"
  post "/create_industry", :controller => "industries", :action => "create"

  # READ
  get "/industries", :controller => "industries", :action => "index"
  get "/industries/:id", :controller => "industries", :action => "show"

  # UPDATE
  get "/industries/:id/edit", :controller => "industries", :action => "edit"
  post "/update_industry/:id", :controller => "industries", :action => "update"

  # DELETE
  get "/delete_industry/:id", :controller => "industries", :action => "destroy"
  #------------------------------

  # Routes for the Program resource:
  # CREATE
  get "/programs/new", :controller => "programs", :action => "new"
  post "/create_program", :controller => "programs", :action => "create"

  # READ
  get "/programs", :controller => "programs", :action => "index"
  get "/programs/:id", :controller => "programs", :action => "show"

  # UPDATE
  get "/programs/:id/edit", :controller => "programs", :action => "edit"
  post "/update_program/:id", :controller => "programs", :action => "update"

  # DELETE
  get "/delete_program/:id", :controller => "programs", :action => "destroy"
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get "/companies/new", :controller => "companies", :action => "new"
  post "/create_company", :controller => "companies", :action => "create"

  # READ
  get "/companies", :controller => "companies", :action => "index"
  get "/companies/:id", :controller => "companies", :action => "show"

  # UPDATE
  get "/companies/:id/edit", :controller => "companies", :action => "edit"
  post "/update_company/:id", :controller => "companies", :action => "update"

  # DELETE
  get "/delete_company/:id", :controller => "companies", :action => "destroy"
  #------------------------------

  # Routes for the Contact resource:
  # CREATE
  get "/contacts/new", :controller => "contacts", :action => "new"
  post "/create_contact", :controller => "contacts", :action => "create"

  # READ
  get "/contacts", :controller => "contacts", :action => "index"
  get "/contacts/:id", :controller => "contacts", :action => "show"

  # UPDATE
  get "/contacts/:id/edit", :controller => "contacts", :action => "edit"
  post "/update_contact/:id", :controller => "contacts", :action => "update"

  # DELETE
  get "/delete_contact/:id", :controller => "contacts", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
