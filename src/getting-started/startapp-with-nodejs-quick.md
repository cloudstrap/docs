---
layout: document

title:  "> StartApp.bg - NodeJS хостинг."
date:   2014-02-10 12:58:04
header_title:  '> app create &lt;app&gt; with NodeJS'
lead: "За JavaScript машини! Създаване на NodeJS приложения в <strong>StartApp</strong> cloud за 5 минути"
slug: startapp-with-nodejs-quick
keywords: "хостинг, nodejs хостинг, nodejs mongodb, nodejs mysql, nodejs framework, nodejs приложения, nodejs"
description: ""
noToc: true
---

{% section id="fast-create-app" title="Бързи инструкции" %}

{%assign install_url="/getting-started/app-client-tools-install.html" %}
{%assign full_docs="/getting-started/startapp-with-nodejs.html" %}

За да работят примерите по-долу ти трябва:

{% include customer-requirements.html %}

---

#### 1. Създаване на приложение

    app create mynodejsapp nodejs-0.10

#### 2. Промени в кода

    echo 'Hello Wolrd!' > index.html

#### 3. Качване на сървъра

    git push

#### 4. Отваряне в браузъра

    http://mynodejsapp-<mydomain>.sapp.io/

**Да, толкова е лесно!**

<br />

<div class="text-center">
  <p class="lead">Ако тази информация не е достатъчна, тогава прочети</p>
  <h2><a class="btn btn-primary btn-lg" href="{{ full_docs }}" alt="Подробни инструкции за инсталиране на NodeJS приложение">Подробни инструкции</a></h2>
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
          <h3>NodeJS приложения</h3>
          <ul class="list-unstyled">
              <li><a href="{{ full_docs }}#create-app-in-details">Създаване</a></li>
              <li><a href="{{ full_docs }}#file-structure">Файлова структура</a></li>
              <li><a href="{{ full_docs }}#make-code-changes">Промени по кода</a></li>
              <li><a href="{{ full_docs }}#deployment">Качване на сървъра</a></li>
              <li><a href="{{ full_docs }}#markers">Маркери</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>Бази данни</h3>
          <ul class="list-unstyled">
             <li><a href="{{ full_docs }}#add-mysql-to-app">MySQL и NodeJS</a></li>
             <li><a href="{{ full_docs }}#add-postgresql-to-app">PostgreSQL и NodeJS</a></li>
             <li><a href="{{ full_docs }}#add-mongo-to-app">MongoDB и NodeJS</a></li>
          </ul>
        </div>
      </div>
    </div>

    <!-- <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>NodeJS Frameworks</h3>
          <ul class="list-unstyled">
              <li><a href="{{ full_docs }}#create-framework-app"></a></li>
          </ul>
        </div>
      </div>
    </div> -->

    <div class="col-sm-6 col-md-4 col-xs-12">
      <div class="thumbnail">
        <div class="caption">
          <h3>Други</h3>
          <ul class="list-unstyled">
            <li><a href="{{ full_docs }}#package-json">NodeJS модули/пакети</a></li>
        </div>
      </div>
    </div>
  </div>
</section>
</div>

{% include help/nodejs.html %}
