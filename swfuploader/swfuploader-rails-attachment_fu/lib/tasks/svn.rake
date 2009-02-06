namespace :svn do
  desc "Configure subversion for Rails"
  task :configure do
    system "svn rm --force log/*"
    system "svn ci -m 'Removing all log files'"
    system 'svn ps svn:ignore "*" log/'
    system "svn up log/"
    system "svn ci -m 'Ignoring all files in log/ folder'"
    system "svn mv config/database.yml config/database.yml.example"
    system "svn ci -m 'Moving database.yml to database.example.yml to provide a template for anyone who checks out the code'"
    system 'svn ps svn:ignore "database.yml" config/'
    system "svn up config/"
    system "svn ci -m 'Ignoring database.yml'"
    system "svn rm tmp/*"
    system "svn ci -m 'Removing /tmp/ folder'"
    system 'svn ps svn:ignore "*" tmp/'
    system 'svn up tmp/'
    system "svn ci -m 'Ignoring all files in tmp/ folder.'"
  end

  desc "Add unmarked files into the repository"
  task :add do
    system 'svn st | awk \'/^\?/ { print $2 }\' | xargs svn add'
  end
end
