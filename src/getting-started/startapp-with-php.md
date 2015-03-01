---
layout: document

title:  "PHP приложения в StartАpp"
date:   2013-11-25 16:58:04
header_title:  '> app create &lt;app&gt; with PHP'
lead: "За PHP любознайковци! Дисекция на PHP приложенията в <strong>StartApp.bg</strong> Сloud"
slug: startapp-with-php
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% page_header id="quickstart-php" title="StartApp.bg с PHP" %}

{% note warning, Предварителни изисквания! %}
  {% include customer-requirements.html %}
{% endnote %}

{% section id="create-php-app-in-details" title="Създаване на PHP приложение" %}

В StartАpp това става с една команда:

    app create myphpapp php-5.5

Наличните версии на PHP са `php-5.3`, `php-5.4`, `php-5.5`

{% note info, Относно myphpapp! %}
Чудите се дали `myphpapp` е нещо вълшебно, отговорът е НЕ.
Това е името на твоето приложение :)
{%endnote%}

Резултатът от тази команда е:

{% highlight sh %}
Using php-5.5 (PHP 5.5) for 'php'

Application Options
-------------------
Domain:     demos
Cartridges: php-5.5
Gear Size:  default
Scaling:    no

Creating application 'myphpapp' ... done


Waiting for your DNS name to be available ...
    retry # 1 - Waiting for DNS: myphpapp-demos.sapp.io
    retry # 2 - Waiting for DNS: myphpapp-demos.sapp.io
    retry # 3 - Waiting for DNS: myphpapp-demos.sapp.io
done

Cloning into 'myphpapp'...

Your application 'myphpapp' is now available.

  URL:        http://myphpapp-demos.sapp.io/
  SSH to:     52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io
  Git remote: ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io/~/git/myphpapp.git/
  Cloned to:  /private/tmp/myphpapp

Run 'app show-app myphpapp' for more details about your app.
{% endhighlight %}

Последните няколко реда казват, че твоето приложение е създадено в StartApp и клонирано на твоя компютър.

{% note info, Всяко приложение в StartApp притежава: %}

Собствен домейн адрес (с включен SSL сертификат).

    URL:        http://myphpapp-demos.sapp.io/

SSH достъп

    SSH to:     52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io

Git хранилище

    Git remote: ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io/~/git/myphpapp.git/

{%endnote%}
{% endsection %}


{% section id="file-structure" title="Файлова структура на PHP приложението" %}

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
            index.php
          </td>
          <td>Стартов файл на твоето приложение</td>
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
          <td>директория за скриптове и команди, които се изпълняват с определена цикличност</td>
        </tr>
        <tr>
          <td>
            .openshift/markers/
          </td>
          <td>Виж секция <a href="#markers">Markers</a></td>
        </tr>
        <tr>
          <td>
            .openshift/pear.txt
          </td>
          <td>списък от `PHP Extension and Application Repository` за инсталиране</td>
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

StartАpp проверява и изпълнява `index.php` от изброените директории в следната последователност:

    1. php/             стартова директория за стандартно PHP приложение
    2. public/          стартова директория за Zend Framework v1/v2, Laravel, FuelPHP, Surebert.
    3. public_html/     стартова директория за определени Apache дистрибуции, Slim Framework.
    4. web/             стартова директория за Symfony Framework.
    5. www/             стартова директория за Nette Framework и други.
    6. ./               стартова директория за Wordpress, CodeIgniter, Joomla и други.
{% endnote %}

{% note info, За улеснение! %}
Следните директории на приложението се добавят автоматично към `PHP include_path`.

    - lib/
    - libs/
    - libraries/
    - src/
    - misc/
    - vendor/
    - vendors/
{% endnote %}
{% endsection %}


{% section id="make-code-changes" title="Как да правим промени по кода?" %}

Да променим `index.php` през командния ред със следната команда:

    echo 'Hello Wolrd!' > index.php

Да запишем промените в `Git`.

    git commit -am "Change content of index.php"

Браво! Трудната част мина успешно :) Сега остава да качим промените на сървъра.

{% endsection %}

{% section id="deployment" title="Качване на приложение" %}

В StartАpp това става с една команда:

    git push

Резултатът от тази команда е:

    Counting objects: 7, done.
    Delta compression using up to 8 threads.
    Compressing objects: 100% (4/4), done.
    Writing objects: 100% (4/4), 419 bytes | 0 bytes/s, done.
    Total 4 (delta 2), reused 0 (delta 0)
    remote: Waiting for stop to finish
    remote: Building git ref 'master', commit 0c54629
    remote: Building PHP cartridge
    remote: Preparing build for deployment
    remote: Deployment id is 1f5b7eef
    remote: Activating deployment
    remote: Starting PHP cartridge
    remote: Result: success
    remote: Activation status: success
    remote: Deployment completed with status: success
    To ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io/~/git/myphpapp.git/
       22f27f1..2463db6  master -> master

Това е! Можем да отворим приложението в браузър и да се насладим на промените :)

{% note info, За любопитните! %}
След `git push` се случиха няколко интересни неща:

- Stopping PHP cartridge
- Activating deployment
- Starting PHP cartridge

Това е нормалното поведение на всеки един `deploy` процес в StartАpp. Разбира се, това поведение може да бъде променяно чрез **маркери**.

{% endnote %}

{% endsection %}

{% include markers.html slug=page.slug %}
{% include action-hooks.html slug=page.slug %}

{% section id="add-mysql-to-app" title="Добавяне на MySQL към PHP приложение" %}

В StartАpp това става с една команда:

    app cartridge add mysql-5.5

Резултатът от тази команда е:

{% highlight sh %}
Adding mysql-5.5 to application 'myphpapp' ... done

mysql-5.5 (MySQL 5.5)
---------------------
  Gears:          Located with php-5.5
  Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/
  Database Name:  myphpapp
  Password:       gBq1wGX1sKAi
  Username:       adminrWaKHZ3

MySQL 5.5 database added.  Please make note of these credentials:

       Root User: adminrWaKHZ3
   Root Password: gBq1wGX1sKAi
   Database Name: myphpapp

Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/

You can manage your new MySQL database by also embedding phpmyadmin.
The phpmyadmin username and password will be the same as the MySQL credentials above.
{% endhighlight %}

{% note info, За улеснение! %}
С добавянето на MySQL към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/mysql.html %}
{% endsection %}

{% section id="how-to-access-mysql-via-php" title="Достъпване на МySQL през PHP" %}

Ето пример как MySQL ENV променливите могат да бъдат използвани.

{% highlight php %}
<?php

/* Може да достъпваш ENV променливите по няколко начина
 * Пример с getenv()
 * $hostname = getenv('OPENSHIFT_MYSQL_DB_HOST');
 *
 * Или можеш да използвате глобалните променливи в PHP ($_SERVER or $_ENV)
 * $$hostname = $_SERVER['OPENSHIFT_MYSQL_DB_HOST'];
*/

$host     = getenv('OPENSHIFT_MYSQL_DB_HOST');
$username = getenv('OPENSHIFT_MYSQL_DB_USERNAME');
$password = getenv('OPENSHIFT_MYSQL_DB_PASSWORD');
$db_name  = getenv('OPENSHIFT_APP_NAME');

// Отваряне на конекция
$link = new mysqli($host, $username, $password, $db_name);

if ($mysqli->connect_errno) {
    echo "Cound not connect: " . $mysqli->connect_error;
}

echo 'Connected successfully';

// Затваряне на конекцията
$link->close();

?>

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

    mysql -h 127.0.0.1 -P 3306 -u <username> -p <password>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}

{% section id="add-phpmyadmin-to-app" title="Добавяне на phpMyAdmin към PHP приложение" %}

    app cartridge add phpmyadmin

Резултатът от тази команда е:

{% highlight sh %}
Using phpmyadmin-4 (phpMyAdmin 4.0) for 'phpmyadmin'
Adding phpmyadmin-4 to application 'myphpapp' ... done

phpmyadmin-4 (phpMyAdmin 4.0)
-----------------------------
  Gears:          Located with php-5.5, mysql-5.5
  Connection URL: https://myphpapp-demos.sapp.io/phpmyadmin/

Please make note of these MySQL credentials again:
  Root User: adminH3N4yWf
  Root Password: 7nxXBwI9aV_m
URL: https://myphpapp-demos.sapp.io/phpmyadmin/
{% endhighlight %}

{% note info, Полезно! %}
Потребителското име и парола за **phpMyAdmin** са същите като тези за **MySQL** базата.
{% endnote %}

{% endsection %}

{% section id="add-postgresql-to-app" title="PostgreSQL и PHP" %}

    app cartridge add postgresql-9.2

Резултатът от тази команда е:

{% highlight sh %}

Adding postgresql-9.2 to application 'myphpapp' ... done

postgresql-9.2(PostgreSQL 9.2)
-------------------------------
  Gears:          Located with php-5.5
  Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
  Database Name:  myphpapp
  Password:       jBeeIbXSTGsw
  Username:       adminfj66lmx

PostgreSQL 9.2 database added.  Please make note of these credentials:

   Root User: adminfj66lmx
   Root Password: jBeeIbXSTGsw
   Database Name: myphpapp

Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
{% endhighlight %}


{% note info, За улеснение! %}
С добавянето на PostgreSQL към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/postgresql.html %}
{% endsection %}

{% section id="how-to-access-postgresql-via-php" title="Достъпване на PostgreSQL през PHP" %}

Ето пример как PostgreSQL ENV променливите могат да бъдат използвани.

{% highlight php %}
<?php

/* Може да достъпваш ENV променливите по няколко начина
 * Пример с getenv()
 * $hostname = getenv('OPENSHIFT_POSTGRESQL_DB_HOST');
 *
 * Или можеш да използвате глобалните променливи в PHP ($_SERVER or $_ENV)
 * $hostname = $_SERVER['OPENSHIFT_POSTGRESQL_DB_HOST'];
*/

$host     = getenv('OPENSHIFT_POSTGRESQL_DB_HOST');
$username = getenv('OPENSHIFT_POSTGRESQL_DB_USERNAME');
$password = getenv('OPENSHIFT_POSTGRESQL_DB_PASSWORD');
$db_name  = getenv('OPENSHIFT_APP_NAME');

// Отваряне на конекция

$conection = pg_connect("host=$host dbname=$db_name user=$username password=$password")
    or die ("Could not connect to server\n");

echo 'Connected successfully';

// Затваряне на конекцията
pg_close($connection);

?>
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

    myphpapp=# help
    You are using psql, the command-line interface to PostgreSQL.
    Type:  \copyright for distribution terms
           \h for help with SQL commands
           \? for help with psql commands
           \g or terminate with semicolon to execute query
           \q to quit
    myphpapp=#

Това означава, че си в интерактивната конзола на PostgreSQL!

{% endsection %}

{% section id="how-to-access-postgresql-via-devpc" title="Достъпване на PostgreSQL през работна машина" %}

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

    psql -h 127.0.0.1 -p 5432 -u <username> -w <database>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}

{% section id="add-mongo-to-app" title="MongoDB и PHP" %}
В StartАpp това става с една команда:

    app cartridge add mongodb-2.4

Резултатът от тази команда е:

{% highlight sh %}

Adding mongodb-2.4 to application 'myphpapp' ... done

mongodb-2.4 (MongoDB 2.4)
-------------------------
  Gears:          Located with php-5.5
  Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
  Database Name:  myphpapp
  Password:       jgSb9c7sGcMi
  Username:       admin

MongoDB 2.4 database added.  Please make note of these credentials:

   Root User:     admin
   Root Password: jgSb9c7sGcMi
   Database Name: myphpapp

Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
{% endhighlight %}

{% note info, За улеснение! %}
С добавянето на MongoDB към приложение се добавят няколко ENV променливи, които указват хост, порт, потребителско име и парола на базата.
{% endnote %}

{% include env_vars/mongodb.html %}
{% endsection %}

{% section id="how-to-access-mongodb-via-php" title="Достъпване на MongoDB през PHP" %}

Ето пример как MongoDB ENV променливите могат да бъдат използвани.

{% highlight php %}
<?php

/* Може да достъпваш ENV променливите по няколко начина
 * Пример с getenv()
 * $hostname = getenv('OPENSHIFT_MONGODB_DB_HOST');
 *
 * Или може да използвате глобалните променливи в PHP ($_SERVER or $_ENV)
 * $$hostname = $_SERVER['OPENSHIFT_MONGODB_DB_HOST'];
*/

$host     = getenv('OPENSHIFT_MONGODB_DB_HOST');
$username = getenv('OPENSHIFT_MONGODB_DB_USERNAME');
$password = getenv('OPENSHIFT_MONGODB_DB_PASSWORD');
$port     = getenv('OPENSHIFT_MONGODB_DB_PORT');
$db_name  = getenv('OPENSHIFT_APP_NAME');


// Отваряне на конекция
$uri = "mongodb://" . $username . ":" . $password . "@" . $host . ":" . $port;
$mongo = new Mongo($uri);

// Името на базата данни винаги е името на самото приложение
// Ако Вашето приложение се казва myphpapp, тогава трябва да заместиш <app-name> с myphpapp
$database = $mongo->$db_name;

?>
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

Това означава, че си в интерактивната конзола на MongoDB!

{% endsection %}

{% section id="how-to-access-mongodb-via-devpc" title="Достъпване на MongoDB през работна машина" %}

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

    mongo 127.0.0.1:27017/<database> -u <username> -p <password>

{% note info, Полезно! %}
За да видиш хост, порт, потребителско име и парола на базата изпълни:

    app show

{% endnote %}
{% endsection %}

{% section id="create-codeigniter-app" title="Инсталиране на Codeigniter" %}

Благодарение на **StartApp Quickstarts** може да инсталираш Codeigniter това става с една команда:

    app create myciapp codeigniter

Тази команда, автоматично ще инсталира Codeigniter, също така ще създаде автоматично MySQL база данни.

Резултатът от тази команда е:

    Application Options
    -------------------
    Domain:      myciapp
    Cartridges:  php-5.5, mysql-5.1
    Source Code: http://install.startapp.bg/q/codeigniter.git
    Gear Size:   default
    Scaling:     no

    Creating application 'myciapp' ... done

      MySQL 5.1 database added.  Please make note of these credentials:

       Root User: adminNr7mdGm
       Root Password: d2Tpn9zWWbdB
       Database Name: myciapp

    Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/

    You can manage your new MySQL database by also embedding phpmyadmin.
    The phpmyadmin username and password will be the same as the MySQL credentials above.

    Waiting for your DNS name to be available ... done

    Cloning into 'myciapp'...
    The authenticity of host 'myciapp-demos.sapp.io (46.4.1.82)' can't be established.
    RSA key fingerprint is fd:91:73:33:23:3f:cf:ad:ab:0a:c6:d4:4c:ff:d6:7d.
    Are you sure you want to continue connecting (yes/no)? yes
    Warning: Permanently added 'myciapp-demos.sapp.io' (RSA) to the list of known hosts.

    Your application 'myciapp' is now available.

      URL:        http://myciapp-demos.sapp.io/
      SSH to:     54d2ccaeba7eeaeb6a000029@myciapp-demos.sapp.io
      Git remote: ssh://54d2ccaeba7eeaeb6a000029@myciapp-demos.sapp.io/~/git/myciapp.git/
      Cloned to:  /Users/demos/tmp/myciapp

    Run 'app show-app myciapp' for more details about your app.

{% endsection %}


{% section id="add-composer" title="Добавяне на Composer" %}

#### Метод 1:

Създаване на маркер, чрез който активираш `composer` за твоето приложение

    touch .openshift/markers/use_composer


#### Метод 2:

С помощта на Action hooks можеш да определиш поведението на Composer според твоите изисквания. Примерно по следния начин:

Изпълни следния код (copy/paste) и натисни `ENTER`:

{% highlight sh %}
cat > .openshift/action_hooks/deploy << "EOF"
#!/bin/bash
# This deploy hook gets executed after dependencies are resolved and the
# build hook has been run but before the application has been started back
# up again. This script gets executed directly, so it could be python, php,
# ruby, etc.

export COMPOSER_HOME="$OPENSHIFT_DATA_DIR/.composer"

if [ ! -f "$OPENSHIFT_DATA_DIR/composer.phar" ]; then
    curl -s https://getcomposer.org/installer | /usr/bin/php -- --install-dir=$OPENSHIFT_DATA_DIR
else
  /usr/bin/php $OPENSHIFT_DATA_DIR/composer.phar self-update
fi

# Install phars if composer.json exists
if [ -f "$OPENSHIFT_REPO_DIR/composer.json" ]; then
  ( unset GIT_DIR ; cd $OPENSHIFT_REPO_DIR ; /usr/bin/php $OPENSHIFT_DATA_DIR/composer.phar install )
fi
EOF
{% endhighlight %}

За да бъде изпълним скрипта:

    chmod +x .openshift/action_hooks/deploy

Да запишем промените в `Git`.

    git add .openshift/action_hooks/deploy
    git commit -m "Enable Composer"
    git push

Сега вече Comsposer е активиран!

### Добавяне на composer.json

За да инсталираш пакети с Comsposer е необходимо да създадеш `composer.json` файл в твоето приложение и да опишеш кои пакети да бъдат инсталирани.

    cat <<EOF> composer.json
    {
        "require": {
            "monolog/monolog": "1.0.*"
        }
    }
    EOF

Да запишем промените в `Git`.

    git add composer.json
    git commit -m "Add composer.json"

Да качим промените на сървъра.

    git push

Това е! Приятна работа с Composer!
{% endsection %}

{% include help/php.html %}
