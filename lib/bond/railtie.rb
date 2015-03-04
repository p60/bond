module Bond
  class Railtie < ::Rails::Railtie
    config.app_middleware.use Rack::Transaction, Bond.config
  end
end
