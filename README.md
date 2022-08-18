EXPERIMENT BENCHMARKING LARAVEL OCTANE
======================================

Many people said that Laravel does scale, however you would often hit database connection limit before you hit Laravel Requests Limit. Using Laravel Octane, you should be able to use 1 connection for a single server/container, thus saving times required to initiate/terminat connections. Does it really work? Lets find out!

## Plan
- [x] create basic laravel API which randomly select a single User model
- [x] use SQLite as database
- [x] seed with many dummy data (1k)
- [/] setup the app with 2 approach:
  - [ ] with nginx + PHP-FPM
  - [x] with octane + roadrunner (easier to use, doesn't require installing aditional swoole php extension)
- [/] benchmark with load testing tool (wrk/siege/locust)

## Current Feature
- at container start, it would re-fresh database migration & automatically seed it with dummy data
- a single endpoint '/' is provided which would return random user from database
- set Postgresql's `max_connection` to some small value to measure effect of the limitation (currently set to 20)

## Results
### Tuesday, 16 August
- Screenshot Benchmark with Artisan Serve
    ![Screenshot Benchmark with Artisan Serve](/results/screenshot-artisan-serve.png?raw=true "Screenshot Benchmark with Artisan Serve")
- Screenshot Benchmark with Laravel Octane (with Roadrunner engine)
    ![Screenshot Benchmark with Laravel Octane](/results/screenshot-laravel-octane.png?raw=true "Screenshot Benchmark with Laravel Octane (with Roadrunner engine)")

## Thursday, 18 August
- added new loadtest using locust.io . setup script is in `/loadtest` directory
- succedd reaching about 200 RPS but with more then half encountered error `failed: FATAL: sorry, too many clients already`
- conclusion: with 5 octane-roadrunner replica, the number of connection is still high
