module Tolk
  class Configuration
    OPTIONS = [:excludes]

    # An array of key segments to exclude (for use in SQL "NOT LIKE").
    attr_accessor :excludes

    def initialize
      @excludes = []
    end
  end
end
