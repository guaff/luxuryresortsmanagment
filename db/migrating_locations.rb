require 'rubygems'
require 'active_record'

class SourceTable < ActiveRecord::Base
  set_table_name 'locations'
  self.establish_connection(
    :adapter  => "mysql",
    :host     => "localhost",
    :username => "root",
    #:password => "mypass",
    :database => "cheapweeks"
  )
end

class TargetTable < ActiveRecord::Base
  set_table_name 'locations'
  self.establish_connection(
    :adapter  => "mysql",
    :host     => "localhost",
    :username => "root",
    #:password => "mypass",
    :database => "cheapweeks_development"
  )
end

records = SourceTable.find :all
records.each do |r|
  # transition logic goes here
   t = TargetTable.new :name => r.name, :description => r.description
   t.save
end
