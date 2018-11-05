def call(env)
  resp = Rack::Response.new

  time = Time.now

  if time.between? 24:00 & 12:00
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end

  resp.finish
end
