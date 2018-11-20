# Laravel Starter Kit

## Intro

This is a small template I've built based on Laravel framework, after I spent some time preparing for a small project.
So to make my life easier later, I decided to create this template.

# Installing and running the code

## Requirements

Please make sure that you have installed [Docker](https://docker.com) with *Docker Compose*.


## Setup the local IP

In order to get the container up and running, you can follow these simple steps.

Add an entry `127.0.0.1 web.docker.local` to your `/etc/hosts` file:
```bash
sudo echo "127.0.0.1 web.docker.local" >> /etc/hosts
```

## Running the image

All you have to do is to execute the command:

```
./bin/docker_run
```

## Docker customization:

This image comes with a ready to use `Dockerfile` and `docker-compose.yml` which you can either modify as you like.

The preferred way to override `docker-compose.yml` values is to add a new file called `docker-compose.override.yml` 
and change the value that you want over there, please refer to this [post](https://docs.docker.com/compose/extends/#example-use-case) 
from Docker documentation about extending and having multiple compose files.

## Note:

Please note that this template is using [Swoole Laravel](https://github.com/swooletw/laravel-swoole) package to 
help running your code faster, feel free to read more about [Swoole](https://www.swoole.co.uk/#get-started).

## Installed packages:

These are the packages that I've installed, other than the one comes with laravel.

1. [Swoole Laravel](https://github.com/swooletw/laravel-swoole).
1. [Laravel CORS](https://github.com/barryvdh/laravel-cors).
1. [PRedis](https://github.com/nrk/predis).
1. [Laravel Debugbar](https://github.com/barryvdh/laravel-debugbar).
1. [Laravel IDE Helper](https://github.com/barryvdh/laravel-ide-helper).
1. [PHP CS Fixer](https://github.com/friendsofphp/php-cs-fixer).
1. [PHP Code Sniffer](https://github.com/squizlabs/php_codesniffer).

---

<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, yet powerful, providing tools needed for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of any modern web application framework, making it a breeze to get started learning the framework.

If you're not in the mood to read, [Laracasts](https://laracasts.com) contains over 1100 video tutorials on a range of topics including Laravel, modern PHP, unit testing, JavaScript, and more. Boost the skill level of yourself and your entire team by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for helping fund on-going Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell):

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[British Software Development](https://www.britishsoftware.co)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- [UserInsights](https://userinsights.com)
- [Fragrantica](https://www.fragrantica.com)
- [SOFTonSOFA](https://softonsofa.com/)
- [User10](https://user10.com)
- [Soumettre.fr](https://soumettre.fr/)
- [CodeBrisk](https://codebrisk.com)
- [1Forge](https://1forge.com)
- [TECPRESSO](https://tecpresso.co.jp/)
- [Runtime Converter](http://runtimeconverter.com/)
- [WebL'Agence](https://weblagence.com/)
- [Invoice Ninja](https://www.invoiceninja.com)
- [iMi digital](https://www.imi-digital.de/)
- [Earthlink](https://www.earthlink.ro/)
- [Steadfast Collective](https://steadfastcollective.com/)
- [We Are The Robots Inc.](https://watr.mx/)
- [Understand.io](https://www.understand.io/)

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
