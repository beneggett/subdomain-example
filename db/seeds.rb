# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating dummy programs"
[{"id"=>2, "subdomain"=>"andy", "domain_name"=>"subdomain-example.dev", "name"=>"Andy's program", "description"=>"slakfjdsa klfasdlk fjasd lkfj daslkfj dsalkfj adklsf"}, {"id"=>1, "subdomain"=>"", "domain_name"=>"domain-example.dev", "name"=>"Ben's program", "description"=>"This sis a sdfaldks fsalkd fjadskl fjdsalkf jasdklfjdas klfjkalsd jfdasklf "}, {"id"=>3, "subdomain"=>"cody", "domain_name"=>"subdomain-example.dev", "name"=>"Cody", "description"=>"slakfjdsa klfasdlk fjasd lkfj daslkfj dsalkfj adklsf"}].each do |program|
  Program.create program
end
