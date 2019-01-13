class Application
   def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  
    
   if req.path.match(/items/)
 
      item_title = req.path.split("/items/").last 
      item = @@items.find{|i| i.name == item_title}
 
      resp.write item.price
    end
 
  
    resp.finish
  end
  
end