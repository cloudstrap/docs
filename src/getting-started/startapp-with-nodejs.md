---
layout: document

title:  "NodeJS приложения в StartApp.bg NodeJS хостинг."
date:   2014-03-01 18:58:04
header_title:  '> app create &lt;app&gt; with NodeJS'
lead: "За любознателни JavaScript машини! Създаване на NodeJS приложения в <strong>StartApp</strong>  Сloud"
slug: startapp-with-nodejs
keywords: "хостинг, nodejs хостинг, nodejs mongodb, nodejs mysql, nodejs framework, nodejs приложения, nodejs"
description: ""
noToc: true
---

{% page_header id="quickstart" title="StartApp.bg с NodeJS" %}

{% note warning, Предварителни изисквания! %}
  {% include customer-requirements.html %}
{% endnote %}

{% section id="create-app-in-details" title="Създаване на NodeJS приложение" %}

В StartАpp това става с една команда:

    app create mynodejsapp nodejs-0.10

Наличните версии на NodeJS са `nodejs-0.6`, `nodejs-0.10`

{% note info, Относно myphpapp! %}
Чудите се дали `myphpapp` е нещо вълшебно, отговорът е НЕ.
Това е името на твоето приложение :)
{%endnote%}

Резултатът от тази команда е:

{% highlight sh %}
Application Options
-------------------
Domain:     demos
Cartridges: nodejs-0.10
Gear Size:  default
Scaling:    no

Creating application 'mynodejsapp' ... done


Waiting for your DNS name to be available ... done

Cloning into 'mynodejsapp'...
The authenticity of host 'mynodejsapp-demos.sapp.io (93.123.32.34)' can`t be established.
RSA key fingerprint is e2:4c:39:1a:d1:d1:1c:cc:66:2a:bf:43:42:56:c4:26.
Are you sure you want to continue connecting (yes/no)?
Warning: Permanently added 'mynodejsapp-demos.sapp.io' (RSA) to the list of known hosts.
Checking connectivity... done

Your application 'mynodejsapp' is now available.

  URL:        http://mynodejsapp-demos.sapp.io/
  SSH to:     5313bc74bfbf5a097a000163@mynodejsapp-demos.sapp.io
  Git remote: ssh://5313bc74bfbf5a097a000163@mynodejsapp-demos.sapp.io/~/git/mynodejsapp.git/
  Cloned to:  /private/tmp/mynodejsapp

Run 'app show-app mynodejsapp' for more details about your app.
{% endhighlight %}

Последните няколко реда казват, че твоето приложение е създадено в StartApp и клонирано на твоя компютър.

{% note info, Всяко приложение в StartApp притежава: %}

Собствен домейн адрес (с включен SSL сертификат).

    URL:        http://mynodejsapp-demos.sapp.io/

SSH достъп

    SSH to:     5313bc74bfbf5a097a000163@mynodejsapp-demos.sapp.io

Git хранилище

    Git remote: ssh://5313bc74bfbf5a097a000163@mynodejsapp-demos.sapp.io/~/git/mynodejsapp.git/

{%endnote%}
{% endsection %}


{% section id="file-structure" title="Файлова структура на NodeJS приложението" %}

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
          node_modules/
        </td>
        <td>Всички NodeJS модули и техните dependencies. В нея добавяш и своите модули. <b>Важно: не я изтривай, не я преименувай.</b></td>
      </tr>

      <tr>
        <td>
          package.json
        </td>
        <td>Този файл съдържа мета данни, които се използват от NPM, за да се инсталират нужните NodeJS пакети за твоя проект.</td>
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
          server.js
        </td>
        <td>Това е файлът, чрез който StartApp ще стартира твоето приложение.</td>
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

{% note warning, Важно! %}
По подразбиране, StartApp стартира твоето приложение, чрез файл с име <code>server.js</code>. Може да укажеш алтернативен стартиращ файл, чрез промяна на <code>main</code> и <code>scripts.start</code> секциите в твоя <code>package.json</code> файл.
Желателно е да направиш следната малка проверка, за да тестваш за наличните системни променливи, които обикновено се използват от nodejs приложението

    var server_port = process.env.OPENSHIFT_NODEJS_PORT || 8080
    var server_ip_address = process.env.OPENSHIFT_NODEJS_IP || '127.0.0.1'

    server.listen(server_port, server_ip_address, function(){
    console.log("Listening on " + server_ip_address + ", server_port " + port)
    });

Горният код задава стойности по подразбиране, които ще позволят на приложението да работи в StartApp и на твоя компютър

{% endnote %}
{% endsection %}

{% section id="env-vars" title="Environment променливи" %}

Всяко едно NodeJS приложение идва с няколко ENV променливи.

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
          OPENSHIFT_NODEJS_IP
        </td>
        <td>Вътрешния IP адрес на NodeJS приложението. Използва се от StartApp.</td>
      </tr>

      <tr>
        <td>
          OPENSHIFT_NODEJS_PORT
        </td>
        <td>Вътрешния порт на NodeJS приложението. Използва се от StartApp.</td>
      </tr>

      <tr>
        <td>
          OPENSHIFT_NODEJS_POLL_INTERVAL
        </td>
        <td>По подразбиране е 1 секунда.</td>
      </tr>

      <tr>
        <td>
          NPM_CONFIG_PRODUCTION
        </td>
        <td>Когато NPM_CONFIG_PRODUCTION е със стойност 'true', StartApp няма да инсталира 'devDependencies', </td>
      </tr>
    </tbody>
  </table>
</div>
{% endsection %}

{% section id="make-code-changes" title="Как да правим промени по кода?" %}

Да променим `index.html` през командния ред със следната команда:

    echo 'Hello Wolrd!' > index.html

Да запишем промените в `Git`.

    git commit -am "Change content of index.html"

Браво! Трудната част мина успешно :) Сега остава да качим промените на сървъра.

{% endsection %}


{% section id="deployment" title="Качване на сървъра" %}

В StartАpp това става с една команда:

    git push

Резултатът от тази команда е:

    Counting objects: 5, done.
    Delta compression using up to 8 threads.
    Compressing objects: 100% (2/2), done.
    Writing objects: 100% (3/3), 283 bytes | 0 bytes/s, done.
    Total 3 (delta 1), reused 0 (delta 0)
    remote: Stopping NodeJS cartridge
    remote: Saving away previously installed Node modules
    remote: Building git ref 'master', commit ed321be
    remote: Building NodeJS cartridge
    remote: npm info it worked if it ends with ok
    remote: npm info using npm@1.2.17
    remote: npm info using node@v0.10.5
    remote: npm info preinstall OpenShift-Sample-App@1.0.0
    remote: npm info build /var/lib/openshift/5313bc74bfbf5a097a000163/app-root/runtime/repo
    remote: npm info linkStuff OpenShift-Sample-App@1.0.0
    remote: npm info install OpenShift-Sample-App@1.0.0
    remote: npm info postinstall OpenShift-Sample-App@1.0.0
    remote: npm info prepublish OpenShift-Sample-App@1.0.0
    remote: npm info ok
    remote: Preparing build for deployment
    remote: Deployment id is 5fb78009
    remote: Activating deployment
    remote: Starting NodeJS cartridge
    remote: Result: success
    remote: Activation status: success
    remote: Deployment completed with status: success
    To ssh://5313bc74bfbf5a097a000163@mynodejsapp-demos.sapp.io/~/git/mynodejsapp.git/
       8ed094d..ed321be  master -> master

Това е! Можем да отворим приложението в браузър и да се насладим на промените :)

{% note info, За любопитните! %}
След `git push` се случиха няколко интересни неща:

- Stopping NodeJS cartridge
- Activating deployment
- Starting NodeJS cartridge

Това е нормалното поведение на всеки един `deploy` процес в StartАpp. Разбира се, това поведение може да бъде променяно чрез **маркери**.
{% endnote %}

{% endsection %}

{% include markers.html slug=page.slug %}
{% include action-hooks.html slug=page.slug %}


{% section id="add-mysql-to-app" title="Добавяне на MySQL към NodeJS приложение" %}

В StartАpp това става с една команда:

    app cartridge add mysql-5.5

Резултатът от тази команда е:

{% highlight sh %}
Adding mysql-5.5 to application 'mynodejsapp' ... done

mysql-5.5 (MySQL 5.5)
---------------------
  Gears:          Located with nodejs-0.10
  Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/
  Database Name:  mynodejsapp
  Password:       gBq1wGX1sKAi
  Username:       adminrWaKHZ3

MySQL 5.5 database added.  Please make note of these credentials:

   Root User: adminrWaKHZ3
   Root Password: gBq1wGX1sKAi
   Database Name: mynodejsapp

Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/

You can manage your new MySQL database by also embedding phpmyadmin.
The phpmyadmin username and password will be the same as the MySQL credentials above.
{% endhighlight %}

{% note info, За улеснение! %}
С добавянето на MySQL към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/mysql.html %}
{% endsection %}

{% section id="how-to-access-mysql-via-nodejs" title="Достъпване на МySQL през NodeJS" %}

Ето пример как MySQL ENV променливите могат да бъдат използвани.

{% highlight js %}
var mysql = require('mysql'),
    host = process.env.OPENSHIFT_MYSQL_DB_HOST,
    username = process.env.OPENSHIFT_MYSQL_DB_USERNAME,
    password = process.env.OPENSHIFT_MYSQL_DB_PASSWORD,
    port = process.env.OPENSHIFT_MYSQL_DB_PORT,
    db_name = process.env.OPENSHIFT_APP_NAME;

// Инициализация на базата
// създаване на конекция
var connection = mysql.createConnection({
  host: host,
  user: username,
  password: password
});

// Създаване на тестова таблица.

connection.query('CREATE DATABASE IF NOT EXISTS test', function(err) {
  if (err) throw err;
  connection.query('USE test', function(err) {
    if (err) throw err;
    connection.query('CREATE TABLE IF NOT EXISTS users(' + 'id INT NOT NULL AUTO_INCREMENT,' + 'PRIMARY KEY(id),' + 'name VARCHAR(30)' + ')', function(err) {
      if (err) throw err;
    });
  });
});

// Примерно update query
connection.query('INSERT INTO users SET ?', req.body,
  function(err, result) {
    if (err) throw err;
    res.send('User added to database with ID: ' + result.insertId);
  }
);

{% endhighlight %}

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
    Address already in use - bind(2) while forwarding port 8080. Trying local port 8081

    To connect to a service running on OpenShift, use the Local address

    Service Local               OpenShift
    ------- -------------- ---- -------------------
    httpd   127.0.0.1:8080  =>  127.12.225.129:8080
    httpd   127.0.0.1:8081  =>  127.12.225.131:8080
    mysql   127.0.0.1:3306  =>  127.12.225.130:3306

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

{% section id="add-phpmyadmin-to-app" title="Добавяне на phpMyAdmin към NodeJS приложение" %}

    app cartridge add phpmyadmin

Резултатът от тази команда е:

{% highlight sh %}
Using phpmyadmin-4 (phpMyAdmin 4.0) for 'phpmyadmin'
Adding phpmyadmin-4 to application 'mynodejsapp' ... done

phpmyadmin-4 (phpMyAdmin 4.0)
-----------------------------
  Gears:          Located with nodejs-0.10, mysql-5.5
  Connection URL: https://mynodejsapp-demos.sapp.io/phpmyadmin/

Please make note of these MySQL credentials again:
  Root User: adminH3N4yWf
  Root Password: 7nxXBwI9aV_m
URL: https://mynodejsapp-demos.sapp.io/phpmyadmin/
{% endhighlight %}
{% note info, Полезно! %}
Потребителското име и парола за **phpMyAdmin** са същите като тези за **MySQL** базата.
{% endnote %}
{% endsection %}


{% section id="add-postgresql-to-app" title="PostgreSQL и NodeJS" %}

    app cartridge add postgresql-9.2

Резултатът от тази команда е:

{% highlight sh %}

Adding postgresql-9.2 to application 'mynodejsapp' ... done

postgresql-9.2(PostgreSQL 9.2)
-------------------------------
  Gears:          Located with nodejs-0.10
  Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
  Database Name:  mynodejsapp
  Password:       jBeeIbXSTGsw
  Username:       adminfj66lmx

PostgreSQL 9.2 database added.  Please make note of these credentials:

  Root User: adminfj66lmx
  Root Password: jBeeIbXSTGsw
  Database Name: mynodejsapp

Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
{% endhighlight %}

{% note info, За улеснение! %}
С добавянето на PostgreSQL към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/postgresql.html %}
{% endsection %}

{% section id="how-to-access-postgresql-via-nodejs" title="Достъпване на PostgreSQL през NodeJS" %}

Ето пример как PostgreSQL ENV променливите могат да бъдат използвани.

{% highlight js %}
var pg = require('pg'),

    host     = process.env.OPENSHIFT_POSTGRESQL_DB_HOST,
    username = process.env.OPENSHIFT_POSTGRESQL_DB_USERNAME,
    password = process.env.OPENSHIFT_POSTGRESQL_DB_PASSWORD,
    port     = process.env.OPENSHIFT_POSTGRESQL_DB_PORT,
    db_name  = process.env.OPENSHIFT_APP_NAME,
    uri = "postgres://" + username + ":" + password + "@" + host + "/" + db_name;


var client = new pg.Client(uri);

client.connect(function(err) {
  if(err) {
    return console.error('could not connect to postgres', err);
  }
  client.query('SELECT NOW() AS "theTime"', function(err, result) {
    if(err) {
      return console.error('error running query', err);
    }
    console.log(result.rows[0].theTime);
    //output: Tue Jan 15 2013 19:12:47 GMT-600 (CST)
    client.end();
  });
});


{% endhighlight %}

{% endsection %}


{% section header id="how-to-access-postgresql-via-ssh" title="Достъпване на PostgreSQL през SSH" %}

В StartАpp това става с една команда:

    app ssh

Стартиране на PostgreSQL

    psql

Резултатът от тази команда е:

    psql (9.2.7)
    Type "help" for help.

    mynodejsapp=# help
    You are using psql, the command-line interface to PostgreSQL.
    Type:  \copyright for distribution terms
           \h for help with SQL commands
           \? for help with psql commands
           \g or terminate with semicolon to execute query
           \q to quit
    mynodejsapp=#

Това означава, че си в интерактивната конзола на PostgreSQL!

{% endsection %}

{% section id="how-to-access-postgresql-via-devpc" title="Достъпване на PostgreSQL. през работна машина" %}

    app port-forward

Резултатът от тази команда е:

    hecking available ports ... done
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

{% section id="add-mongo-to-app" title="MongoDB и NodeJS" %}

В StartАpp това става с една команда:

    app cartridge add mongodb-2.4

Резултатът от тази команда е:

{% highlight sh %}

Adding mongodb-2.4 to application 'mynodejsapp' ... done

mongodb-2.4(MongoDB 2.4)
-------------------------
  Gears:          Located with nodejs-0.10
  Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
  Database Name:  mynodejsapp
  Password:       jgSb9c7sGcMi
  Username:       admin

MongoDB 2.4 database added.  Please make note of these credentials:

   Root User:     admin
   Root Password: jgSb9c7sGcMi
   Database Name: mynodejsapp

Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
{% endhighlight %}

{% note info, За улеснение! %}
С добавянето на MongoDB към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/mongodb.html %}

{% endsection %}

{% section id="how-to-access-mongodb-via-nodejs" title="Достъпване на MongoDB през NodeJS" %}

Ето пример как MongoDB ENV променливите могат да бъдат използвани.

{% highlight js %}
var MongoClient = require('mongodb').MongoClient,

    host     = process.env.OPENSHIFT_MONGODB_DB_HOST,
    username = process.env.OPENSHIFT_MONGODB_DB_USERNAME,
    password = process.env.OPENSHIFT_MONGODB_DB_PASSWORD,
    port     = process.env.OPENSHIFT_MONGODB_DB_PORT,
    db_name  = process.env.OPENSHIFT_APP_NAME,
    uri = "mongodb://" + username + ":" + password + "@" + host + ":" + port + "/" + db_name;

// Свързване с базата данни
MongoClient.connect("mongodb://localhost:27017/exampleDb", function(err, db) {

  if(err) {
    return console.dir(err);
  }

  db.collection('test', function(err, collection) {});

  db.collection('test', { w:1 }, function(err, collection) {});

  db.createCollection('test', function(err, collection) {});

  db.createCollection('test', { w:1 }, function(err, collection) {});

});
{% endhighlight %}

{% endsection %}

{% section id="how-to-access-mongodb-via-ssh" title="Достъпване на MongoDB през SSH" %}

В StartАpp това става с една команда:

    app ssh

Стартиране на MongoDB

    mongo

Резултатът от тази команда е:

    MongoDB shell version: 2.4.6
    connecting to: 127.12.225.132:27017/admin
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
    httpd   127.0.0.1:8080   =>  127.12.225.129:8080
    httpd   127.0.0.1:8081   =>  127.12.225.131:8080
    mongodb 127.0.0.1:27017  =>  127.12.225.132:27017

    Press CTRL-C to terminate port forwarding

Обърни внимание на реда:

    mongodb 127.0.0.1:27017  =>  127.12.225.132:27017

Можеш да достъпваш MongoDB сървъра, който работи на StartАpp от локалната си машина:

    mongo 127.0.0.1:27017/<database> --username <username> --password <password>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}


{% include help/nodejs.html %}
