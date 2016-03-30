# Kemal Showdown

:horse_racing: benchmark Kemal with Sinatra-like web frameworks

# Running The Benchmark

The benchmark is done with `wrk` with the following command.

`wrk -c 40 -d 20 http://localhost:3001/\?title\=kemal`

## Kemal

Be sure to have Crystal `v0.14.2`.

```
cd kemal/app
crystal build --release src/app.cr
./app -p 3001
```

You should see the app running in `http://localhost:3001/kemal`.

## Sinatra

Ruby 2.3.0 is preferred.

```
cd sinatra/app
RACK_ENV=production rackup -p 3001
```

You should see the app running in `http://localhost:3001/kemal`.

## Rails

```
cd rails/app
RAILS_ENV=production rails s -p 3001
```

You should see the app running in `http://localhost:3001/kemal`.

## Phoenix

Be sure to have Elixir `1.1.0`

```
cd phoenix/app
mix deps.get
MIX_ENV=prod mix compile
PORT=3001 MIX_ENV=prod elixir -pa _build/prod/consolidated -S mix phoenix.server -p 3001
```
