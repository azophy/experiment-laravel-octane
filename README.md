EXPERIMENT BENCHMARKING LARAVEL OCTANE
======================================

plan:
- [x] create basic laravel API which randomly select a single User model
- [x] use SQLite as database
- [x] seed with many dummy data (1k)
- [ ] setup the app with 2 approach:
  - [ ] with nginx + PHP-FPM
  - [ ] with octane + roadrunner (easier to use, doesn't require installing aditional swoole php extension)
- [ ] benchmark with load testing tool (wrk/siege/locust)

## Current Feature
- at container start, it would re-fresh database migration & automatically seed it with dummy data
- a single endpoint '/' is provided which would return random user from database
