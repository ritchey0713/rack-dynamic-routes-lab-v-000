class Application 
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
      if req.path.match(/items/)
      item_search = req.path.split("/items/").last
      item = @@items.find{|item| item.name == }
    
  end 
  
  
end 