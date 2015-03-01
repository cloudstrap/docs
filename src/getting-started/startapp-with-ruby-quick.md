---
layout: document

title:  "> app --help | more"
date:   2014-02-10 12:58:04
header_title:  '> app create &lt;app&gt; with Ruby'
lead: "За Ruby поети! Създаване на Ruby приложения в <strong>StartApp</strong> cloud за 5 минути"
slug: startapp-with-ruby-quick
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% section id="fast-create-ruby-app" title="Бързи инструкции" %}

{%assign install_url="/getting-started/app-client-tools-install.html" %}
{%assign ruby_full="/getting-started/startapp-with-ruby.html" %}

За да работят примерите по-долу ти трябва:

{% include customer-requirements.html %}

---

#### 1. Създаване на приложение

    app create myrubyapp ruby-2.0

#### 2. Промени в кода

Редактирай съдържанието между 'body' таговете във файла 'config.ru':

    <body>
         <h1> Моето ruby приложение! </h1>
    </body>

#### 3. Качване на сървъра

    git push

#### 4. Отваряне в браузъра

    http://myrubyapp-<mydomain>.sapp.io/

**Да, толкова е лесно!**

<br />

<div class="text-center">
  <p class="lead">Ако тази информация не е достатъчна, тогава прочети</p>
  <h2><a class="btn btn-primary btn-lg" href="{{ ruby_full }}" alt="Подробни инструкции за инсталиране на Ruby приложение">Подробни инструкции</a></h2>
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
              <li><a href="{{ ruby_full }}#create-ruby-app-in-details">Създаване</a></li>
              <li><a href="{{ ruby_full }}#file-structure">Файлова структура</a></li>
              <li><a href="{{ ruby_full }}#make-code-changes">Промени по кода</a></li>
              <li><a href="{{ ruby_full }}#deployment">Качване на сървъра</a></li>
              <li><a href="{{ ruby_full }}#markers">Маркери</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>Бази данни</h3>
          <ul class="list-unstyled">
             <li><a href="{{ ruby_full }}#add-mysql-to-app">MySQL и Ruby</a></li>
             <li><a href="{{ ruby_full }}#add-postgresql-to-app">PostgreSQL и Ruby</a></li>
             <li><a href="{{ ruby_full }}#add-mongo-to-app">MongoDB и Ruby</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
</div>

{% include help/ruby.html %}