---
layout: document

title:  "NodeJS приложения в Startapp.bg NodeJS хостинг."
date:   2014-03-01 18:58:04
header_title:  '> app create &lt;app&gt; with nodejs'
lead: "За любознателни JavaScript машини! Създаване на NodeJS приложения в <strong>Startapp</strong>  Сloud"
slug: startapp-with-nodejs
keywords: "хостинг, nodejs хостинг, nodejs mongodb, nodejs mysql, nodejs framework, nodejs приложения, nodejs"
description: ""
noToc: true
---

{% page_header id="quickstart" title="Стартиране с NodeJS" %}

{% include customer-requirements.html %}

{% section id="create-app-in-details" title="Създаване на ново NodeJS приложение" %}

Създаването на `nodejs` приложения в Startapp е изключително лесно и в повечето случаи е само с 1 ред код:

    $ app create mynodejsapp nodejs-0.10

{% note info, Относно mynodejsapp! %}
Ако се чудите дали това `mynodejsapp` е нещо вълшебно, отговорът е НЕ това е просто името на на нашето ново приложение :) Което означава, че синтаксисът е следния:

    $ app create <име-на-приложението> <език>

Това означава също, че навсякъде в примера където използваме `mynodejsapp` имайте предвид, че там стои името на вашето приложение.

{%endnote%}

След като напишете тази команда на екрана ви ще се изпише нещо такова:

{% highlight sh %}
Application Options
-------------------
Domain:     apps
Cartridges: nodejs-0.10
Gear Size:  default
Scaling:    no

Creating application 'mynodejsapp' ... done


Waiting for your DNS name to be available ... done

Cloning into 'mynodejsapp'...
The authenticity of host 'mynodejsapp-apps.startapp.bg (93.123.32.34)' can't be established.
RSA key fingerprint is e2:4c:39:1a:d1:d1:1c:cc:66:2a:bf:43:42:56:c4:26.
Are you sure you want to continue connecting (yes/no)?
{% endhighlight %}

Последните няколко реда ви казват, вашето приложение е създадено и е готово да бъде клонирано на вашата вашия компютър.

Ако искате да го клонирате напишете:

    yes

и натиснете `ENTER`.

Ако сте направили това на екрана ви ще бъдат изписани следните неща:

{% highlight sh %}
Warning: Permanently added 'mynodejsapp-apps.startapp.bg' (RSA) to the list of known hosts.
Checking connectivity... done

Your application 'mynodejsapp' is now available.

  URL:        http://mynodejsapp-apps.startapp.bg/
  SSH to:     5313bc74bfbf5a097a000163@mynodejsapp-apps.startapp.bg
  Git remote: ssh://5313bc74bfbf5a097a000163@mynodejsapp-apps.startapp.bg/~/git/mynodejsapp.git/
  Cloned to:  /private/tmp/mynodejsapp

Run 'app show-app mynodejsapp' for more details about your app.
{% endhighlight %}

---

### Отваряне в браузъра

За да видите вашия сайт отворете с браузър URL-то което по-горе е изписано след `URL:`, в нашия случай:

    http://mynodejsapp-demos.startapp.bg/

---

### SSH достъп

Всички приложения в Startapp.bg идват с SSH достъп. За да се логнете на сървъра през SSH използвайте адреса изписан след `SSH to:` в този пример той е :

    ssh 5313bc74bfbf5a097a000163@mynodejsapp-apps.startapp.bg

{% note warning, Внимание! %}
Този пример е валиден за Mac OS и Linux. Ако използвате Windows трябва да имате инсталирано [Putty](/getting-started/using-putty-examples.html). Ако не знаете как да инсталирате и използвате [Putty](/getting-started/using-putty-examples.html), можете да разгледате [примера тук](/getting-started/using-putty-examples.html)
{% endnote %}

---

### Git хранилище

Всяко приложение в Startapp.bg се съхранява в отделно Git хранилище. Адресът на хранилището на вашето приложение може да го видите веднага след "Git remote:", което в този конкретен случай е :

    ssh://5313bc74bfbf5a097a000163@mynodejsapp-apps.startapp.bg/~/git/mynodejsapp.git/

Което означава, че ако иксаме да клонираме нашето приложение/сайт някъде другаде а не там където го е направило автоматично startapp tools, трябва само да изпълним следните команди:

    cd /path/to/my/working/dir
    git clone ssh://5313bc74bfbf5a097a000163@mynodejsapp-apps.startapp.bg/~/git/mynodejsapp.git/

Това е!

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли как да създадеш първото си PHP приложение?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div>
 -->
{% endsection %}


{% section id="file-structure" title="Файлова структура на NodeJS приложението" %}

След като създадете вашето ново NodeJS приложение и го клонирате на компютъра си, ще видите следните файлове и директории.

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
            <code>node_modules/</code>
          </td>
          <td>Всички Node модулу и тяхните dependencies. В нея можеш да добавяш и своите custom модули. <b>Важно: не я изтривай, не я преименувай.</b></td>
        </tr>

        <tr>
          <td>
            <code>server.js</code>
          </td>
          <td>Това е файлът, чрез който Startapp ще стартира твоето приложение.</td>
        </tr>

        <tr>
          <td>
            <code>package.json</code>
          </td>
          <td>Това е файлът в който описване вашие dependencies.</td>
        </tr>

        <tr>
          <td>
            <code>deplist.txt</code>
          </td>
          <td>Deprecated.</td>
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
Моля не пипай директориите node_modules и .openshift. Разбира се може да си създавате и други директории, ако желате, с цел по-добра огранизация на вашето приложение или поради друга ваша причина.
{% endnote %}

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли кой файл за какво се ползва?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% endsection %}


{% section id="make-code-changes" title="Как да правим промени по кода?" %}

Във всяко едно ново NodeJS приложение има по един `index.html` файл. Той се използва от `server.js` като темплейтен файл за може лесно да каже "Hello World":

    $ cd /път/до/mynodejsapp/

Можете да го редактирате с предпочитан от вас текстов редактор или през командния ред както е в този пример.

След като се намираме вече в `/път/до/mynodejsapp/` трябва да изпълним следния код:

    echo 'Hello Wolrd!' > index.html

За да проверим дали сме променили успешно `index.html` файла изпълняваме следната команда:

    git status

Ако всичко е минало нормално, резултатът от тази команда трябва да е нещо подобно на това:

    # On branch master
    # Changes not staged for commit:
    #   (use "git add <file>..." to update what will be committed)
    #   (use "git checkout -- <file>..." to discard changes in working directory)
    #
    # modified:   index.html
    #
    no changes added to commit (use "git add" and/or "git commit -a")

Браво! Трудната част мина успешно :) Сега остана само да запишем промените в `Git` и да ги качим на сървъра:

    git commit -am "Change content of index.html"

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Успя ли да направиш първата си промяна?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% endsection %}


{% section id="deployment" title="Качване на сървъра" %}

Качваме промените, които сме направили със следната команда:

    git push

Резултатът от `git push` трябва да е нещо подобно на това:

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
    To ssh://5313bc74bfbf5a097a000163@mynodejsapp-apps.startapp.bg/~/git/mynodejsapp.git/
       8ed094d..ed321be  master -> master

Това е! Можете да отворите URL на приложението си и да се насладите на промените, които току що направихте :)

{% note info, За любопитните! %}
За по-любитните от вас, на които прави впечатление след като написахте `git push` се случиха няколко интересни неща:

- remote: Stopping NodeJS cartridge
- Activating deployment
- Starting NodeJS cartridge

Това е нормалното поведение на всеки един deploy процес в Startapp. Хубавото обаче, че това част от поведението на deployment процеса и начина по-който работи вашето проложение може да бъде променяно! Това става благодарение на така наречените **Маркери**, за които можете да намерите информация малко по-долу!
{% endnote %}

{% endsection %}


{% include markers.html slug=page.slug %}

<!-- <div class="well well-startapp well-sm" style="margin-top: 20px;"><h4>Разбра ли за какво се използват Маркерите?
  <a href=""><span class="label label-success">Да</span></a>
  <a href=""><span class="label label-danger">Не</span></a>
</h4></div> -->

{% section id="add-mysql-to-app" title="Добавяне на MySQL към NodeJS приложение" %}

    $ app cartridge add mysql-5.1 -a mynodejsapp

{% note info, Относно аргумента '-a mynodejsapp' %}
Ако се намирате в директорията на приложението си, можете да пропускате аргумента '-a appname'!

Което означава, че ако се намирате в HOME директорията си трябва да използвате следния синтаксис:

    $ app cartridge add mysql-5.1 -a <име-на-приложението>

Ако обаче се намирате в директорията на вашето приложение:

    cd /path/to/mynodejsapp
    app cartridge add mysql-5.1

{%endnote%}

{% highlight sh %}
Adding mysql-5.1 to application 'mynodejsapp' ... done

mysql-5.1 (MySQL 5.1)
---------------------
  Gears:          Located with php-5.3
  Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/
  Database Name:  mynodejsapp
  Password:       gBq1wGX1sKAi
  Username:       adminrWaKHZ3

MySQL 5.1 database added.  Please make note of these credentials:

       Root User: adminrWaKHZ3
   Root Password: gBq1wGX1sKAi
   Database Name: mynodejsapp

Connection URL: mysql://$OPENSHIFT_MYSQL_DB_HOST:$OPENSHIFT_MYSQL_DB_PORT/

You can manage your new MySQL database by also embedding phpmyadmin.
The phpmyadmin username and password will be the same as the MySQL credentials above.
{% endhighlight %}

Със добавянето на MySQL към вашето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/mysql.html %}
{% endsection %}

{% section id="how-to-access-mysql-via-nodejs" title="Достъпване на МySQL през NodeJS" %}

Ако се чудите за какво бяха тези MySQL ENV променливи, които показхме отгоре и как можете да използвате във вашия код, ето един прост пример как да се закачите за вашия чисто нов MySQL сървър.

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

{% endsection %}

{% section id="how-to-access-mysql-via-ssh" title="Достъпване на МySQL през SSH" %}

Първо трябва да се логнем на сървъра по SSH. Това става много лесно. Само изпълнете следната команда:

    $ app ssh -a mynodejsapp

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

{% endsection %}

{% section id="how-to-access-mysql-via-devpc" title="Достъпване на МySQL през работната ви машина/лаптоп" %}

    $ app port-forward -a mynodejsapp

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

    $ app show mynodejsapp

{% endsection %}

{% section id="add-phpmyadmin-to-app" title="Добавяне на phpMyAdmin към PHP приложение" %}

    $ app cartridge add phpmyadmin -a mynodejsapp

{% highlight sh %}
Using phpmyadmin-4 (phpMyAdmin 4.0) for 'phpmyadmin'
Adding phpmyadmin-4 to application 'mynodejsapp' ... done

phpmyadmin-4 (phpMyAdmin 4.0)
-----------------------------
  Gears:          Located with php-5.3, mysql-5.1
  Connection URL: https://mynodejsapp-apps.startapp.bg/phpmyadmin/

Please make note of these MySQL credentials again:
  Root User: adminH3N4yWf
  Root Password: 7nxXBwI9aV_m
URL: https://mynodejsapp-apps.startapp.bg/phpmyadmin/
{% endhighlight %}

{% endsection %}


{% section id="add-postgresql-to-app" title="PostgreSQL и NodeJS" %}

    $ app cartridge add postgresql-8.4 -a mynodejsapp

{% note info, Относно аргумента '-a mynodejsapp' %}
Ако се намирате в директорията на приложението си, можете да пропускате аргумента '-a appname'!

Което означава, че ако се намирате в HOME директорията си трябва да използвате следния синтаксис:

    $ app cartridge add postgresql-8.4 -a <име-на-приложението>

Ако обаче се намирате в директорията на вашето приложение:

    cd /path/to/mynodejsapp
    app cartridge add postgresql-8.4

{%endnote%}

{% highlight sh %}

Adding postgresql-8.4 to application 'mynodejsapp' ... done

postgresql-8.4 (PostgreSQL 8.4)
-------------------------------
  Gears:          Located with php-5.3
  Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
  Database Name:  mynodejsapp
  Password:       jBeeIbXSTGsw
  Username:       adminfj66lmx

PostgreSQL 8.4 database added.  Please make note of these credentials:

   Root User: adminfj66lmx
   Root Password: jBeeIbXSTGsw
   Database Name: mynodejsapp

Connection URL: postgresql://$OPENSHIFT_POSTGRESQL_DB_HOST:$OPENSHIFT_POSTGRESQL_DB_PORT
{% endhighlight %}


Със добавянето на PostgreSQL към вашето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/postgresql.html %}
{% endsection %}

{% section id="how-to-access-postgresql-via-nodejs" title="Достъпване на PostgreSQL през NodeJS" %}

Ако се чудите за какво бяха тези PostgreSQL ENV променливи, които показхме отгоре и как можете да използвате във вашия код, ето един прост пример как да се закачите за вашия чисто нов PostgreSQL сървър.

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

{% endsection %}


{% section header id="how-to-access-postgresql-via-ssh" title="Достъпване на PostgreSQL през SSH" %}

Първо трябва да се логнем на сървъра по SSH. Това става много лесно. Само изпълнете следната команда:

    $ app ssh -a mynodejsapp

След като се логнете на сървъра напишете:

    $ psql

И като резултат ще видите, това:

    psql (8.4.18)
    Type "help" for help.

    mynodejsapp=# help
    You are using psql, the command-line interface to PostgreSQL.
    Type:  \copyright for distribution terms
           \h for help with SQL commands
           \? for help with psql commands
           \g or terminate with semicolon to execute query
           \q to quit
    mynodejsapp=#

Което означава, че вие сте в интерактивната конзола на PostgreSQL!

{% endsection %}



{% section id="how-to-access-postgresql-via-devpc" title="Достъпване на PostgreSQL. през работната ви машина/лаптоп" %}

    $ app port-forward -a mynodejsapp

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

    $ app show mynodejsapp

{% endsection %}

{% section id="add-mongo-to-app" title="MongoDB и NodeJS" %}

    $ app cartridge add mongodb-2.2 -a mynodejsapp

{% note info, Относно аргумента '-a mynodejsapp' %}
Ако се намирате в директорията на приложението си, можете да пропускате аргумента '-a appname'!

Което означава, че ако се намирате в HOME директорията си трябва да използвате следния синтаксис:

    $ app cartridge add mongodb-2.2 -a <име-на-приложението>

Ако обаче се намирате в директорията на вашето приложение:

    cd /path/to/mynodejsapp
    app cartridge add mongodb-2.2

{%endnote%}

{% highlight sh %}

Adding mongodb-2.2 to application 'mynodejsapp' ... done

mongodb-2.2 (MongoDB 2.2)
-------------------------
  Gears:          Located with php-5.3
  Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
  Database Name:  mynodejsapp
  Password:       jgSb9c7sGcMi
  Username:       admin

MongoDB 2.2 database added.  Please make note of these credentials:

   Root User:     admin
   Root Password: jgSb9c7sGcMi
   Database Name: mynodejsapp

Connection URL: mongodb://$OPENSHIFT_MONGODB_DB_HOST:$OPENSHIFT_MONGODB_DB_PORT/
{% endhighlight %}

Със добавянето на MongoDB към вашето приложение също така се добавят няколко ENV променливи, които казват какъв е хоста на базата, кой е порта, както и потребитлски имена и пароли.

{% include env_vars/mongodb.html %}

{% endsection %}

{% section id="how-to-access-mongodb-via-nodejs" title="Достъпване на MongoDB през NodeJS" %}

Ако се чудите за какво бяха тези MongoDB ENV променливи, които показхме отгоре и как можете да използвате във вашия код, ето един прост пример как да се закачите за вашия чисто нов MongoDB сървър.

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
// Ако вашето приложение се казва mynodejsapp, тогава трябва да заместите <app-name> с mynodejsapp
$database = $mongo->$db_name;

?>
{% endhighlight %}

{% endsection %}

{% section id="how-to-access-mongodb-via-ssh" title="Достъпване на MongoDB през SSH" %}

Първо трябва да се логнем на сървъра по SSH. Това става много лесно. Само изпълнете следната команда:

    $ app ssh -a mynodejsapp

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

{% endsection %}

{% section id="how-to-access-mongodb-via-devpc" title="Достъпване на MongoDB през работната ви машина/лаптоп" %}

    $ app port-forward -a mynodejsapp

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

    $ app show mynodejsapp


{% endsection %}


{% section id="development-mode" title="Development mode" %}

Ако искаш да се презареждат динамично твоите JavaScript файлове в "development" mode, когато качваш твоите промени по кода на Startapp, можеш да използваш маркера `hot_deploy` или да добавиш следния ред във `package.json` файла:

    "scripts": { "start": "supervisor <relative-path-from-repo-to>/server.js" },


Това ще стартира NodeJS със [Supervisor](https://npmjs.org/package/supervisor).

{% endsection %}

{% section id="local-development-and-testing" title="Локална среда за разработка" %}

Можеш да също така да разработваш и тестваш своя NodeJS app локално, на твоята машина. За да можеш да го да разработваш локално ще тябва да направиш няколко встъпителни неща.

- Да инсталираш NodeJS
- Да добавиш npm модулите които ги има на Startapp

### 1. Информация за environment-а на Startapp

#### 1.1. Виж коя версия на NodeJS използва твоето приложение

    $ app ssh -a mynodejsapp --command "node -v"

#### 1.2 Виж какви npm модули са инсталирани

    $ app ssh -a mynodejsapp --command "npm list -g"

### 2. Коя е твоята NodeJS версия?

Увери се, че на локалната си машина имаш инсталирана подходяща версия на NodeJS. Използването на една и съща версия е за предпочитане в повечето случаи, но също така можеш да използваш и по-нова версия.

### 3. Инсталирай модулите

Инсталирай npm модулите с подходящите версии, които получи като резултат от примера в точка **1.2**. Когато инсталираш npm модулите можеш да изполваш `-g` като аргумент към `npm` ако искаш да ги инсталираш глобално. Също така като алрернативно решение можете да ги инсталирате в `home` директорията, на вашя юзър с който сте логнат.

    $ pushd ~
    $ npm install [-g] $module_name@$version
    $ popd

### 4. Стартиране на локалния сървър

След като сте приключили с цялата процедура, можеш да пуснеш твоята апликация локално, като използваш някоя от следните команди.

    node server.js
    npm start -d
    supervisor server.js

Единственото което ви остава да направите е да се забавлявате докато разработвате вашето приложение :)

{% endsection %}

{% section id="add-modules" title="Модули" %}

{% endsection %}

{% section id="env-vars" title="Environment променливи" %}

Вскяко едно NodeJS приложение идва с няколко environment.

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
          <code>OPENSHIFT_NODEJS_IP</code>
        </td>
        <td>Вътрешния IP адрес на NodeJS приложението. Използва се от Startapp.</td>
      </tr>

      <tr>
        <td>
          <code>OPENSHIFT_NODEJS_PORT</code>
        </td>
        <td>Вътрешния порт на NodeJS приложението. Използва се от Startapp.</td>
      </tr>

      <tr>
        <td>
          <code>OPENSHIFT_NODEJS_POLL_INTERVAL</code>
        </td>
        <td>Можеш да го сетнеш като user environment променлива за да смените default-ната му стройност която е 1 секунда.</td>
      </tr>

    </tbody>
  </table>
</div>

{% endsection %}


{% include help/nodejs.html %}