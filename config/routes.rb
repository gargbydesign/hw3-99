Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  get("/places", { :controller => "places", :action => "index" })
end
