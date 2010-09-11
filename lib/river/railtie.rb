require 'river'
require 'rails'

module River
  class RailTie < ::Rails::Railtie
    # Added so that rake tasks get included in your rails app.
  end
end
