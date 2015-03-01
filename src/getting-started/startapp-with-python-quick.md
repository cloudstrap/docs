---
layout: document

title:  "Python приложения в StartApp.bg Python хостинг."
date:   2014-02-10 12:58:04
header_title:  '> app create &lt;app&gt; with Python'
lead: "За Python манияци! Създаване на Python приложения в <strong>StartApp</strong> cloud за 5 минути"
slug: startapp-with-python-quick
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% section id="fast-create-python-app" title="Бързи инструкции" %}

{%assign install_url="/getting-started/app-client-tools-install.html" %}
{%assign python_full="/getting-started/startapp-with-python.html" %}

За да работят примерите по-долу ти трябва:

{% include customer-requirements.html %}

---

#### 1. Създай приложение

    app create mypythonapp python-3.3

#### 2. Промени кода

Промени с предпочитан редактор файла wsgi.py между 'body' таговете:

    <body>
        <h1>Hello world!</h1>
    </body>

#### 3. Качи приложението

    git push

#### 4. Виж в браузър

    http://mypythonapp-<mydomain>.sapp.io/


**Да, толкова е лесно!**

<br />

<div class="text-center">
  <p class="lead">Tази информация не е достатъчна? тогава прочети</p>
  <h2><a class="btn btn-primary btn-lg" href="{{ python_full }}" alt="Подробни инструкции за инсталиране на Python приложение">Подробни инструкции</a></h2>
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
          <h3>Python приложения</h3>
          <ul class="list-unstyled">
              <li><a href="{{ python_full }}#create-python-app-in-details">Създаване</a></li>
              <li><a href="{{ python_full }}#file-structure">Файлова структура</a></li>
              <li><a href="{{ python_full }}#make-code-changes">Промени по кода</a></li>
              <li><a href="{{ python_full }}#deployment">Качване на сървъра</a></li>
              <li><a href="{{ python_full }}#markers">Маркери</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>Бази данни</h3>
          <ul class="list-unstyled">
             <li><a href="{{ python_full }}#add-mysql-to-app">MySQL и Python</a></li>
             <li><a href="{{ python_full }}#add-postgresql-to-app">PostgreSQL и Python</a></li>
             <li><a href="{{ python_full }}#add-mongo-to-app">MongoDB и Python</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
</div>

{% include help/python.html %}