class Application
   def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  if req.path=="/items"
      resp.write "You requested the itemss"
    else
      resp.write "Route not found"
      resp.status = 404
    end
   if req.path.match(/items/)
 
      item_title = req.path.split("/items/").last 
      item = @@items.find{|s| s.name == item_title}
 
      resp.write item.price
    end
 
  
    resp.finish
  end
  
end