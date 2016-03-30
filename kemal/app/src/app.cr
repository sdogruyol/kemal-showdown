require "kemal"

logging false

get "/:title" do |env|
  title = env.params.url["title"]

  members = [
    { name: "Serdar Dogruyol" },
    { name: "Fatih Kadir Akin" },
    { name: "Askin Gedik" },
    { name: "Ary Borenszweig" }
  ]

  render "src/views/index.ecr"
end

Kemal.run
