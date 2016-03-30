require "kemal"

logging false

get "/:title" do |env|
  title = env.params.url["title"]

  members = [
    { name: "Serdar Dogruyol" }
  ]

  render "src/views/index.ecr"
end

Kemal.run
