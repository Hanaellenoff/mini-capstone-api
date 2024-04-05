Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com", "mini-capstone-frontend"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end



# create all the models
# migrate the db 
# make assosiations
# make controllers and routes 
# make a show/index action for carted products
# make sure only the user can see their cart
# meaning they need to be logged in
# make a create action for carted oroducts so users can add to cart 
#  and a destroy to take things out