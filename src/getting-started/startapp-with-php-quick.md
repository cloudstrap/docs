---
layout: document

title:  "> app --help | more"
date:   2014-02-10 12:58:04
header_title:  '> app create &lt;app&gt; with php'
lead: "За PHP нинджи! Качване на PHP приложения в <strong>Startapp</strong> cloud за 5 минути"
slug: startapp-with-php-quick
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% page_header id="fast-create-php-app" title="Бързи инструкции" %}

{%assign install_url="/getting-started/app-client-tools-install.html" %}

За да работят примерите по-долу:

- Регистрирайте се безплатно в [http://startapp.bg](#)
- Инсталирай Git за: [Windows]({{ install_url }}#install-git-windows) | [Mac OS]({{ install_url }}#install-git-macos) | [Linux]({{ install_url }}#install-git-linux)
- Инсталирайте Startapp Client Tools за: [Windows]({{ install_url }}#install-app-windows) | [Mac OS]({{ install_url }}#install-app-macos) | [Linux]({{ install_url }}#install-app-linux)

---

#### 1. Създаване на приложение

    $ app create myphpapp php mysql-5.1


#### 2. Промени в кода

    $ echo 'Hello Wolrd!' > php/index.php

#### 3. Качване на сървъра

    $ git push


#### 4. Отваряне в браузъра

За предпочитане да е **различен от IE** :)

    http://myphpapp-<mydomain>.startapp.bg/


**Да толкова е просто!**

<br />

<div class="text-center">
  <p class="lead">Ако тази информация не е достатъчна, тогава прочети</p>
  <h2><a href="/getting-started/startapp-with-php.html" alt="Подробни инструкции за инсталиране на PHP приложение">Подробни инструкции</a></h2>
</div>

<br />

{% page_header id="read-more" title="Прочетете още:" %}

<section class="read-more">
  <div class="row">
    <div class="col-md-6 col-sm-6 col-xs-12">
      <ul class="list-unstyled">
        <li><a href="">Файлова структура на PHP приложението</a></li>
        <li><a href="">Как се правят промени по кода</a></li>
        <li><a href="">Какво са Маркерите и как работят?</a></li>
      </ul>
    </div>
    <div class="col-md-6 col-sm-6 col-xs-12">
      <ul class="list-unstyled">
        <li><a href="">Инсталиране на MySQL и PHP</a></li>
        <li><a href="">Инсталиране на PostgreSQL и PHP</a></li>
        <li><a href="">Инсталиране на MongoDB и PHP</a></li>
      </ul>
    </div>
  </div>

<!-- Add the extra clearfix for only the required viewport -->
<div class="clearfix visible-xs"></div>

<div class="row">
  <div class="col-md-6 col-sm-6 col-xs-12">
    <ul class="list-unstyled">
        <li><a href="">Инсталиране на Codeigniter</a></li>
        <li><a href="">Инсталиране на CakePHP</a></li>
    </ul>
  </div>
  <div class="col-md-6 col-sm-6 col-xs-12">
    <ul class="list-unstyled">
      <li><a href="">Добавяне на Composer</a></li>
    </ul>
  </div>
</div>
</section>

{% include help/php.html %}