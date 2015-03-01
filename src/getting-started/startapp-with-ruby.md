---
layout: document

title:  "Ruby приложения в StartАpp"
date:   2013-11-25 16:58:04
header_title:  '> app create &lt;app&gt; with Ruby'
lead: "За Ruby поети! Създаване на Ruby приложения в <strong>StartApp</strong> cloud за 5 минути"
slug: startapp-with-ruby
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% page_header id="quickstart-ruby" title="StartApp.bg с Ruby" %}

{% note warning, Предварителни изисквания! %}
  {% include customer-requirements.html %}
{% endnote %}

{% section id="create-ruby-app-in-details" title="Създаване на Ruby приложение" %}

В StartАpp това става с една команда:

    app create myrubyapp ruby-2.0

Наличните версии на Ruby са `Ruby 1.8`, `Ruby 1.9` и `Ruby 2.0`

{% note info, Относно myrubyapp! %}
Чудите се дали `myrubyapp` е нещо вълшебно, отговорът е НЕ.
Това е името на твоето приложение :)
{% endnote %}

Резултатът от тази команда е:

{% highlight sh %}

Application Options
-------------------
Domain:     demos
Cartridges: ruby-2.0
Gear Size:  default
Scaling:    no

Creating application 'myrubyapp' ... done


Waiting for your DNS name to be available ... done

Cloning into 'myrubyapp'...

Your application 'myrubyapp' is now available.

  URL:        http://myrubyapp-demos.sapp.io/
  SSH to:     54a7336a0fe7e6928b0047dd@myrubyapp-demos.sapp.io
  Git remote: ssh://54a7336a0fe7e6928b0047dd@myrubyapp-demos.sapp.io/~/git/myrubyapp.git/
  Cloned to:  /Users/MyUser/demos/myrubyapp

Run 'app show-app myrubyapp' for more details about your app.
{% endhighlight %}
Последните няколко реда казват, че твоето приложение е създадено в StartApp и клонирано на твоя компютър.

{% note info, Всяко приложение в StartApp притежава: %}

Собствен домейн адрес (с включен SSL сертификат).

    URL:        http://myrubyapp-demos.sapp.io/

SSH достъп

    SSH to:     54a7336a0fe7e6928b0047dd@myrubyapp-demos.sapp.io

Git хранилище

    ssh://52debd81bfbf5aa4ca000482@myrubyapp-demos.sapp.io/~/git/myrubyapp.git/


{% endnote %}
{% endsection %}


{% section id="file-structure" title="Файлова структура на Ruby приложението" %}

След създаване на приложението ще видиш следната файлова структура:

<div class="table-responsive">
    <table class="table table-bordered table-striped">
      <colgroup>
        <col class="col-xs-3">
        <col class="col-xs-7">
      </colgroup>
      <thead>
        <tr>
          <th>Път</th>
          <th>За какво е?</th>
        </tr>
      </thead>
      <tbody>

        <tr>
          <td>
            .openshift/action_hooks/
          </td>
          <td>Виж секция <a href="#action-hooks">Action Hooks</a></td>
        </tr>

        <tr>
          <td>
            .openshift/cron
          </td>
          <td>Директория за Cron Jobs</td>
        </tr>
        <tr>
          <td>
            .openshift/markers/
          </td>
          <td>Виж секция <a href="#markers">Markers</a></td>
        </tr>

        <tr>
          <td>
            config.ru
          </td>
          <td>Стартов файл на твоето приложение</td>
        </tr>

        <tr>
          <td>
            public/
          </td>
          <td>Директория за файлове, които са общодостъпни</td>
        </tr>
        <tr>
          <td>
            tmp/
          </td>
          <td>Директория за временни файлове.</td>
        </tr>

        <tr>
          <td>
            .git/
          </td>
          <td>Това е локалното Git хранилище на приложението.</td>
        </tr>

      </tbody>
    </table>
  </div>

{% endsection %}

{% section id="env-vars" title="Environment променливи" %}

Всяко едно Ruby приложение идва с няколко ENV променливи.

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <colgroup>
      <col class="col-xs-3">
      <col class="col-xs-7">
    </colgroup>
    <thead>
      <tr>
        <th>Име на променливата</th>
        <th>Какво съдържа?</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
          OPENSHIFT_RUBY_LOG_DIR
        </td>
        <td>Локация за Ruby log файлове.</td>
      </tr>

      <tr>
        <td>
          OPENSHIFT_RUBY_VERSION
        </td>
        <td>Версия на Ruby.</td>
      </tr>

      <tr>
        <td>
          BUNDLE_WITHOUT
        </td>
        <td>Предотвратява използването на Bundler при инсталирането на определени файлови групи, посочени в Gemfile</td>
      </tr>

    </tbody>
  </table>
</div>
{% endsection %}

{% section id="make-code-changes" title="Как да правим промени по кода?" %}

Редактирай съдържанието между 'body' таговете във файла 'config.ru':

    <body>
         <h1> Моето ruby приложение! </h1>
    </body>

Да запишем промените в `Git`.

    git commit -am "Change content of config.ru"

Браво! Трудната част мина успешно :) Сега остава да качим промените на сървъра.

{% endsection %}


{% section id="deployment" title="Качване на сървъра" %}

Качване на промените, които си направил със следната команда:

    git push

Резултатът от `git push` трябва да е подобно на това:

    Counting objects: 5, done.
    Delta compression using up to 2 threads.
    Compressing objects: 100% (3/3), done.
    Writing objects: 100% (3/3), 417 bytes | 0 bytes/s, done.
    Total 3 (delta 2), reused 0 (delta 0)
    remote: Stopping Ruby cartridge
    remote: Waiting for stop to finish
    remote: Building git ref 'master', commit 11e5237
    remote: Building Ruby cartridge
    remote: Preparing build for deployment
    remote: Deployment id is 0a7a6b2d
    remote: Activating deployment
    remote: Starting Ruby cartridge
    remote: Result: success
    remote: Activation status: success
    remote: Deployment completed with status: success
    To ssh://54abdee50fe7e6c31c0000c4@myrubyapp-demos.sapp.io/~/git/ruby.git/
    67878be..11e5237  master -> master

Това е! Можем да отворим приложението в браузър и да се насладим на промените :)

{% note info, За любопитните! %}
След `git push` се случиха няколко интересни неща:

- Stopping Ruby cartridge
- Activating deployment
- Starting Ruby cartridge

Това е нормалното поведение на всеки един `deploy` процес в StartАpp. Разбира се, това поведение може да бъде променяно чрез **маркери**.
{% endnote %}
{% endsection %}


{% include markers.html slug=page.slug %}
{% include action-hooks.html slug=page.slug %}

{% section id="add-mysql-to-app" title="Добавяне на MySQL към Ruby приложение" %}

В StartАpp това става с една команда:

    app cartridge add mysql-5.5

{% highlight sh %}
Adding mysql-5.5 to application 'myrubyapp' ... done

mysql-5.5 (MySQL 5.5)
---------------------
  Gears:          Located with ruby-2.0
  Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/
  Database Name:  myrubyapp
  Password:       gBq1wGX1sKAi
  Username:       adminrWaKHZ3

MySQL 5.5 database added. Please make note of these credentials:

   Root User: adminrWaKHZ3
   Root Password: gBq1wGX1sKAi
   Database Name: myrubyapp

Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/

You can manage your new MySQL database by also embedding phpmyadmin.
The phpmyadmin username and password will be the same as the MySQL credentials above.
{% endhighlight %}

{% note info, За улеснение! %}
С добавянето на MySQL към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/mysql.html %}
{% endsection %}

{% section id="how-to-access-mysql-via-ssh" title="Достъпване на МySQL през SSH" %}

В StartАpp това става с една команда:

    app ssh

Стартиране на MySQL:

    mysql

Резултатът от тази команда е:

    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 1
    Server version: 5.5.37 MySQL Community Server (GPL)

    Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql>

Това означава, че си в интерактивната конзола на MySQL!

{% endsection %}

{% section id="how-to-access-mysql-via-devpc" title="Достъпване на МySQL през работна машина" %}

    app port-forward

Резултатът от тази команда е:

    Checking available ports ... done
    Forwarding ports ...
    Address already in use - bind(2) while forwarding port 8080. Trying local port 8081

    To connect to a service running on OpenShift, use the Local address

    httpd      127.0.0.1:8081   =>  127.11.98.1:8080
    mysql      127.0.0.1:3307   =>  127.11.98.2:3306
    ruby       127.0.0.1:21216  =>  127.11.98.1:21216

    Press CTRL-C to terminate port forwarding

Обърни внимание на реда:

    mysql   127.0.0.1:3306  =>  127.12.225.130:3306

Можеш да достъпваш MySQL сървъра, който работи на StartАpp от локалната си машина:

    mysql -h 127.0.0.1 -P 3306 -u<username> -p<password>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}

{% section id="add-phpmyadmin-to-app" title="Добавяне на phpMyAdmin към Ruby приложение" %}

    app cartridge add phpmyadmin

Резултатът от тази команда е:

{% highlight sh %}
Using phpmyadmin-4 (phpMyAdmin 4.0) for 'phpmyadmin'
Adding phpmyadmin-4 to application 'myrubyapp' ... done

phpmyadmin-4 (phpMyAdmin 4.0)
-----------------------------
  Gears:          Located with ruby-2.0, mysql-5.5
  Connection URL: https://myrubyapp-demos.sapp.io/phpmyadmin/

Please make note of these MySQL credentials again:
  Root User: adminUyn43WK
  Root Password: fMMMBFnuHM7Q
URL: https://myrubyapp-demos.sapp.io/phpmyadmin/
{% endhighlight %}

{% note info, Полезно! %}
Потребителското име и парола за **phpMyAdmin** са същите като тези за **MySQL** базата.
{% endnote %}
{% endsection %}


{% section id="add-postgresql-to-app" title="PostgreSQL и Ruby" %}

    app cartridge add postgresql-9.2 -a myrubyapp

Резултатът от тази команда е:

{% highlight sh %}

Adding postgresql-9.2 to application 'myrubyapp' ... done

postgresql-9.2 (PostgreSQL 9.2)
-------------------------------
  Gears:          Located with ruby-2.0
  Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
  Database Name:  myrubyapp
  Password:       Un_57QGG4kCl
  Username:       admindxdscu3

PostgreSQL 9.2 database added.  Please make note of these credentials:

   Root User: admindxdscu3
   Root Password: Un_57QGG4kCl
   Database Name: ruby

Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
{% endhighlight %}

{% note info, За улеснение! %}
С добавянето на PostgreSQL към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/postgresql.html %}
{% endsection %}

{% section header id="how-to-access-postgresql-via-ssh" title="Достъпване на PostgreSQL през SSH" %}

В StartАpp това става с една команда:

    app ssh

Стартиране на PostgreSQL

    psql

Резултатът от тази команда е:

    psql (9.2.7)
    Type "help" for help.

    myrubyapp=# help
    You are using psql, the command-line interface to PostgreSQL.
    Type:  \copyright for distribution terms
           \h for help with SQL commands
           \? for help with psql commands
           \g or terminate with semicolon to execute query
           \q to quit
    myrubyapp=#

Това означава, че си в интерактивната конзола на PostgreSQL!

{% endsection %}



{% section id="how-to-access-postgresql-via-devpc" title="Достъпване на PostgreSQL през работната машина" %}

    app port-forward

Резултатът от тази команда е:

    Checking available ports ... done
    Forwarding ports ...
    Address already in use - bind(2) while forwarding port 8080. Trying local port 8081

    To connect to a service running on OpenShift, use the Local address

    Service    Local                OpenShift
    ---------- --------------- ---- --------------------
    httpd      127.0.0.1:8080   =>  127.12.225.129:8080
    httpd      127.0.0.1:8081   =>  127.12.225.131:8080
    postgresql 127.0.0.1:5432   =>  127.12.225.133:5432

    Press CTRL-C to terminate port forwarding

Обърни внимание на реда:

    postgresql 127.0.0.1:5432   =>  127.12.225.133:5432

Можеш да достъпваш PostgreSQL сървъра, който работи на StartАpp от локалната си машина:

    psql -h 127.0.0.1 -p 5432 -U <username> -W <database>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}

{% section id="add-mongo-to-app" title="MongoDB и Ruby" %}

В StartАpp това става с една команда:

    app cartridge add mongodb-2.4

Резултатът от тази команда е:

{% highlight sh %}

Adding mongodb-2.4 to application 'myrubyapp' ... done

mongodb-2.4 (MongoDB 2.4)
-------------------------
  Gears:          Located with ruby-2.0
  Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
  Database Name:  myrubyapp
  Password:       ISKkW-hbMIui
  Username:       admin

MongoDB 2.4 database added.  Please make note of these credentials:

   Root User:     admin
   Root Password: ISKkW-hbMIui
   Database Name: ruby

Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
{% endhighlight %}

{% note info, За улеснение! %}
С добавянето на MongoDB към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/mongodb.html %}

{% endsection %}

{% section id="how-to-access-mongodb-via-ssh" title="Достъпване на MongoDB през SSH" %}

В StartАpp това става с една команда:

    app ssh

Стартиране на MongoDB

    mongo

Резултатът от тази команда е:

    MongoDB shell version: 2.4.6
    connecting to: 127.11.98.4:27017/admin
    Welcome to the MongoDB shell.
    For interactive help, type "help".
    For more comprehensive documentation, see
    http://docs.mongodb.org/
    Questions? Try the support group
    http://groups.google.com/group/mongodb-user
    >

Това означава, че си в интерактивната конзола на MongoDB!

{% endsection %}

{% section id="how-to-access-mongodb-via-devpc" title="Достъпване на MongoDB през работна машина" %}
    app port-forward

Резултатът от тази команда е:

    Checking available ports ... done
    Forwarding ports ...

    To connect to a service running on OpenShift, use the Local address

    Service Local                OpenShift
    ------- --------------- ---- -----------------
    httpd   127.0.0.1:8080   =>  127.11.98.1:8080
    mongodb 127.0.0.1:27017  =>  127.11.98.4:27017
    ruby    127.0.0.1:21216  =>  127.11.98.1:21216

    Press CTRL-C to terminate port forwarding

Обърни внимание на реда:

    mongodb 127.0.0.1:27017  =>  127.11.98.4:27017

Можеш да достъпваш MongoDB сървъра, който работи на StartАpp от локалната си машина:

    mongodb 127.0.0.1:27017/<database> --username <username> --password <password>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}

{% section id="how-to-bundler" title="Използване на Bundler" %}

Startapp.bg идва с вградена поддръжка за Bundler и можеш просто да започнеш да го използваш. Няма нужда да се занимаваш с нищо, просто го използвай!

Създай Gemfile в главната директория на приложението 'myrubyapp/Gemfile' и добави библиотеките, които използва твоето приложение примерно така (Синатра в този пример)

    source 'https://rubygems.org'

    gem 'sinatra'

и локално да създадеш Gemfile.lock файл, който предоставя актуална версия на библиотеки на твоята заявка

    bundle install

повтори стъпките, за да добавиш кода:

    git add .
    git commit -m "Dependencies"
    git push

Твоето приложение ще изглежда подобно на предишното, но ще съдържа Bundler, който работи в средата на StartApp и ще пакетира dependencies на твоето приложение. Резултатът е:

    remote: Building Ruby cartridge
    remote: Bundling RubyGems based on Gemfile/Gemfile.lock to repo/vendor/bundle with 'bundle install --deployment'
    remote: Fetching gem metadata from http://rubygems.org/..........
    remote: Installing rack (1.6.0)
    remote: Installing rack-protection (1.5.3)
    remote: Installing tilt (1.4.1)
    remote: Installing sinatra (1.4.5)
    remote: Using bundler (1.1.4)
    remote: Your bundle is complete! It was installed into ./vendor/bundle

{% endsection %}

{% include help/ruby.html %}