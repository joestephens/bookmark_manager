require 'data_mapper'
<<<<<<< HEAD
require_relative 'app.rb'
=======
require './app/app.rb'
>>>>>>> 9b27c0d2a30c9e72b5ed89aa7465a2939c7a0708

namespace :db do
  desc "Non destructive upgrade"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto-upgrade complete (no data loss)"
  end

<<<<<<< HEAD

=======
>>>>>>> 9b27c0d2a30c9e72b5ed89aa7465a2939c7a0708
  desc "Destructive upgrade"
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts "Auto-migrate complete (data was lost)"
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 9b27c0d2a30c9e72b5ed89aa7465a2939c7a0708
