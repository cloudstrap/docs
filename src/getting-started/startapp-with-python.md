---
layout: document

title:  "Python приложения в StartApp.bg Python хостинг."
date:   2014-02-10 12:58:04
header_title:  '> app create &lt;app&gt; with Python'
lead: "За Python манияци! Създаване на Python приложения в <strong>StartApp</strong> cloud за 5 минути"
slug: startapp-with-python
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% page_header id="quickstart" title="StartApp.bg с Python" %}

{% note warning, Предварителни изисквания! %}
  {% include customer-requirements.html %}
{% endnote %}

{% section id="create-python-app-in-details" title="Създаване на Python приложение" %}

В StartАpp това става с една команда:

    app create mypythonapp python-3.3

Наличните версии на Python са `python-2.6`, `python-2.7` и `python-3.3`

{% note info, Относно mypythonapp! %}
Чудите се дали `mypythonapp` е нещо вълшебно, отговорът е НЕ.
Това е името на твоето приложение :)
{% endnote %}

Резултатът от тази команда е:

{% highlight sh %}
Application Options
-------------------
Domain:     demos
Cartridges: python-3.3
Gear Size:  default
Scaling:    no

Creating application 'mypythonapp' ... done

Waiting for your DNS name to be available ... done

Cloning into 'mypythonapp'...
The authenticity of host 'mypythonapp-demos.sapp.io (46.4.1.82)' can`t be established.
RSA key fingerprint is fd:91:73:33:23:3f:cf:ad:ab:0a:c6:d4:4c:ff:d6:7d.
Are you sure you want to continue connecting (yes/no)?

Потвърждаваме клонирането на новото приложение на локалната машина с 'yes'

Your application 'mypythonapp' is now available.

  URL:        http://mypythonapp-demos.sapp.io/
  SSH to:     54e74226ba7eead0b000001a@mypythonapp-demos.sapp.io
  Git remote: ssh://54e74226ba7eead0b000001a@mypythonapp-demos.sapp.io/~/git/mypythonapp.git/

Run 'app show-app mypythonapp' for more details about your app.
{% endhighlight %}

Последните няколко реда казват, че твоето приложение е създадено в StartApp и клонирано на твоя компютър.

{% note info, Всяко приложение в StartApp притежава: %}

Собствен домейн адрес (с включен SSL сертификат).

    URL:        http://mypythonapp-demos.sapp.io/

SSH достъп

    SSH to:     54e74226ba7eead0b000001a@mypythonapp-demos.sapp.io

Git хранилище

    Git remote: ssh://54e74226ba7eead0b000001a@mypythonapp-demos.sapp.io/~/git/mypythonapp.git/

{% endnote %}
{% endsection %}


{% section id="file-structure" title="Файлова структура на Python приложение" %}

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
          wsgi.py
        </td>
        <td>Стартиращ файл по подразбиране на WSGI</td>
      </tr>

      <tr>
        <td>
          setup.py
        </td>
        <td>Стандартен инсталационен скрипт</td>
      </tr>

      <tr>
        <td>
          requirements.txt
        </td>
        <td>Файл, в който указваш необходимите пакети за твоето приложение.</td>
      </tr>

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
          .git/
        </td>
         <td>Това е локалното Git хранилище на приложението.</td>
      </tr>

      </tbody>
    </table>
  </div>

{% endsection %}

{% section id="env-vars" title="Environment променливи" %}

Всяко Python приложение идва с няколко ENV променливи.

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
          OPENSHIFT_PYTHON_WSGI_APPLICATION
        </td>
        <td>Можеш да зададеш различен WSGI стартов файл, като използваш следната команда 'app env set OPENSHIFT_PYTHON_WSGI_APPLICATION=app/altenative-wsgi.py'
        </td>
      </tr>

      <tr>
        <td>
          OPENSHIFT_PYTHON_REQUIREMENTS_PATH
        </td>
        <td>Чрез тази променлива задаваш специфично място, от което да чете 'pip requirements' примерно 'app env set OPENSHIFT_PYTHON_REQUIREMENTS_PATH=requirements/production.txt'.
        </td>
      </tr>

    </tbody>
  </table>
</div>
{% endsection %}

{% section id="make-code-changes" title="Как да правим промени по кода?" %}

Редактирай съдържанието между 'body' таговете във файла 'wsgi.py':

    <body>
      <h1> Моето mypython приложение! </h1>
    </body>

Да запишем промените в `Git`.

    git commit -am "initial"

Браво! Трудната част мина успешно :) Сега остава да качим промените на сървъра.

{% endsection %}


{% section id="deployment" title="Качване на сървъра" %}

В StartАpp това става с една команда:

    git push

Резултатът от тази команда е:

    Counting objects: 3, done.
    Delta compression using up to 2 threads.
    Compressing objects: 100% (3/3), done.
    Writing objects: 100% (3/3), 333 bytes | 0 bytes/s, done.
    Total 3 (delta 2), reused 0 (delta 0)
    remote: Stopping Python 3.3 cartridge
    remote: Waiting for stop to finish
    remote: Building git ref 'master', commit 48ecdd1
    remote: Activating virtenv
    remote: Checking for pip dependency listed in requirements.txt file..
    remote: The directory '/var/lib/openshift/54e74226ba7eead0b000001a/.cache/pip/log' or its parent directory is not owned by the current user and the debug log has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want the -H flag.
    remote: The directory '/var/lib/openshift/54e74226ba7eead0b000001a/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want the -H flag.
    remote: The directory '/var/lib/openshift/54e74226ba7eead0b000001a/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want the -H flag.
    remote: You must give at least one requirement to install (see "pip help install")
    remote: Running setup.py script..
    remote: running develop
    remote: running egg_info
    remote: creating myphytonapp.egg-info
    remote: writing dependency_links to myphytonapp.egg-info/dependency_links.txt
    remote: writing myphytonapp.egg-info/PKG-INFO
    remote: writing top-level names to myphytonapp.egg-info/top_level.txt
    remote: writing manifest file 'myphytonapp.egg-info/SOURCES.txt'
    remote: reading manifest file 'myphytonapp.egg-info/SOURCES.txt'
    remote: writing manifest file 'myphytonapp.egg-info/SOURCES.txt'
    remote: running build_ext
    remote: Creating /var/lib/openshift/54e74226ba7eead0b000001a/app-root/runtime/dependencies/python/virtenv/venv/lib/python3.3/site-packages/myphytonapp.egg-link (link to .)
    remote: myphytonapp 1.0 is already the active version in easy-install.pth
    remote:
    remote: Installed /var/lib/openshift/54e74226ba7eead0b000001a/app-root/runtime/repo
    remote: Processing dependencies for myphytonapp==1.0
    remote: Finished processing dependencies for myphytonapp==1.0
    remote: Preparing build for deployment
    remote: Deployment id is 4e49ddce
    remote: Activating deployment
    remote: Starting Python 3.3 cartridge (Apache+mod_wsgi)
    remote: Application directory "/" selected as DocumentRoot
    remote: $OPENSHIFT_PYTHON_WSGI_APPLICATION ENV VAR detected
    remote: Application "wsgi.py" selected as default WSGI entry point
    remote: -------------------------
    remote: Git Post-Receive Result: success
    remote: Activation status: success
    remote: Deployment completed with status: success
    To ssh://54e74226ba7eead0b000001a@mypythonapp-demos.sapp.io/~/git/mypythonapp.git/
       6cda42d..48ecdd1  master -> master

Това е! Можем да отворим приложението в браузър и да се насладим на промените :)

{% note info, За любопитните! %}
След `git push` се случиха няколко интересни неща:

- Stopping Stopping Python 3.3 cartridge
- Activating deployment
- Starting Starting Python 3.3 cartridge (Apache+mod_wsgi)

Това е нормалното поведение на всеки един `deploy` процес в StartАpp. Разбира се, това поведение може да бъде променяно чрез **маркери**.
{% endnote %}

{% endsection %}

{% include markers.html slug=page.slug %}
{% include action-hooks.html slug=page.slug %}


{% section id="add-mysql-to-app" title="Добавяне на MySQL към Python приложение" %}

В StartАpp това става с една команда:

    app cartridge add mysql-5.5

Резултатът от тази команда е:

{% highlight sh %}
Adding mysql-5.5 to application 'mypythonapp' ... done

mysql-5.5 (MySQL 5.5)
---------------------
  Gears:          Located with python-3.3
  Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/
  Database Name:  mypythonapp
  Password:       Um2xebB4xCUy
  Username:       adminZgAlDtv

MySQL 5.5 database added.  Please make note of these credentials:

       Root User: adminZgAlDtv
   Root Password: Um2xebB4xCUy
   Database Name: mypythonapp

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
    Your MySQL connection id is 3
    Server version: 5.5.36 Source distribution

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

    To connect to a service running on OpenShift, use the Local address

    Service Local               OpenShift
    ------- -------------- ---- -------------------
    httpd   127.0.0.1:8080  =>  127.9.188.1:8080
    mysql   127.0.0.1:3306  =>  127.9.188.2:3306

    Press CTRL-C to terminate port forwarding

Обърни внимание на реда:

    mysql   127.0.0.1:3306  =>  127.9.188.2:3306

Можеш да достъпваш MySQL сървъра, който работи на StartАpp от локалната си машина:

    mysql -h 127.0.0.1 -P 3306 -u<username> -p<password>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}

{% section id="add-phpmyadmin-to-app" title="Добавяне на phpMyAdmin към Python приложение" %}

    app cartridge add phpmyadmin

Резултатът от тази команда е:

{% highlight sh %}
Using phpmyadmin-4 (phpMyAdmin 4.0) for 'phpmyadmin'
Adding phpmyadmin-4 to application 'mypythonapp' ... done

phpmyadmin-4 (phpMyAdmin 4.0)
-----------------------------
  Gears:          Located with python-3.3, mysql-5.5
  Connection URL: https://mypythonapp-demos.sapp.io/phpmyadmin/

Please make note of these MySQL credentials again:
  Root User: adminZgAlDtv
  Root Password: Um2xebB4xCUy
URL: https://mypythonapp-demos.sapp.io/phpmyadmin/
{% endhighlight %}
{% note info, Полезно! %}
Потребителското име и парола за **phpMyAdmin** са същите като тези за **MySQL** базата.
{% endnote %}
{% endsection %}


{% section id="add-postgresql-to-app" title="PostgreSQL и Python" %}

    app cartridge add postgresql-9.2

Резултатът от тази команда е:

{% highlight sh %}

Adding postgresql-9.2 to application 'mypythonapp' ... done

postgresql-9.2 (PostgreSQL 9.2)
-------------------------------
  Gears:          Located with python-3.3
  Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
  Database Name:  mypythonapp
  Password:       h8uZRGKR2BJG
  Username:       adminafn7htg

PostgreSQL 9.2 database added.  Please make note of these credentials:

   Root User: adminafn7htg
   Root Password: h8uZRGKR2BJG
   Database Name: mypythonapp

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

    mypythonapp=# help
    You are using psql, the command-line interface to PostgreSQL.
    Type:  \copyright for distribution terms
           \h for help with SQL commands
           \? for help with psql commands
           \g or terminate with semicolon to execute query
           \q to quit

Това означава, че си в интерактивната конзола на PostgreSQL!

{% endsection %}

{% section id="how-to-access-postgresql-via-devpc" title="Достъпване на PostgreSQL през работна машина" %}

    app port-forward

Резултатът от тази команда е:

    hecking available ports ... done
    Forwarding ports ...
    Address already in use - bind(2) while forwarding port 8080. Trying local port 8081

    To connect to a service running on OpenShift, use the Local address

    Service    Local                OpenShift
    ---------- --------------- ---- --------------------
    httpd      127.0.0.1:8080  =>  127.9.188.1:8080
    httpd      127.0.0.1:8081  =>  127.9.188.3:8080
    postgresql 127.0.0.1:5432  =>  127.9.188.4:5432

    Press CTRL-C to terminate port forwarding

Обърни внимание на реда:

    postgresql 127.0.0.1:5432  =>  127.9.188.4:5432

Можеш да достъпваш PostgreSQL сървъра, който работи на StartАpp от локалната си машина:

    psql -h 127.0.0.1 -p 5432 -U <username> -W <database>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}

{% endsection %}

{% section id="add-mongo-to-app" title="MongoDB и Python" %}

В StartАpp това става с една команда:

    app cartridge add mongodb-2.4

Резултатът от тази команда е:

{% highlight sh %}

Adding mongodb-2.4 to application 'mypythonapp' ... done

mongodb-2.4 (MongoDB 2.4)
-------------------------
  Gears:          Located with python-3.3
  Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
  Database Name:  mypythonapp
  Password:       lVvdKJzcVSpJ
  Username:       admin

MongoDB 2.4 database added.  Please make note of these credentials:

   Root User:     admin
   Root Password: lVvdKJzcVSpJ
   Database Name: mypythonapp

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
    connecting to: 127.9.188.5:27017/admin
    Welcome to the MongoDB shell.
    For interactive help, type "help".
    For more comprehensive documentation, see
      http://docs.mongodb.org/
    Questions? Try the support group
      http://groups.google.com/group/mongodb-user
    >

Което означава, че си в интерактивната конзола на MongoDB!

{% endsection %}

{% section id="how-to-access-mongodb-via-devpc" title="Достъпване на MongoDB през работната ви машина/лаптоп" %}

    app port-forward

Резултатът от тази команда е:

    Checking available ports ... done
    Forwarding ports ...
    Address already in use - bind(2) while forwarding port 8080. Trying
    local port 8081

    To connect to a service running on OpenShift, use the Local address

    Service Local                OpenShift
    ------- --------------- ---- --------------------
    httpd      127.0.0.1:8080   =>  127.9.188.1:8080
    httpd      127.0.0.1:8081   =>  127.9.188.3:8080
    mongodb    127.0.0.1:27017  =>  127.9.188.5:27017

    Press CTRL-C to terminate port forwarding

Обърни внимание на реда:

    mongodb    127.0.0.1:27017  =>  127.9.188.5:27017

Можеш да достъпваш MongoDB сървъра, който работи на StartАpp от локалната си машина:

    mongo 127.0.0.1:27017/<database> --username <username> --password <password>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}


{% include help/python.html %}
