require 'rails'

module Bond
  def self.setup
    yield config
  end

  def self.config
    @config ||= Rack::Transaction::Configuration.new do
      if defined?(ActiveRecord)
        provided_by ActiveRecord::Base
        rollback_with ActiveRecord::Rollback
      end
    end
  end
end

require 'rack/transaction'
require 'bond/railtie'
