def call(env)
  resp = Rack::Response.new

  time = Time.new
  t.strftime(""%k:%M")

  if time.between?  00:01 & 12:00
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end

  resp.finish
end
