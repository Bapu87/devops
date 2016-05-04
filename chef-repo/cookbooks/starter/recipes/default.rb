# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node["starter_name"]}!" do
  level :info
end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html

package 'apache2'

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
                <head>
        <title>Hello World</title>
                </head>
                <body>
                <h1>Hello World!</h1>
                </body>
</html>'
end

