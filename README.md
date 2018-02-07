# Kemal Showdown

:horse_racing: benchmark Kemal with Sinatra-like web frameworks

# Results

Check the results <a href="https://plot.ly/~jasdeepsingh/1/" target="_blank">here</a>

# Running The Benchmark

The benchmark is done with `wrk` with the following command.

`wrk -c 40 -d 20 http://localhost:3001/kemal`

## Kemal

Be sure to have Crystal `v0.20.4`.

```
cd kemal/app
shards install
crystal build --release src/app.cr
./app -p 3001
```

You should see the app running in `http://localhost:3001/kemal`.

```
Running 20s test @ http://localhost:3001/kemal
  2 threads and 40 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.12ms  542.03us  11.84ms   73.85%
    Req/Sec    18.13k     2.18k   19.47k    89.05%
  725107 requests in 20.10s, 695.67MB read
Requests/sec:  36073.95
Transfer/sec:     34.61MB
```

## Sinatra

Ruby 2.3.0 is preferred.

```
cd sinatra/app
bundle
RACK_ENV=production bundle exec puma -t 1:16 -w 4 --preload -p 3001
```

You should see the app running in `http://localhost:3001/kemal`.

```
Running 20s test @ http://localhost:3001/kemal
  2 threads and 40 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     9.18ms    3.18ms  74.08ms   80.53%
    Req/Sec     2.21k   185.76     2.70k    74.75%
  87796 requests in 20.01s, 89.26MB read
Requests/sec:   4387.90
Transfer/sec:      4.46MB
```

## Rails

```
cd rails/app
bundle
PUMA_WORKERS=4 MIN_THREADS=1 MAX_THREADS=16 RACK_ENV=production bundle exec puma -p 3001
```

You should see the app running in `http://localhost:3001/kemal`.

```
Running 20s test @ http://localhost:3001/kemal
  2 threads and 40 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    17.87ms   10.07ms  85.18ms   70.91%
    Req/Sec   449.13     75.00   630.00     57.50%
  17895 requests in 20.02s, 20.81MB read
Requests/sec:    893.94
Transfer/sec:      1.04MB
```

## Phoenix

Be sure to have Elixir `1.4.0`

```
cd phoenix/app
mix deps.get
MIX_ENV=prod mix compile
PORT=3001 MIX_ENV=prod elixir -pa _build/prod/consolidated -S mix phoenix.server -p 3001
```

```
Running 20s test @ http://localhost:3001/kemal
  2 threads and 40 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.23ms  590.43us  18.90ms   78.94%
    Req/Sec    14.77k     1.13k   18.27k    70.75%
  588111 requests in 20.00s, 613.13MB read
Requests/sec:  29400.52
Transfer/sec:     30.65MB
```

## Martini

```
go build server.go
PORT=3001 GOMAXPROCS=4 MARTINI_ENV=production ./server
```

```
Running 20s test @ http://localhost:3001/kemal
  2 threads and 40 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.68ms    4.31ms 159.31ms   97.95%
    Req/Sec     8.32k   347.25     9.17k    76.50%
  331285 requests in 20.00s, 340.58MB read
Requests/sec:  16563.61
Transfer/sec:     17.03MB
```

## Gin

```
GOMAXPROCS=4 PORT=3001 GIN_MODE=release go run server.go
```

```
Running 20s test @ http://localhost:3001/kemal
  2 threads and 40 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.11ms    2.08ms 152.27ms   99.94%
    Req/Sec    18.70k     1.88k   22.71k    61.00%
  744367 requests in 20.00s, 765.25MB read
Requests/sec:  37216.68
Transfer/sec:     38.26MB
```

- All benchmarks performed on MacBook Pro (Retina, 15-inch, Late 2013), 2 GHz Intel Core i7, 8 GB 1600 MHz DDR3