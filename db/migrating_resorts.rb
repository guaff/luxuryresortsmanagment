require 'rubygems'
require 'active_record'

class SourceTable < ActiveRecord::Base
  set_table_name 'resorts'
  self.establish_connection(
    :adapter  => "mysql",
    :host     => "localhost",
    :username => "root",
    #:password => "mypass",
    :database => "cheapweeks_development"
  )
end

class TargetTable < ActiveRecord::Base
  set_table_name 'resorts'
  self.establish_connection(
    :adapter  => "mysql",
    :host     => "external-db.s26593.gridserver.com",
    :username => "db26593",
    :password => "N9U9ddjb",
    :database => "db26593_lrm_production"
  )
end

records = SourceTable.find :all
records.each do |r|
  # transition logic goes here
   t = TargetTable.new :name => r.name, :description => r.description, :city_id => r.city_id
   t.save
end
