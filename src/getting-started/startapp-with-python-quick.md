---
layout: document

title:  "> app --help | more"
date:   2014-02-10 12:58:04
header_title:  '> app create &lt;app&gt; with python'
lead: "За Python манияци! Създаване на Python приложения в <strong>Startapp</strong> cloud за 5 минути"
slug: startapp-with-python-quick
keywords: "хостинг, php хостинг, python хостинг, ruby хостинг, nodejs хостинг"
description: ""
noToc: true
---

{% section id="fast-create-python-app" title="Бързи инструкции" %}

{%assign install_url="/getting-started/app-client-tools-install.html" %}
{%assign python_full="/getting-started/startapp-with-python.html" %}

За да работят примерите по-долу:

1. Регистрирай се безплатно в [http://startapp.bg](#)
2. Инсталирай Git за: [Windows]({{ install_url }}#install-git-windows) | [Mac OS]({{ install_url }}#install-git-macos) | [Linux]({{ install_url }}#install-git-linux)
3. Инсталирай Startapp Client Tools за: [Windows]({{ install_url }}#install-app-windows) | [Mac OS]({{ install_url }}#install-app-macos) | [Linux]({{ install_url }}#install-app-linux)

---

#### 1. Създаване на приложение

    $ app create mypythonapp python-3.3

#### 2. Промени в кода
За да направите първата промяна, редактирайте с предпочитаният от Вас редактор файл `mypythonapp/wsgi.py`. Променете съдържанието  между `<body></body>` таговете примерно така:
    
    <body>
         <h1> Моето python приложение! </h1>
	</body>p

#### 3. Качване на сървъра

    $ git push


#### 4. Отваряне в браузъра

За предпочитане да е **различен от IE** :)

    http://mypythonapp-<mydomain>.sapp.io/


**Да, толкова е лесно!**

<br />

<div class="text-center">
  <p class="lead">Ако тази информация не е достатъчна, тогава прочети</p>
  <h2><a class="btn btn-primary btn-lg" href="{{ python_full }}" alt="Подробни инструкции за инсталиране на Python приложение">Подробни инструкции</a></h2>
</div>

<br />

{% endsection %}