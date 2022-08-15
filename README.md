EXPERIMENT BENCHMARKING LARAVEL OCTANE
======================================

plan:
- create basic laravel API which randomly select a single User model
- use SQL as database
- seed with many dummy data (>100k)
- setup the app with 2 approach:
  - with nginx + PHP-FPM
  - with octane + roadrunner (easier to use, doesn't require installing aditional swoole php extension)
- benchmark with load testing tool (wrk/siege/locust)
