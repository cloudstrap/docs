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

{% section id="fast-create-php-app" title="Бързи инструкции" %}

{%assign install_url="/getting-started/app-client-tools-install.html" %}
{%assign php_full="/getting-started/startapp-with-php.html" %}

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


**Да, толкова е лесно!**

<br />

<div class="text-center">
  <p class="lead">Ако тази информация не е достатъчна, тогава прочети</p>
  <h2><a class="btn btn-primary btn-lg" href="{{ php_full }}" alt="Подробни инструкции за инсталиране на PHP приложение">Подробни инструкции</a></h2>
</div>

<br />

{% endsection %}


<div class="document-content-section">
{% page_header id="read-more" title="Прочети още" %}

<section class="read-more no-border">
  <div class="row" style="overflow: hidden;">
    <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>PHP приложения</h3>
          <ul class="list-unstyled">
              <li><a href="{{ php_full }}#create-php-app-in-details">Създаване</a></li>
              <li><a href="{{ php_full }}#file-structure">Файлова структура</a></li>
              <li><a href="{{ php_full }}#make-code-changes">Промени по кода</a></li>
              <li><a href="{{ php_full }}#deployment">Качване на сървъра</a></li>
              <li><a href="{{ php_full }}#markers">Маркери</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>Бази данни</h3>
          <ul class="list-unstyled">
             <li><a href="{{ php_full }}#add-mysql-to-app">MySQL и PHP</a></li>
             <li><a href="{{ php_full }}#add-postgresql-to-app">PostgreSQL и PHP</a></li>
             <li><a href="{{ php_full }}#add-mongo-to-app">MongoDB и PHP</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>PHP Frameworks</h3>
          <ul class="list-unstyled">
              <li><a href="{{ php_full }}#create-codeigniter-app">Инсталиране на Codeigniter</a></li>
              <li><a href="{{ php_full }}#create-cakephp-app">Инсталиране на CakePHP</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>Други</h3>
          <ul class="list-unstyled">
            <li><a href="{{ php_full }}#add-composer">Добавяне на Composer</a></li>
        </div>
      </div>
    </div>
  </div>
</section>
</div>

{% include help/php.html %}