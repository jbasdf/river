namespace :river do
  desc "Sync files from river."
  task :sync do
    path = File.join(File.dirname(__FILE__), *%w[.. ..])
    system "rsync -ruv #{path}/public ."
  end
end
