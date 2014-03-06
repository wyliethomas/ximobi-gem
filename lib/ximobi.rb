require "ximobi/version"
require "net/http"
require "uri"

module Ximobi
  class Entry
    #YEAH YEAH, ITS A LOT OF DUPE BUT IM THE ONLY USER AND IM IN A HURRY SO DEAL WITH IT
    def time
      case ARGV[0].downcase
      when "time"
        #TIME
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
                               "type" => "time"
                              })

        response = http.request(request)
        puts Time.now

      when "expense"
        #EXPENSE
        print "Email: "
        email = $stdin.gets.chomp
        print "Categories: "
        categories = $stdin.gets.chomp
        #categories = categories.split(",")
        print "Amount: "
        amount = $stdin.gets.chomp
        print "Description: "
        description = $stdin.gets.chomp
        
        #Post the data to the webservice
        uri = URI.parse("http://ximobi.wyliethomas.com/capture/gem")
        http = Net::HTTP.new(uri.host, uri.port)

        request = Net::HTTP::Post.new(uri.request_uri)
        request.set_form_data({"email" => "#{email}", 
                               "categories" => categories,
                               "amount" => "#{amount}",
                               "description" => "#{description}",
                               "type" => "expense"
                              })

        response = http.request(request)
        puts Time.now
      end
      
    end
  end

end
