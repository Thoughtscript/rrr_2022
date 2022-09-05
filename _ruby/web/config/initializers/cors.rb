Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://127.0.0.1:3000'
      resource '*', headers: :any, methods: [:get, :post]
    end

    allow do
        origins 'http://localhost:3000'
        resource '*', headers: :any, methods: [:get, :post]
    end

    allow do
        origins 'http://127.0.0.1:1234'
        resource '*', headers: :any, methods: [:get, :post]
    end

    allow do
        origins 'http://localhost:1234'
        resource '*', headers: :any, methods: [:get, :post]
    end
  end