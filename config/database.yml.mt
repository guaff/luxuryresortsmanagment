development:
  adapter: mysql
  host: internal-db.s26593.gridserver.com
  database: db26593_lrm_production
  username: db26593
  password: N9U9ddjb

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  adapter: sqlite3
  database: db/test.sqlite3
  timeout: 5000

production:
  adapter: mysql
  host: internal-db.s26593.gridserver.com
  database: db26593_lrm_production
  username: db26593
  password: N9U9ddjb
