require "kemal"

logging false

get "/" do |env|
  title = env.params.query["title"]

  members = [
    { name: "Serdar Dogruyol" }
  ]

  render "src/views/index.ecr"
end

Kemal.run
