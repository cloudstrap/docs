---
layout: document

title:  "PHP приложения в Startapp"
date:   2013-11-25 16:58:04
header_title:  '> app create &lt;app&gt; with php'
lead: "За PHP любознайковци! Дисекция на PHP приложенията в <strong>Startapp.bg</strong> Сloud"
slug: startapp-with-php
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% page_header id="quickstart-php" title="Стартиране с PHP" %}

{% include customer-requirements.html %}

{% section id="create-php-app-in-details" title="Създаване на ново PHP приложение" %}

Създаването на `php` приложения в Startapp е изключително лесно и в повечето случаи е само с 1 ред код:

    $ app create myphpapp php

{% note info, Относно myphpapp! %}
Ако се чудиш дали това `myphpapp` е нещо вълшебно, отговорът е НЕ. Това е името на твоето ново приложение :) Което значи, че синтаксисът е следният:

    $ app create <име-на-приложението> <език>

Това означава също, че навсякъде в примера където използваме `myphpapp` имай предвид, че там стои името на твоето приложение.

{%endnote%}

След като напишеш тази команда на екрана ти ще се изпише нещо такова:

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
    retry # 1 - Waiting for DNS: myphpapp-demos.sapp.io
    retry # 2 - Waiting for DNS: myphpapp-demos.sapp.io
    retry # 3 - Waiting for DNS: myphpapp-demos.sapp.io
    retry # 4 - Waiting for DNS: myphpapp-demos.sapp.io
done

Cloning into 'myphpapp'...
The authenticity of host 'myphpapp-demos.sapp.io (93.123.32.34)' can't be established.
RSA key fingerprint is e2:4c:39:1a:d1:d1:1c:cc:66:2a:bf:43:42:56:c4:26.
Are you sure you want to continue connecting (yes/no)?
{% endhighlight %}

Последните няколко реда казват, че твоето приложение е създадено и готово за клониране на твоя компютър.

Ако искаш да го клонираш напиши:

    yes

и натисни `ENTER`.

Ако си направил това на екрана ти ще бъдат изписани следните неща:

{% highlight sh %}
Warning: Permanently added 'myphpapp-demos.sapp.io' (RSA) to the list of known hosts.
Checking connectivity... done

Your application 'myphpapp' is now available.

  URL:        http://myphpapp-demos.sapp.io/
  SSH to:     52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io
  Git remote: ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io/~/git/myphpapp.git/
  Cloned to:  /private/tmp/myphpapp

Run 'app show-app myphpapp' for more details about your app.
{% endhighlight %}

---

### Отваряне в браузъра

За да видиш твоя сайт, отвори с браузър URL-то, което е изписано след `URL:` в горния пример. В нашия случай то е:

    http://myphpapp-demos.sapp.io/

---

### SSH достъп

Всички приложения в Startapp.bg идват с SSH достъп. За да се логнеш на сървъра през SSH, използвай адреса, изписан след `SSH to:`. В този пример той е :

    ssh 52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io

{% note warning, Внимание! %}
Този пример е валиден за Mac OS и Linux. За Windows е нужно инсталиране на [Putty](/getting-started/using-putty-examples.html). За информация как да инсталираш и използваш [Putty](/getting-started/using-putty-examples.html), разгледай [примера тук](/getting-started/using-putty-examples.html)
{% endnote %}

---

### Git хранилище

Всяко приложение в Startapp.bg се съхранява в отделно Git хранилище. Адресът на хранилището на твоето приложение се вижда веднага след "Git remote:". Което в този конкретен случай е :

    ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io/~/git/myphpapp.git/

Което означава, че ако искаш да клонираш твоето приложение / сайт някъде другаде, а не там където го е направило автоматично startapp tools, трябва да изпълниш следните команди:

    cd /path/to/my/working/dir
    git clone ssh://52debd81bfbf5aa4ca000482@myphpapp-demos.sapp.io/~/git/myphpapp.git/

Това е!

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли как да създадеш първото си PHP приложение?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div>
 -->
{% endsection %}


{% section id="file-structure" title="Файлова структура на PHP приложението" %}

След създаване и клонране на твоето PHP приложение ще видиш следните файлове и директории:

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
          <td>Това е document root-а на приложението. Твоят код трябва да бъде тук.</td>
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
          <td>Място за PHP код, който не е достъпен от крайни потребители</td>
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
          <td>Директория за специфични скриптове. Може и никога да не ти се наложи да пипаш в нея, но тя е задължителна.</td>
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
          <td>Това е локалното ти Git хранилище. <br /><b>Важно: </b>Не го изтривай, ако искаш приложението ти да работи.</td>
        </tr>



      </tbody>
    </table>
  </div>

{% note warning, Важно! %}
Startapp търси в директориите `php` и `libs`, когато сервира твоето приложение на клиентите. Файлът **index.php** (който се намира в директория **php**) ще поеме всички requests от root URL-а на твоето приложение. За по-добра организация, създай и други директории, ако се налага :).
{% endnote %}

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли кой файл за какво се ползва?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% endsection %}


{% section id="make-code-changes" title="Как да правим промени по кода?" %}

Файлът който трябва да промерниш е `index.php` и се намира тук:

    $ cd /път/до/myphpapp/php/

Можеш да го редактираш с предпочитан от теб текстов редактор или през командния ред, както е в този пример.

След като се намираш вече в `/път/до/myphpapp/php/`, трябва да изпълниш следния код:

    echo 'Hello Wolrd!' > index.php

За да провериш дали успешно е променен `index.php`, изпълни следната команда:

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

Браво! Трудната част мина успешно :) Сега остана само да запишеш промените в `Git` и да ги качиш на сървъра:

    git commit -am "Change content of index.php"

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Успя ли да направиш първата си промяна?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% endsection %}


{% section id="deployment" title="Качване на сървъра" %}

Качваме промените, които сме направили със следната команда:

    git push

Резултатът от `git push` трябва да е нещо подобно на това:

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

Това е! Можете да отвориш URL на приложението си и да се насладиш на промените, които току що направи :)

{% note info, За любопитните! %}
За по-любитните от вас, на които прави впечатление след като написахте `git push` се случиха няколко интересни неща:

- Stopping PHP cartridge
- Activating deployment
- Starting PHP cartridge

Това е нормалното поведение на всеки един deploy процес в Startapp. Хубавото обаче, е че това част от поведението на deployment процеса и начина по-който работи твоето проложение може да бъде променяно! Това става благодарение на така наречените **Маркери**, за които можеш да намериш информация малко по-долу!
{% endnote %}

{% endsection %}


{% include markers.html slug=page.slug %}

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли за какво се използват Маркерите?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% section id="add-mysql-to-app" title="Добавяне на MySQL към PHP приложение" %}

    $ app cartridge add mysql-5.1 -a myphpapp

{% note info, Относно аргумента '-a myphpapp' %}
Ако се намираш в директорията на приложението си, може да пропускаш аргумента '-a appname'!

Което означава, че ако се намираш в HOME директорията си трябва да използваш следния синтаксис:

    $ app cartridge add mysql-5.1 -a <име-на-приложението>

Ако обаче се намираш в директорията на твоето приложение:

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

Със добавянето на MySQL към твоето приложение, също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/mysql.html %}
{% endsection %}

{% section id="how-to-access-mysql-via-php" title="Достъпване на МySQL през PHP" %}

Ако се чудиш за какво бяха тези MySQL ENV променливи горе и как може да ги използваш в твоя PHP код, ето един прост пример как да се закачиш за твоя чисто нов MySQL сървър.

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

Първо трябва да се логнеш на сървъра по SSH. Това става много лесно. Само изпълни следната команда:

    $ app ssh -a myphpapp

След като се логнеш на сървъра напиши:

    $ mysql

И като резултат ще видиш, това:

    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 3
    Server version: 5.1.71 Source distribution

    Copyright (c) 2000, 2013, Oracle and/or its affiliates. All rights reserved.

    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql>

Което означава, че си в интерактивната конзола на MySQL!

{% endsection %}

{% section id="how-to-access-mysql-via-devpc" title="Достъпване на МySQL през работната ви машина/лаптоп" %}

    $ app port-forward -a myphpapp

Като резултат от тази команда ще видиш следното:

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

Ако погледнеш на последния ред пише следното:

    mysql   127.0.0.1:3306  =>  127.12.225.130:3306

Което означава, че можете да достъпваш MySQL сървъра, който работи на Startapp.bg от локалната си машина. Ето как:

    $ mysql -h 127.0.0.1 -P 3306 -u<username> -p<password>

Ако си забравил твоите `username` и `password`, може да ги видиш така:

    $ app show myphpapp

{% endsection %}

{% section id="add-phpmyadmin-to-app" title="Добавяне на phpMyAdmin към PHP приложение" %}

    $ app cartridge add phpmyadmin -a myphpapp

{% highlight sh %}
Using phpmyadmin-4 (phpMyAdmin 4.0) for 'phpmyadmin'
Adding phpmyadmin-4 to application 'myphpapp' ... done

phpmyadmin-4 (phpMyAdmin 4.0)
-----------------------------
  Gears:          Located with php-5.3, mysql-5.1
  Connection URL: https://myphpapp-demos.sapp.io/phpmyadmin/

Please make note of these MySQL credentials again:
  Root User: adminH3N4yWf
  Root Password: 7nxXBwI9aV_m
URL: https://myphpapp-demos.sapp.io/phpmyadmin/
{% endhighlight %}

{% endsection %}


{% section id="add-postgresql-to-app" title="PostgreSQL и PHP" %}

    $ app cartridge add postgresql-8.4 -a myphpapp

{% note info, Относно аргумента '-a myphpapp' %}
Ако се намираш в директорията на приложението си, може да пропускаш аргумента '-a appname'!

Което означава, че ако се намираш в HOME директорията си трябва да използваш следния синтаксис:

    $ app cartridge add postgresql-8.4 -a <име-на-приложението>

Ако обаче се намираш в директорията на твоето приложение:

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


Със добавянето на PostgreSQL към твоето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/postgresql.html %}
{% endsection %}

{% section id="how-to-access-postgresql-via-php" title="Достъпване на PostgreSQL през PHP" %}

Ако се чудиш за какво бяха тези PostgreSQL ENV променливи, които показхме отгоре, и как можете да ги използваш във вашия PHP код, ето един прост пример как да се закачиш за твоя чисто нов PostgreSQL сървър.

{% highlight php %}
<?php

/* Може да достъпваш ENV променливите по няколко начина
 * Пример с getenv()
 * $hostname = getenv('OPENSHIFT_POSTGRESQL_DB_HOST');
 *
 * Или можеш да използваш глобалните променливи в PHP ($_SERVER or $_ENV)
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

Първо трябва да се логнеш на сървъра по SSH. Това става много лесно. Само изпълни следната команда:

    $ app ssh -a myphpapp

След като се логнеш на сървъра напиши:

    $ psql

И като резултат ще видиш, това:

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

Което означава, че си в интерактивната конзола на PostgreSQL!

{% endsection %}



{% section id="how-to-access-postgresql-via-devpc" title="Достъпване на PostgreSQL. през работната ви машина/лаптоп" %}

    $ app port-forward -a myphpapp

Като резултат от тази команда ще видиш следното:

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

След като изпълниш тази команда, PostgreSQL ще поиска да си напишеш твоята парола:

  Password for user <username>:

Напиши паролата си и натисни `ENTER`.

Ако си забравил твоите `username` и `password` може да ги видиш така:

    $ app show myphpapp

{% endsection %}

{% section id="add-mongo-to-app" title="MongoDB и PHP" %}

    $ app cartridge add mongodb-2.2 -a myphpapp

{% note info, Относно аргумента '-a myphpapp' %}
Ако се намираш в директорията на приложението си, може да пропускаш аргумента '-a appname'!

Което означава, че ако се намираш в HOME директорията си трябва да използваш следния синтаксис:

    $ app cartridge add mongodb-2.2 -a <име-на-приложението>

Ако обаче се намираш в директорията на твоето приложение:

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

Със добавянето на MongoDB към твоето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/mongodb.html %}

{% endsection %}

{% section id="how-to-access-mongodb-via-php" title="Достъпване на MongoDB през PHP" %}

Ако се чудиш за какво бяха тези MongoDB ENV променливи, които показахме отгоре и как може да се използват във вашия PHP код, ето един прост пример как да се закачиш за твоя чисто нов MongoDB сървър.

{% highlight php %}
<?php

/* Може да достъпваш ENV променливите по няколко начина
 * Пример с getenv()
 * $hostname = getenv('OPENSHIFT_MONGODB_DB_HOST');
 *
 * Или може да използваш глобалните променливи в PHP ($_SERVER or $_ENV)
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
// Ако твоето приложение се казва myphpapp, тогава трябва да заместиш <app-name> с myphpapp
$database = $mongo->$db_name;

?>
{% endhighlight %}

{% endsection %}

{% section id="how-to-access-mongodb-via-ssh" title="Достъпване на MongoDB през SSH" %}

Първо трябва да се логнеш на сървъра по SSH. Това става много лесно. Само изпълни следната команда:

    $ app ssh -a myphpapp

След като се логнеш на сървъра напиши:

    $ mongo

И като резултат ще видиш, това:

    MongoDB shell version: 2.4.6
    connecting to: 127.12.225.132:27017/admin
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

    $ app port-forward -a myphpapp

Като резултат от тази команда ще видиш следното:

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

Ако погледнеш на последния ред пише следното:

    mongodb 127.0.0.1:27017  =>  127.12.225.132:27017

Което означава, че може да достъпваш MongoDB сървъра, който работи на Startapp.bg от локалната си машина. Ето как:

    $ mongo 127.0.0.1:27017/<database> --username <username> --password <password>

Ако си забравил твоите `username` и `password` може да ги видиш така:

    $ app show myphpapp


{% endsection %}

{% section id="create-codeigniter-app" title="Инсталиране на Codeigniter" %}


Благодарение на **Startapp Quickstarts** може да инсталираш Codeigniter само с една команда:

    app create myciapp codeigniter

Тази команда, автоматично ще инсталира Codeigniter, също така ще създаде автоматично MySQL база данни за теб.

#### Подробна информация за инсталиране и конфигуриране на Codeigniter [може да получиш тук](#)


{% endsection %}

{% section id="create-cakephp-app" title="Инсталиране на CakePHP" %}

Благодарение на **Startapp Quickstarts** може да инсталираш CakePHP само с една команда:

    app create mycakeapp cakephp

Тази команда, автоматично ще инсталира CakePHP, също така ще създаде автоматично MySQL база данни за теб.

#### Подробна информация за инсталиране и конфигуриране на CakePHP [може да получиш тук](#)

{% endsection %}


{% section id="add-composer" title="Добавяне на Composer" %}

За да може да изпозлваш Composer на Startapp, трябва да направиш следното:

Влез в директорията на проекта си:

    $ cd /път/до/myphpapp/

Изпълни следния код (copy/paste) и натисни `ENTER`:

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

Този скрипт ти направи нов файл `.openshift/action_hooks/deploy`, който се изпълнява вски път след като push-ваш промени към сървъра.

За да заработи този скрипт трябва да го направиш изпълним:

    chmod +x .openshift/action_hooks/deploy

Остана да го добавиш в `Git` и да го качиш на сървъра:

    git add .openshift/action_hooks/deploy
    git commit -am "Enable Composer"
    git push

Сега вече Comsposer е инсталиран!

### Добавяне на composer.json

За да инсталираш пакети с Comsposer е необходимо да създадеш `composer.json` файл тук `/път/до/myphpapp/composer.json` и да опишеш кои пакети искаш да ти бъдат инсталирани.

Създаваме `composer.json`

    cd /път/до/myphpapp/
    cat <<EOF> composer.json
    {
        "require": {
            "monolog/monolog": "1.0.*"
        }
    }
    EOF

Добавяш го в `Git`

    git add composer.json
    git commit -am "Add composer.json"

Качваш го на сървъра

    git push

Това е! Приятна работа с Composer!

{% endsection %}

{% include help/php.html %}
