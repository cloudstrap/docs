---
layout: document

title:  "> app --help | more"
date:   2014-02-10 12:58:04
header_title:  '> app create &lt;app&gt; with Ruby'
lead: "За Ruby поети! Създаване на Ruby приложения в <strong>Startapp</strong> cloud за 5 минути"
slug: startapp-with-ruby-quick
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% section id="fast-create-ruby-app" title="Бързи инструкции" %}

{%assign install_url="/getting-started/app-client-tools-install.html" %}
{%assign ruby_full="/getting-started/startapp-with-ruby.html" %}

За да работят примерите по-долу ти трябва:

  1. Регистрация в [http://startapp.bg](#)
  2. Ruby за [Windows]({{ install_url }}#iinstall-ruby-windows) | [Mac OS]({{ install_url }}#install-ruby-macos) | [Linux]({{ install_url }}#install-git-ruby-linux)
  3. Git за: [Windows]({{ install_url }}#install-git-windows) | [Mac OS]({{ install_url }}#install-git-macos) | [Linux]({{ install_url }}#install-git-linux)
  4. Startapp Client Tools за: [Windows]({{ install_url }}#install-app-windows) | [Mac OS]({{ install_url }}#install-app-macos) | [Linux]({{ install_url }}#install-app-linux)

---

#### 1. Създаване на приложение

    app create myrubyapp ruby-2.0

#### 2. Промени в кода

Редактирай съдържанието между '<body>...</body>' таговете във файла 'config.ru':

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