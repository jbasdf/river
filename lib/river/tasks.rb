require 'rake'
require 'rake/tasklib'

module River
  class Tasks < ::Rake::TaskLib
    def initialize
      define
    end
    private
    def define
      namespace :river do
        desc "Sync files from river."
        task :sync do
          path = File.join(File.dirname(__FILE__), *%w[.. ..])
          system "rsync -ruv #{path}/public ."
        end
      end
    end
  end
end
River::Tasks.new