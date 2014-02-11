---
layout: document

title:  "PHP приложения в Startapp"
date:   2013-11-25 16:58:04
header_title:  '> app create &lt;app&gt; with php'
lead: "За PHP любознайковци! Дисекция на PHP проложенията в <strong>Startapp.bg</strong> Сloud"
slug: startapp-with-php
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% page_header id="quickstart-php" title="Стартиране с PHP" %}

{% include customer-requirements.html %}

{% page_header id="create-php-app-in-details" title="Подробни инструкции" %}


### Създаване на ново приложение

Създаването на `php` приложения в Startapp е изключително лесно и в повечето случаи е само с 1 ред код:

    $ app create myphpapp php

{% note info, Относно myphpapp! %}
Ако се чудите дали това `myphpapp` е нещо вълшебно, отговорът е НЕ това е просто името на на нашето ново приложение :) Което означава, че синтаксисът е следния:

    $ app create <име-на-приложението> <език>

Това означава също, че навсякъде в примера където използваме `myphpapp` имайте предвид, че там стои името на вашето приложение.

{%endnote%}

След като напишете тази команда на екрана ви ще се изпише нещо такова:

{% highlight sh %}
Using php-5.3 (PHP 5.3) for 'php'

Application Options
-------------------
Domain:     demos
Cartridges: php-5.3
Gear Size:  default
Scaling:    no

Creating application 'myphpapp' ... done


Waiting for your DNS name to be available ...
    retry # 1 - Waiting for DNS: myphpapp-demos.startapp.bg
    retry # 2 - Waiting for DNS: myphpapp-demos.startapp.bg
    retry # 3 - Waiting for DNS: myphpapp-demos.startapp.bg
    retry # 4 - Waiting for DNS: myphpapp-demos.startapp.bg
done

Cloning into 'myphpapp'...
The authenticity of host 'myphpapp-demos.startapp.bg (93.123.32.34)' can't be established.
RSA key fingerprint is e2:4c:39:1a:d1:d1:1c:cc:66:2a:bf:43:42:56:c4:26.
Are you sure you want to continue connecting (yes/no)?
{% endhighlight %}

Последните няколко реда ви казват, вашето приложение е създадено и е готово да бъде клонирано на вашата вашия компютър.

Ако искате да го клонирате напишете:

    yes

и натиснете `ENTER`.

Ако сте направили това на екрана ви ще бъдат изписани следните неща:

{% highlight sh %}
Warning: Permanently added 'myphpapp-demos.startapp.bg' (RSA) to the list of known hosts.
Checking connectivity... done

Your application 'myphpapp' is now available.

  URL:        http://myphpapp-demos.startapp.bg/
  SSH to:     52debd81bfbf5aa4ca000482@myphpapp-demos.startapp.bg
  Git remote: ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.startapp.bg/~/git/myphpapp.git/
  Cloned to:  /private/tmp/myphpapp

Run 'app show-app myphpapp' for more details about your app.
{% endhighlight %}

### Отваряне в браузъра

За да видите вашия сайт отворете с браузър URL-то което по-горе е изписано след `URL:`, в нашия случай:

    http://myphpapp-demos.startapp.bg/

### SSH достъп

Всички приложения в Startapp.bg идват с SSH достъп. За да се логнете на сървъра през SSH използвайте адреса изписан след `SSH to:` в този пример той е :

    ssh 52debd81bfbf5aa4ca000482@myphpapp-demos.startapp.bg

{% note warning, Внимание! %}
Този пример е валиден за Mac OS и Linux. Ако използвате Windows трябва да имате инсталирано [Putty](/getting-started/using-putty-examples.html). Ако не знаете как да инсталирате и използвате [Putty](/getting-started/using-putty-examples.html), можете да разгледате [примера тук](/getting-started/using-putty-examples.html)
{% endnote %}

### Git хранилище
Всяко приложение в Startapp.bg се съхранява в отделно Git хранилище. Адресът на хранилището на вашето приложение може да го видите веднага след "Git remote:", което в този конкретен случай е :

    ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.startapp.bg/~/git/myphpapp.git/

Което означава, че ако иксаме да клонираме нашето приложение/сайт някъде другаде а не там където го е направило автоматично startapp tools, трябва само да изпълним следните команди:

    cd /path/to/my/working/dir
    git clone ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.startapp.bg/~/git/myphpapp.git/

Това е!

<br />

{% page_header id="file-structure" title="Файлова структура на PHP приложението" %}

След като създадете вашето ново PHP приложение и го клонирате на компютъра си, ще видите следните файлове и директории.

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
            <code>php/</code>
          </td>
          <td>Това е document root-а на приложението. Вашият код трябва да бъде тук.</td>
        </tr>

        <tr>
          <td>
            <code>php/index.php</code>
          </td>
          <td>Стандартен index като на всяко PHP приложение</td>
        </tr>

        <tr>
          <td>
            <code>libs/</code>
          </td>
          <td>Място за допълнителни библиотеки</td>
        </tr>

        <tr>
          <td>
            <code>misc/</code>
          </td>
          <td>Място за PHP код който не е достъпен от крайни потребители</td>
        </tr>

        <tr>
          <td>
            <code>deplist.txt</code>
          </td>
          <td>Списък от PEAR пакети които да бъдат инсталирани *1</td>
        </tr>

        <tr>
          <td>
            <code>.openshift/</code>
          </td>
          <td>Директория за специфични скриптове. Може и никога да не ви се наложи да пипате в нея, но тя е задължителна.</td>
        </tr>

        <tr>
          <td>
            <code>.openshift/action_hooks/</code>
          </td>
          <td>Виж документацията за Action Hooks *2</td>
        </tr>

        <tr>
          <td>
            <code>.openshift/markers/</code>
          </td>
          <td>Виж наличните Маркери по-долу.</td>
        </tr>

        <tr>
          <td>
            <code>.git/</code>
          </td>
          <td>Това локалното ви Git хранилище. <br /><b>Важно: </b>Не го изтривайте, ако искате да ви работи приложението.</td>
        </tr>



      </tbody>
    </table>
  </div>

{% note warning, Важно! %}
Startapp търси в директориите `php` и `libs` когато сервиеа вашето приложение на клиентите. Файлът **index.php** (който се намира в директория **php**) ще поеме всички requests от root URL-а на вашето приложение. Разбира се може да си създавате и други директории, ако желате, с цел по-добра огранизация на вашето приложение или поради друга ваша причина.
{% endnote %}

<br />

{% page_header id="deployment" title="Как да правим промени по кода и как да ги качим в клауда?" %}

Файлът който трябва да промерним е `index.php` и се намира тук:

    $ cd /път/до/myphpapp/php/

Можете да го редактирате с предпочитан от вас текстов редактор или през командния ред както е в този пример.

След като се намираме вече в `/път/до/myphpapp/php/` трябва да изпълним следния код (copy/paste) и натискаме `ENTER`:

{% highlight html %}
cat <<EOF> index.php
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Welcome to Startapp</title>

  <style>
    body {
      background: #fafafa;
      font-family: "Helvetica Neue",Helvetica,"Liberation Sans",Arial;
      font-size: 14px;
      line-height: 1.4;
    }
    .change {
      display: table;
      margin: 0 auto;
      padding: 10px;
      background: #fff;
      border-left: solid 1px #ccc;
    }
  </style>

</head>
<body>
  <div class="change">
    <h1>Вашата първа промяна в Startapp.bg</h1>
  </div>
</body>
</html>
EOF

{% endhighlight %}


За да проверим дали сме променили успешно `index.php` файла изпълняваме следната команда:

    git status

Ако всичко е минало нормално, резултатът от тази команда трябва да е нещо подобно на това:

    # On branch master
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    # modified:   index.php
    #
    no changes added to commit (use "git add" and/or "git commit -a")

Браво! Трудната част мина успешно :) Сега остана само да запишем промените в `Git` и да ги качим на сървъра. За целта трябва да изпълним следните команди:

    git commit -am "Change content of index.php"
    git push

Резултатът от `git push` трябва да е нещо подобно на това:

    Counting objects: 7, done.
    Delta compression using up to 8 threads.
    Compressing objects: 100% (4/4), done.
    Writing objects: 100% (4/4), 419 bytes | 0 bytes/s, done.
    Total 4 (delta 2), reused 0 (delta 0)
    remote: Stopping PHP cartridge
    remote: Waiting for stop to finish
    remote: Stopping PHPMyAdmin cartridge
    remote: Waiting for stop to finish
    remote: Stopping MySQL cartridge
    remote: Building git ref 'master', commit 2463db6
    remote: Building PHP cartridge
    remote: Preparing build for deployment
    remote: Deployment id is 2df9d963
    remote: Activating deployment
    remote: Starting PHPMyAdmin cartridge
    remote: Starting MySQL cartridge
    remote: Starting PHP cartridge
    remote: Result: success
    remote: Activation status: success
    remote: Deployment completed with status: success
    To ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.startapp.bg/~/git/myphpapp.git/
       22f27f1..2463db6  master -> master

Това е! Можете да отворите URL на приложението си и да се насладите на промените, които току що направихте :)

{% note info, За любопитните! %}
За по-любитните от вас, на които прави впечатление след като написахте `git push` се случиха няколко интересни неща:

- Stopping PHP cartridge
- Stopping MySQL cartridge
- Activating deployment
- Starting MySQL cartridge
- Starting PHP cartridge

Това е нормалното поведение на всеки един deploy процес в Startapp. Хубавото обаче, че това част от поведението на deployment процеса и начина по-който работи вашето проложение може да бъде променяно! Това става благодарение на така наречените **Маркери**, за които можете да намерите информация малко по-долу!
{% endnote %}

<br />

{% include markers.html slug=page.slug %}

{% page_header id="add-mysql-to-app" title="Добавяне на MySQL към PHP приложение" %}

    $ app cartridge add mysql-5.1 -a myphpapp

{% note info, Относно аргумента '-a myphpapp' %}
Ако се намирате в директорията на приложението си, можете да пропускате аргумента '-a appname'!

Което означава, че ако се намирате в HOME директорията си трябва да използвате следния синтаксис:

    $ app cartridge add mysql-5.1 -a <име-на-приложението>

Ако обаче се намирате в директорията на вашето приложение:

    cd /path/to/myphpapp
    app cartridge add mysql-5.1

{%endnote%}

{% highlight sh %}
Adding mysql-5.1 to application 'myphpapp' ... done

mysql-5.1 (MySQL 5.1)
---------------------
  Gears:          Located with php-5.3
  Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/
  Database Name:  myphpapp
  Password:       gBq1wGX1sKAi
  Username:       adminrWaKHZ3

MySQL 5.1 database added.  Please make note of these credentials:

       Root User: adminrWaKHZ3
   Root Password: gBq1wGX1sKAi
   Database Name: myphpapp

Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/

You can manage your new MySQL database by also embedding phpmyadmin.
The phpmyadmin username and password will be the same as the MySQL credentials above.
{% endhighlight %}

Със добавянето на MySQL към вашето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/mysql.html %}

{% page_header id="how-to-access-mysql-via-php" title="Достъпване на МySQL през PHP" %}

Ако се чудите за какво бяха тези MySQL ENV променливи, които показхме отгоре и как можете да използвате във вашия PHP код, ето един прост пример как да се закачите за вашия чисто нов MySQL сървър.

{% highlight php %}
<?php

/* Можете да достъпвате ENV променливите по няколко начина
 * Пример с getenv()
 * $hostname = getenv('OPENSHIFT_MYSQL_DB_HOST');
 *
 * Или можете да използвате глобалните променливи в PHP ($_SERVER or $_ENV)
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

<br />

{% page_header id="how-to-access-mysql-via-ssh" title="Достъпване на МySQL през SSH" %}

Първо трябва да се логнем на сървъра по SSH. Това става много лесно. Само изпълнете следната команда:

    $ app ssh -a myphpapp

След като се логнете на сървъра напишете:

    $ mysql

И като резултат ще видите, това:

    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 3
    Server version: 5.1.71 Source distribution

    Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql>

Което означава, че вие сте в интерактивната конзола на MySQL!

<br />

{% page_header id="how-to-access-mysql-via-devpc" title="Достъпване на МySQL през работната ви машина/лаптоп" %}

    $ app port-forward -a myphpapp

Като резултат от тази команда ще видите следното:

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

Ако погледнете на последния ред пише следното:

    mysql   127.0.0.1:3306  =>  127.12.225.130:3306

Което означава, че можете да достъпвате MySQL сървъра, който работи на Startapp.bg локалната си машина. Ето как:

    $ mysql -h 127.0.0.1 -P 3306 -u<username> -p<password>

Ако сте забравили вашите `username` и `password` можете да ги видите така:

    $ app show myphpapp

<br />

{% page_header id="add-phpmyadmin-to-app" title="Добавяне на phpMyAdmin към PHP приложение" %}

    $ app cartridge add phpmyadmin -a myphpapp

{% highlight sh %}
Using phpmyadmin-4 (phpMyAdmin 4.0) for 'phpmyadmin'
Adding phpmyadmin-4 to application 'myphpapp' ... done

phpmyadmin-4 (phpMyAdmin 4.0)
-----------------------------
  Gears:          Located with php-5.3, mysql-5.1
  Connection URL: https://myphpapp-apps.startapp.bg/phpmyadmin/

Please make note of these MySQL credentials again:
  Root User: adminH3N4yWf
  Root Password: 7nxXBwI9aV_m
URL: https://myphpapp-apps.startapp.bg/phpmyadmin/
{% endhighlight %}

<br />


{% page_header id="add-postgresql-to-app" title="PostgreSQL и PHP" %}

    $ app cartridge add postgresql-8.4 -a myphpapp

{% note info, Относно аргумента '-a myphpapp' %}
Ако се намирате в директорията на приложението си, можете да пропускате аргумента '-a appname'!

Което означава, че ако се намирате в HOME директорията си трябва да използвате следния синтаксис:

    $ app cartridge add postgresql-8.4 -a <име-на-приложението>

Ако обаче се намирате в директорията на вашето приложение:

    cd /path/to/myphpapp
    app cartridge add postgresql-8.4

{%endnote%}

{% highlight sh %}

Adding postgresql-8.4 to application 'myphpapp' ... done

postgresql-8.4 (PostgreSQL 8.4)
-------------------------------
  Gears:          Located with php-5.3
  Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
  Database Name:  myphpapp
  Password:       jBeeIbXSTGsw
  Username:       adminfj66lmx

PostgreSQL 8.4 database added.  Please make note of these credentials:

   Root User: adminfj66lmx
   Root Password: jBeeIbXSTGsw
   Database Name: myphpapp

Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
{% endhighlight %}


Със добавянето на PostgreSQL към вашето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/postgresql.html %}

{% page_header id="how-to-access-postgresql-via-php" title="Достъпване на PostgreSQL през PHP" %}

Ако се чудите за какво бяха тези PostgreSQL ENV променливи, които показхме отгоре и как можете да използвате във вашия PHP код, ето един прост пример как да се закачите за вашия чисто нов PostgreSQL сървър.

{% highlight php %}
<?php

/* Можете да достъпвате ENV променливите по няколко начина
 * Пример с getenv()
 * $hostname = getenv('OPENSHIFT_POSTGRESQL_DB_HOST');
 *
 * Или можете да използвате глобалните променливи в PHP ($_SERVER or $_ENV)
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

<br />


{% page_header id="how-to-access-postgresql-via-ssh" title="Достъпване на PostgreSQL през SSH" %}

Първо трябва да се логнем на сървъра по SSH. Това става много лесно. Само изпълнете следната команда:

    $ app ssh -a myphpapp

След като се логнете на сървъра напишете:

    $ psql

И като резултат ще видите, това:

    psql (8.4.18)
    Type "help" for help.

    myphpapp=# help
    You are using psql, the command-line interface to PostgreSQL.
    Type:  \copyright for distribution terms
           \h for help with SQL commands
           \? for help with psql commands
           \g or terminate with semicolon to execute query
           \q to quit
    myphpapp=#

Което означава, че вие сте в интерактивната конзола на PostgreSQL!

<br />



{% page_header id="how-to-access-postgresql-via-devpc" title="Достъпване на PostgreSQL. през работната ви машина/лаптоп" %}

    $ app port-forward -a myphpapp

Като резултат от тази команда ще видите следното:

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

Ако погледнете на последния ред пише следното:

    postgresql 127.0.0.1:5432   =>  127.12.225.133:5432

Което означава, че можете да достъпвате MySQL сървъра, който работи на Startapp.bg локалната си машина. Ето как:

    $ psql -h 127.0.0.1 -p 5432 -U <username> -W <database>

След като изпълните тази команда, PostgreSQL ще поиска да си напишете вашата парола:

  Password for user <username>:

Напишете паролата си и натиснете `ENTER`.

Ако сте забравили вашите `username` и `password` можете да ги видите така:

    $ app show myphpapp

<br />

<br />

{% page_header id="add-mongo-to-app" title="MongoDB и PHP" %}

    $ app cartridge add mongodb-2.2 -a myphpapp

{% note info, Относно аргумента '-a myphpapp' %}
Ако се намирате в директорията на приложението си, можете да пропускате аргумента '-a appname'!

Което означава, че ако се намирате в HOME директорията си трябва да използвате следния синтаксис:

    $ app cartridge add mongodb-2.2 -a <име-на-приложението>

Ако обаче се намирате в директорията на вашето приложение:

    cd /path/to/myphpapp
    app cartridge add mongodb-2.2

{%endnote%}

{% highlight sh %}

Adding mongodb-2.2 to application 'myphpapp' ... done

mongodb-2.2 (MongoDB 2.2)
-------------------------
  Gears:          Located with php-5.3
  Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
  Database Name:  myphpapp
  Password:       jgSb9c7sGcMi
  Username:       admin

MongoDB 2.2 database added.  Please make note of these credentials:

   Root User:     admin
   Root Password: jgSb9c7sGcMi
   Database Name: myphpapp

Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
{% endhighlight %}

Със добавянето на MongoDB към вашето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/mongodb.html %}

{% page_header id="how-to-access-mongodb-via-php" title="Достъпване на MongoDB през PHP" %}

Ако се чудите за какво бяха тези MongoDB ENV променливи, които показхме отгоре и как можете да използвате във вашия PHP код, ето един прост пример как да се закачите за вашия чисто нов MongoDB сървър.

{% highlight php %}
<?php

/* Можете да достъпвате ENV променливите по няколко начина
 * Пример с getenv()
 * $hostname = getenv('OPENSHIFT_MONGODB_DB_HOST');
 *
 * Или можете да използвате глобалните променливи в PHP ($_SERVER or $_ENV)
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
// Ако вашето приложение се казва myphpapp, тогава трябва да заместите <app-name> с myphpapp
$database = $mongo->$db_name;

?>
{% endhighlight %}

<br />

{% page_header id="how-to-access-mongodb-via-ssh" title="Достъпване на MongoDB през SSH" %}

Първо трябва да се логнем на сървъра по SSH. Това става много лесно. Само изпълнете следната команда:

    $ app ssh -a myphpapp

След като се логнете на сървъра напишете:

    $ mongo

И като резултат ще видите, това:

    MongoDB shell version: 2.4.6
    connecting to: 127.12.225.132:27017/admin
    Welcome to the MongoDB shell.
    For interactive help, type "help".
    For more comprehensive documentation, see
      http://docs.mongodb.org/
    Questions? Try the support group
      http://groups.google.com/group/mongodb-user
    >

Което означава, че вие сте в интерактивната конзола на MongoDB!

<br />

{% page_header id="how-to-access-mongodb-via-devpc" title="Достъпване на MongoDB през работната ви машина/лаптоп" %}

    $ app port-forward -a myphpapp

Като резултат от тази команда ще видите следното:

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

Ако погледнете на последния ред пише следното:

    mongodb 127.0.0.1:27017  =>  127.12.225.132:27017

Което означава, че можете да достъпвате MongoDB сървъра, който работи на Startapp.bg локалната си машина. Ето как:

    $ mongo 127.0.0.1:27017/<database> --username <username> --password <password>

Ако сте забравили вашите `username` и `password` можете да ги видите така:

    $ app show myphpapp


<br />

{% page_header id="create-codeigniter-app" title="Инсталиране на Codeigniter" %}


Благодарение на **Startapp Quickstarts** можете да инсталирате Codeigniter само с една команда:

    app create myciapp codeigniter

Тази команда, автоматично ще инсталира Codeigniter, също така ще създаде автоматично MySQL база данни за вас.

#### Подробна информация за инсталиране и конфигуриране на Codeigniter [можете да получите тук](#)


<br />

{% page_header id="create-cakephp-app" title="Инсталиране на CakePHP" %}

Благодарение на **Startapp Quickstarts** можете да инсталирате CakePHP само с една команда:

    app create mycakeapp cakephp

Тази команда, автоматично ще инсталира CakePHP, също така ще създаде автоматично MySQL база данни за вас.

#### Подробна информация за инсталиране и конфигуриране на CakePHP [можете да получите тук](#)


<br />

{% page_header id="add-composer" title="Добавяне на Composer" %}

За да можете да изпозлвате Composer на Startapp, трябва да направите следното:

Влезте във директорията на проекта си:

    $ cd /път/до/myphpapp/

Изпълнете следния код (copy/paste) и натиснете `ENTER`:

{% highlight sh %}
cat > .openshift/action_hooks/deploy << "EOF"
#!/bin/bash
# This deploy hook gets executed after dependencies are resolved and the
# build hook has been run but before the application has been started back
# up again.  This script gets executed directly, so it could be python, php,
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

Този скрипт ни направи нов файл `.openshift/action_hooks/deploy`, който се изпълнява вски път след като push-вате промени към сървъра.

За да заработи този скрипт трябва да го направим изпълним:

    chmod +x .openshift/action_hooks/deploy

Остана да го добавим в `Git` и да го качин на сървъра:

    git add .openshift/action_hooks/deploy
    git commit -am "Enable Composer"
    git push

Сега вече Comsposer е инсталиран!

### Добавяне на composer.json

За да инсталирате пакети с Comsposer е необходимо да създадете `composer.json` файл тук `/път/до/myphpapp/composer.json` и да опишете, кои пакети искате да ви бъдат инсталирани.

Създаваме `composer.json`

    cd /път/до/myphpapp/
    cat <<EOF> composer.json
    {
        "require": {
            "monolog/monolog": "1.0.*"
        }
    }
    EOF

Добавяме го в `Git`

    git add composer.json
    git commit -am "Add composer.json"

Качваме го на сървъра

    git push

Това е! Приятна работа с Composer!

{% include help/php.html %}