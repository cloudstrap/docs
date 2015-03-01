---
layout: document

title:  "Инсталиране на StartApp Client Tools под Mac OS, Linux и Windows"
date:   2013-12-02 22:58:04
header_title:  "> gem install startapp"
header_title_fontsize: big
lead: "Как да инсталираме Git и StartApp tools под Mac OS, Linux и Windows"
keywords: "инсталиране git windows, инсталиране git linux, инсталиран git mac os, инсталиране на startapp"
description: "Няколко бързи примера как да инсталираме и конфигурираме StartApp Client Tools и Git под Mac OS, Linux и Windows"
slug: app-client-tools-install
noToc: true
---

{% capture help_links %}
  Интерактивният `setup wizard` ще ти помага и насочва през целия процес при настройване на StartApp Client Tools. Ако не можеш да стартираш StartApp Client tools на този етап драсни на [Startapp общността в Google Groups]({{ site.startapp.groups }}) за съдействие.
{% endcapture %}

{% capture after_ruby_and_git_installed %}
  След като вече сте инсталирал Ruby и Git, използвай RubyGem, (който е вграден в Ruby), за да инсталираш и самите StartApp Client tools:
{% endcapture %}

<!-- FIXME: Ugly work around -->
<p style="margin: 25px"></p>

{% section id="install-macos" title="Инсталиране на StartApp Client Tools" %}


StartApp Client Tools, които ще използваме през командния ред, са създадени и пакетирани използвайки `Ruby`. StartApp осигурява мощен и децентрализиран `version control` на сорс кода на твоите приложения използвайки `Git` - един от най-надеждните инструменти за тази цел.

Необходим е "Command Prompt" или "Terminal", през който да управляваш процеса на инсталация.

Инструкции за инсталация:

<div class="row startapp-starters">
  <div class="col-xs-6 col-md-4">
    <a class="thumbnail" href="/getting-started/app-client-tools-install-osx.html">
      <img src="/img/install/osx-icon.png" alt="Инсталиране под MacOS">
    </a>
    <h4 class="text-center"><a href="/getting-started/app-client-tools-install-osx.html">Инсталиране под MacOS</a></h4>
  </div>
  <div class="col-xs-6 col-md-4">
    <a class="thumbnail" href="/getting-started/app-client-tools-install-linux.html">
      <img src="/img/install/linux-icon.png" alt="Инсталиране под Linux">
    </a>
    <h4 class="text-center"><a href="/getting-started/app-client-tools-install-linux.html">Инсталиране под Linux</a></h4>
  </div>
  <div class="clearfix visible-xs"></div>
  <div class="col-xs-6 col-md-4">
    <a class="thumbnail" href="/getting-started/app-client-tools-install-windows.html">
      <img src="/img/install/windows-icon.png" alt="Инсталиране под Windows">
    </a>
    <h4 class="text-center"><a href="/getting-started/app-client-tools-install-windows.html">Инсталиране под Windows</a></h4>
  </div>

</div>

{% endsection %}
