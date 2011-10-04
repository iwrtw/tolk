require 'will_paginate'
require 'ya2yaml'

require 'tolk/engine'
require 'tolk/configuration'
require 'tolk/sync'
require 'tolk/import'

module Tolk
  class << self
    attr_accessor :configuration

    # Updates engine configuration.
    #
    # @example
    #   Tolk.configure do |config|
    #     config.excludes << "unwanted.prefix.%"
    #   end
    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
  end
end
