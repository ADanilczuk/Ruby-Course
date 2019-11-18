gem 'rdoc'
require 'rdoc/rdoc'

# http_server.rb
require 'socket'
server = TCPServer.new 56


while session = server.accept
  request = session.gets
  puts request

  session.print "HTTP/1.1 200\r\n" # 1
  session.print "okjContent-Type: text/html\r\n" # 2
  session.print "\r\n" # 3
  session.print "teraz 5678" #4

  session.close
end

rdoc helper.rb
