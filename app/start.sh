rm tmp/pids/* -rf
rm tmp/cache/* -rf

bundle exec foreman start -f Procfile.dev