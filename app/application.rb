class Application 
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
      if req.path.match(/items/)
      item_search = req.path.split("/items/").last
      item = @@items.find{|item| item.name == item_search}
      
      if item 
        resp.write "#{item}"
      else 
        resp.write "item not found"
        resp.status = 400 
      end 
      
    else 
      resp.write "path not found"
      resp.status = 404 
    end 
    resp.finish 
  end 
  
  
end 