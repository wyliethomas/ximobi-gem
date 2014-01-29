require "ximobi/version"
require "net/http"
require "uri"

module Ximobi
  class Entry
    def time
      case ARGV[0].downcase
      when "time"
        print "Email: "
        email = $stdin.gets.chomp
        print "Categories: "
        categories = $stdin.gets.chomp
        #categories = categories.split(",")
        print "Time: "
        time = $stdin.gets.chomp
        print "Description: "
        description = $stdin.gets.chomp
        
        #Post the data to the webservice
        uri = URI.parse("http://ximobi.wyliethomas.com/capture/gem")
        http = Net::HTTP.new(uri.host, uri.port)

        request = Net::HTTP::Post.new(uri.request_uri)
        request.set_form_data({"email" => "#{email}", 
                               "categories" => categories,
                               "time" => "#{time}",
                               "description" => "#{description}",
                              })

        response = http.request(request)

      when "expense"
        print "Expense entries not yet available for command line use \n"
      end
      
    end
  end

end
