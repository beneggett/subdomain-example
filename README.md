# Subdomain & domain routing instructions

## Setup project
```
bundle install
```
Check config/database.yml & run
```
rake db:setup
```
This will run `rake db:create`, `rake db:migrate`, `rake db:seed`

Link to pow
```
powder link
```

Link up extra domain to pow and this repo
```
cd ~/.pow && ln -s ~/Sites/subdomain_example  domain-example
```

Subdomain Approach:

http://cody.subdomain-example.dev/
http://andy.subdomain-example.dev/

Domain Approach

http://domain-example.dev/
