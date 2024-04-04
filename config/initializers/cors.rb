Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com", "mini-capstone-frontend"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end