## xWeb

### Prerequisites
 - Docker with compose plugin

### Run locally
```docker
docker compose up -d
```

Give the containers a few seconds to start and run the entrypoint script.

#### Web App
 - `http://11.1.1.1`
 - `http://localhost:8080`

#### DB
 - host : `11.1.1.2`
 - username : `root`
 - password : `password`
 - database: `app`
 - port : `3306`

#### Redis
 - host : `11.1.1.3`
 - port : `6379`

#### Other
 - Horizon : `http://11.1.1.1/horizon`
 - Telescope : `http://11.1.1.1/telescope`
 - Pulse : `http://11.1.1.1/pulse`


### Contains (in no particular order)
- Laravel 12.x
- PHP 8.4
- Apache2
- MySQL 8.x
- Redis 7.x
- Supervisor / queues.conf
- Horizon
- Telescope
- Pulse
- Scheduler (crontab, every minute)
