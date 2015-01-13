---
layout: document

title:  "Ruby приложения в Startapp"
date:   2013-11-25 16:58:04
header_title:  '> app create &lt;app&gt; with ruby'
lead: "За Ruby поети! Стихове и рими с Ruby приложенията в <strong>Startapp.bg</strong> Сloud"
slug: startapp-with-ruby
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% page_header id="quickstart-ruby" title="Стартиране с Ruby" %}

{% include customer-requirements.html %}

{% section id="create-ruby-app-in-details" title="Създаване на ново Ruby приложение" %}

Създаването на `Ruby` приложения в Startapp е изключително лесно и в повечето случаи е само с 1 ред код:

    $ app create myrubyapp Ruby 1.9

Наличните версии на Ruby са `Ruby 1.8`, `Ruby 1.9`

{% note info, Относно myrubyapp! %}
Ако се чудиш дали това `myrubyapp` е нещо вълшебно, отговорът е НЕ. Това е името на Вашето ново приложение :) Което значи, че синтаксисът е следният:

    $ app create <име-на-приложението> <версия на Ruby>

Това означава също, че навсякъде в примера, където използваме `myrubyapp` имайте впредвид, че там стои името на Вашето приложение.

{%endnote%}

След като напишете тази команда на екрана Ви ще се изпише нещо такова:

{% highlight sh %}

Application Options
-------------------
Domain:     demos
Cartridges: ruby-1.9
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
Последните няколко реда казват, че Вашето приложение е създадено и клониранo на Вашият компютър.

---

### Отваряне в браузъра

За да видите Вашият сайт, отвори с браузър URL-то, което е изписано след `URL:` в горния пример. В нашия случай то е:

    http://myrubyapp-demos.sapp.io/

---

### SSH достъп

Всички приложения в Startapp.bg идват с SSH достъп. За да се логнете на сървъра през SSH, използвай адреса, изписан след `SSH to:`. В този пример той е:

    ssh 52debd81bfbf5aa4ca000482@myrubyapp-demo.sapp.io

{% note warning, Внимание! %}
Този пример е валиден за Mac OS и Linux. За Windows е нужно инсталиране на [Putty](/getting-started/using-putty-examples.html). За информация как да инсталираш и използвате [Putty](/getting-started/using-putty-examples.html), разгледай [примера тук](/getting-started/using-putty-examples.html)
{% endnote %}

---

### Git хранилище

Всяко приложение в Startapp.bg се съхранява в отделно Git хранилище. Адресът на хранилището на Вашето приложение се вижда веднага след "Git remote:". Което в този конкретен случай е :

    ssh://52debd81bfbf5aa4ca000482@myrubyapp-demos.sapp.io/~/git/myrubyapp.git/

Което означава, че ако искате да клонирате Вашето приложение / сайт някъде другаде, а не там където го е направило автоматично startapp tools, трябва да изпълните следните команди:

    cd /path/to/my/working/dir
    git clone ssh://52debd81bfbf5aa4ca000482@myrubyapp-demos.sapp.io/~/git/myrubyapp.git

Това е!

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли как да създадеш първото си PHP приложение?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div>
 -->
{% endsection %}


{% section id="file-structure" title="Файлова структура на Ruby приложението" %}

След създаване и клониране на Вашето Ruby приложение ще видите следните файлове и директории:

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
            <code>.git/</code>
          </td>
          <td>Това е локалното ти Git хранилище. <br /><b>Важно: </b>Не го изтривай, ако искаш приложението ти да работи.</td>
        </tr>
        
        <tr>
          <td>
            <code>.openshift/</code>
          </td>
          <td>Директория за специфични скриптове. Може и никога да не ти се наложи да пипаш в нея, но тя е задължителна.</td>
        </tr>

        <tr>
          <td>
            <code>.openshift/action_hooks</code>
          </td>
          <td>Прегледайте документацията за Action Hooks *2</td>
        </tr>

        <tr>
          <td>
            <code>.openshift/markers</code>
          </td>
          <td>Виж наличните Маркери по-долу.</td>
        </tr>

        <tr>
          <td>
            <code>README.md</code>
          </td>
          <td>Файл с линк към пълната документация на Ruby в github</td>
        </tr>

        <tr>
          <td>
            <code>pubic/</code>
          </td>
          <td>Място за снимки, css и други файлове, достъпни от крайни потребители</td>
        </tr>

        <tr>
          <td>
            <code>config.ru</code>
          </td>
          <td>Стартов файл за сървъра</td>
        </tr>

       <tr>
          <td>
            <code>tmp/</code>
          </td>
          <td>Място за временни файлове</td>
        </tr>

      </tbody>
    </table>
  </div>

{% note warning, Важно! %}
Startapp търси в директориите `public/` и `config.ru`, когато сервира Вашето приложение на клиентите. За по-добра организация, създайте и други директории, ако се налага :).
{% endnote %}

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли кой файл за какво се ползва?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% endsection %}

{% section id="make-code-changes" title="Как да правим промени по кода?" %}

Файлът, който трябва да промениш е `config.ru` и се намира тук:

    $ cd /път/до/myrubyapp/

Можеш да го редактираш с предпочитан от теб текстов редактор или през командния ред, както е в този пример.

След като се намирате вече в `/myrubyapp/config.ru`, редактирайте с предпочитаният от Вас редактор съдържанието  между `<body></body>` таговете примерно така:

    <body>
         <h1> Моето ruby приложение! </h1>
    </body>

За да провериш дали успешно е променен `config.ru`, изпълнете следната команда:

    git status

Ако всичко е минало нормално, резултатът от тази команда трябва да е нещо подобно на това:

    # On branch master
    # Your branch is up-to-date with 'origin/master'.

    # Changes to be committed:
    # (use "git reset HEAD <file>..." to unstage)

    # Changes not staged for commit:
    # (use "git add <file>..." to update what will be committed)
    # (use "git checkout -- <file>..." to discard changes in working directory)

    # modified:   config.ru added to commit (use "git add" and/or "git commit -a")

Браво! Трудната част мина успешно :) Сега остана само да запишеш промените в `Git` и да ги качиш на сървъра:

    git commit -am "Change content of config.ru"

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Успя ли да направиш първата си промяна?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% endsection %}


{% section id="deployment" title="Качване на сървъра" %}

Качвате промените, които сте направили със следната команда:

    git push

Резултатът от `git push` трябва да е нещо подобно на това:

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

Това е! Можете да отвориш URL на приложението си и да се насладиш на промените, които току що направи :)

{% note info, За любопитните! %}
За по-любитните от Вас, на които прави впечатление след като написахте `git push` се случиха няколко интересни неща:

- Stopping Ruby cartridge
- Activating deployment
- Starting Ruby cartridge

Това е нормалното поведение на всеки един deploy процес в Startapp. Хубавото е, че тази част от поведението на deployment процеса и начина, по който работи Вашето проложение може да бъде променяно! Това става благодарение на така наречените **Маркери**, за които можеш да намериш информация малко по-долу!
{% endnote %}

{% endsection %}


{% include markers.html slug=page.slug %}

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли за какво се използват Маркерите?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% section id="add-mysql-to-app" title="Добавяне на MySQL към Ruby приложение" %}

    $ app cartridge add mysql-5.5 -a myrubyapp

{% note info, Относно аргумента '-a myrubyapp' %}
Ако се намирате в директорията на приложението си, може да пропускаш аргумента '-a appname'!

Намирате се в HOME директорията - трябва да използвате следния синтаксис:

    $ app cartridge add mysql-5.5 -a <име-на-приложението>

Ако обаче се намирате в директорията на Вашето приложение:

    cd /path/to/myrubyapp
    app cartridge add mysql-5.5

{%endnote%}

{% highlight sh %}
Adding mysql-5.5 to application 'myrubyapp' ... done

mysql-5.5 (MySQL 5.5)
---------------------
  Gears:          Located with ruby-1.9
  Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/
  Database Name:  myrubyapp
  Password:       gBq1wGX1sKAi
  Username:       adminrWaKHZ3

MySQL 5.5 database added.  Please make note of these credentials:

       Root User: adminrWaKHZ3
   Root Password: gBq1wGX1sKAi
   Database Name: myrubyapp

Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/

You can manage your new MySQL database by also embedding phpmyadmin.
The phpmyadmin username and password will be the same as the MySQL credentials above.
{% endhighlight %}

С добавянето на MySQL към Вашето приложение, също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/mysql.html %}
{% endsection %}

{% section id="how-to-access-mysql-via-ssh" title="Достъпване на МySQL през SSH" %}

Първо трябва да се логнеш на сървъра по SSH. Това става много лесно. Само изпълни следната команда:

    $ app ssh -a myrubyapp

След като се логнеш на сървъра напиши:

    $ mysql

И като резултат ще видите, това:

    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 1
    Server version: 5.5.37 MySQL Community Server (GPL)

    Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql>

Което означава, че си в интерактивната конзола на MySQL!

{% endsection %}

{% section id="how-to-access-mysql-via-devpc" title="Достъпване на МySQL през работната Ви машина/лаптоп" %}

    $ app port-forward -a myrubyapp

Като резултат от тази команда ще видите следното:

    Checking available ports ... done
    Forwarding ports ...
    Address already in use - bind(2) while forwarding port 8080. Trying local port 8081

    To connect to a service running on OpenShift, use the Local address

    httpd      127.0.0.1:8081   =>  127.11.98.1:8080
    mysql      127.0.0.1:3307   =>  127.11.98.2:3306
    ruby       127.0.0.1:21216  =>  127.11.98.1:21216

    Press CTRL-C to terminate port forwarding

Ако погледнеш на втори ред пише следното:

    mysql   127.0.0.1:3306  =>  127.12.225.130:3306

Което означава, че можете да достъпваш MySQL сървъра, който работи на Startapp.bg от локалната си машина. Ето как:

    $ mysql -h 127.0.0.1 -P 3306 -u<username> -p<password>

Ако си забравил твоите `username` и `password`, може да ги видите така:

    $ app show myrubyapp

{% endsection %}

{% section id="add-phpmyadmin-to-app" title="Добавяне на phpMyAdmin към Ruby приложение" %}

    $ app cartridge add phpmyadmin -a myrubyapp

{% highlight sh %}
Using phpmyadmin-4 (phpMyAdmin 4.0) for 'phpmyadmin'
Adding phpmyadmin-4 to application 'myrubyapp' ... done

phpmyadmin-4 (phpMyAdmin 4.0)
-----------------------------
  Gears:          Located with ruby-1.9, mysql-5.5
  Connection URL: https://myrubyapp-demos.sapp.io/phpmyadmin/

Please make note of these MySQL credentials again:
  Root User: adminUyn43WK
  Root Password: fMMMBFnuHM7Q
URL: https://myrubyapp-demos.sapp.io/phpmyadmin/
{% endhighlight %}

{% endsection %}


{% section id="add-postgresql-to-app" title="PostgreSQL и Ruby" %}

    $ app cartridge add postgresql-9.2 -a myrubyapp

{% note info, Относно аргумента '-a myrubyapp' %}
Ако се намирате в директорията на приложението си, може да пропускаш аргумента '-a appname'!

Което означава, че ако се намирате в HOME директорията си трябва да използвате следния синтаксис:

    $ app cartridge add postgresql-9.2 -a <име-на-приложението>

Ако обаче се намирате в директорията на Вашето приложение:

    cd /path/to/myrubyapp
    app cartridge add postgresql-9.2

{%endnote%}

{% highlight sh %}

Adding postgresql-9.2 to application 'myrubyapp' ... done

postgresql-9.2 (PostgreSQL 9.2)
-------------------------------
  Gears:          Located with ruby-1.9
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


С добавянето на PostgreSQL към Вашето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/postgresql.html %}
{% endsection %}

{% section header id="how-to-access-postgresql-via-ssh" title="Достъпване на PostgreSQL през SSH" %}

Първо трябва да се логнеш на сървъра по SSH. Това става много лесно. Само изпълни следната команда:

    $ app ssh -a myrubyapp

След като се логнеш на сървъра напиши:

    $ psql

И като резултат ще видите, това:

    psql (9.2.4)
    Type "help" for help.

    myrubyapp=# help
    You are using psql, the command-line interface to PostgreSQL.
    Type:  \copyright for distribution terms
           \h for help with SQL commands
           \? for help with psql commands
           \g or terminate with semicolon to execute query
           \q to quit
    myrubyapp=#

Което означава, че си в интерактивната конзола на PostgreSQL!

{% endsection %}



{% section id="how-to-access-postgresql-via-devpc" title="Достъпване на PostgreSQL. през работната ви машина/лаптоп" %}

    $ app port-forward -a myrubyapp

Като резултат от тази команда ще видите следното:

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

Ако погледнеш на последния ред пише следното:

    postgresql 127.0.0.1:5432   =>  127.12.225.133:5432

Което означава, че може да достъпваш MySQL сървъра, който работи на Startapp.bg, от локалната си машина. Ето как:

    $ psql -h 127.0.0.1 -p 5432 -U <username> -W <database>

След като изпълните тази команда, PostgreSQL ще поиска да си напишеш Вашиятта парола:

  Password for user <username>:

Напиши паролата си и натисни `ENTER`.

Ако си забравил твоите `username` и `password` може да ги видите така:

    $ app show myrubyapp

{% endsection %}

{% section id="add-mongo-to-app" title="MongoDB и Ruby" %}

    $ app cartridge add mongodb-2.2 -a myrubyapp

{% note info, Относно аргумента '-a myrubyapp' %}
Ако се намирате в директорията на приложението си, може да пропускаш аргумента '-a appname'!

Което означава, че ако се намирате в HOME директорията си трябва да използвате следния синтаксис:

    $ app cartridge add mongodb-2.2 -a <име-на-приложението>

Ако обаче се намирате в директорията на Вашето приложение:

    cd /path/to/myrubyapp
    app cartridge add mongodb-2.2

{%endnote%}

{% highlight sh %}

Adding mongodb-2.2 to application 'myrubyapp' ... done

mongodb-2.2 (MongoDB 2.2)
-------------------------
  Gears:          Located with ruby-1.9
  Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
  Database Name:  myrubyapp
  Password:       ISKkW-hbMIui
  Username:       admin

MongoDB 2.2 database added.  Please make note of these credentials:

   Root User:     admin
   Root Password: ISKkW-hbMIui
   Database Name: ruby

Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
{% endhighlight %}

С добавянето на MongoDB към Вашето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/mongodb.html %}

{% endsection %}

{% section id="how-to-access-mongodb-via-ssh" title="Достъпване на MongoDB през SSH" %}

Първо трябва да се логнеш на сървъра по SSH. Това става много лесно. Само изпълни следната команда:

    $ app ssh -a myrubyapp

След като се логнеш на сървъра напиши:

    $ mongo

И като резултат ще видите, това:

    MongoDB shell version: 2.4.6
    connecting to: 127.11.98.4:27017/admin
    Welcome to the MongoDB shell.
    For interactive help, type "help".
    For more comprehensive documentation, see
    http://docs.mongodb.org/
    Questions? Try the support group
    http://groups.google.com/group/mongodb-user
    >

Което означава, че ти си в интерактивната конзола на MongoDB!

{% endsection %}

{% section id="how-to-access-mongodb-via-devpc" title="Достъпване на MongoDB през работната ви машина/лаптоп" %}

    $ app port-forward -a myrubyapp

Като резултат от тази команда ще видите следното:

    Checking available ports ... done
    Forwarding ports ...

    To connect to a service running on OpenShift, use the Local address

    Service Local                OpenShift
    ------- --------------- ---- -----------------
    httpd   127.0.0.1:8080   =>  127.11.98.1:8080
    mongodb 127.0.0.1:27017  =>  127.11.98.4:27017
    ruby    127.0.0.1:21216  =>  127.11.98.1:21216

    Press CTRL-C to terminate port forwarding

Ако погледнеш на вторият ред пише:

    mongodb 127.0.0.1:27017  =>  127.11.98.4:27017

Което означава, че може да достъпваш MongoDB сървъра, който работи на Startapp.bg от локалната си машина. Ето как:

    $ mongodb 127.0.0.1:27017/<database> --username <username> --password <password>

Ако си забравил твоите `username` и `password` може да ги видите така:

    $ app show myrubyapp

{% endsection %}

{% section id="how-to-bundler" title="Управление на библиотеки, използващи Bundler" %}

Може би най-нормален начин за управление на библиотеки за Ruby приложения е Bundler. Startapp.bg идва с вградена поддръжка за Bundler и можете просто да започнете да го използвате. Няма нужда да се занимавате с нищо, просто го използвайте!

Създайте Gemfile в главната директория на приложението Ви MyApp/Gemfile и добавете библиотеката (Синатра в този пример)

    source 'https://rubygems.org'

    gem 'sinatra'

и локално да създадете Gemfile.lock файл, който предоставя актуална версия на библиотеки на Вашата заявка

    Bundle install

и най-накрая повторете стъпките да добавите кода, както преди:

    git add .
    git commit -m "Dependencies"
    git push

Вашето приложение ще изглежда подобно на предишното, но ще съдържа изхода на Bundler, че се работи вътре OpenShift да извлича нейните библиотеки. Вашият изход може да изглежда така:

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

{% include help/php.html %}