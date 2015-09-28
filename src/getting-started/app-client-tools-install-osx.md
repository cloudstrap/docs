---
layout: document

title:  "Инсталиране на CloudStrap Client Tools под OS X"
date:   2013-12-02 22:58:04
header_title:  "> gem install cloudstrap OS X"
header_title_fontsize: big
lead: "Как да инсталираме Ruby, Git и CloudStrap Tools под OS X"
keywords: "инсталиран git mac os, инсталиран git os x, инсталиране на cloudstrap"
description: "Няколко бързи примера как да инсталираме и конфигурираме Ruby, Git и CloudStrap под Mac OS X"
slug: app-client-tools-install-osx
noToc: true
---

{% capture help_links %}
  Интерактивният `setup wizard` ще ти помага и насочва през целия процес при настройване на CloudStrap Client Tools. Ако не можеш да стартираш CloudStrap Client Tools на този етап драсни на [CloudStrap общността в Google Groups]({{ site.cloudstrap.groups }}) за съдействие.
{% endcapture %}

{% capture after_ruby_and_git_installed %}
  След като вече сте инсталирал Ruby и Git, използвай RubyGem, (който е вграден в Ruby), за да инсталираш и самите CloudStrap Client Tools:
{% endcapture %}

<!-- FIXME: Ugly work around -->
<p style="margin: 25px"></p>

{% section id="install-macos" title="CloudStrap Client Tools под OS X" %}

{% section id="install-ruby-macos" title="Инсталиране на Ruby" %}

От Mac OS X Lion насам, всяко копие на операционната система идва с инсталиран Ruby 1.8.7. На по-старите Mac системи, Ruby идва, като част от [Xcode development suite](http://developer.apple.com/xcode) и може да си го инсталирате от инсталационен диск. Ако си се занимавал с разработка на приложения за Mac, може да използваш [MacRuby](http://macruby.org/) или да видиш [как можеш да инсталираш Ruby с помощта на homebrew.](https://www.ruby-lang.org/en/documentation/installation/#homebrew)

За да разбереш дали Ruby е инсталирано правилно на работната машина използвай тази команда:

{% highlight sh %}
$ ruby -e 'puts "Welcome to Ruby"'
Welcome to Ruby
{% endhighlight %}

{% endsection %}

{% section id="install-git-macos" title="Инсталиране на Git" %}

Има много опции, за инсталиране на `Git` на твоят Mac OS X. Ние препоръчваме този: [Git for OS X installer](http://git-scm.com/downloads/). Свали предпочитаната от теб версия на `dmg` файла. Инсталирай по познатия начин ... next ... next ... :)

За да разбереш дали Git е инсталиран правилно на работната машина използвай тази команда:

{% highlight sh %}
$ git --version
git version 2.2.1
{% endhighlight %}

Версията на Git може да е различна от тази в примера. Ако е по-висока от тази това не трябва да те притеснява.

{% endsection %}

{% section id="install-app-macos" title="Инсталиране на CloudStrap Gem" %}

{{ after_ruby_and_git_installed }}

Просто използвай тази команда в терминала си:

{% highlight sh %}
$ sudo gem install cloudstrap
{% endhighlight %}

След като инсталацията приключи, използвай тази команда:

{% highlight sh %}
$ app setup
{% endhighlight %}

{{help_links}}

{% endsection %}


{% section id="rvm" title="Ruby Version Manager" %}

Ruby Version Manager позволява да инсталираш и използваш различни версии на Ruby. Когато инсталираш CloudStrap Client Tools върху системата използваща RVM, е необходимо да инсталираш `cloudstrap` gem-а в глобалния `gemset`, за да може да го достъпваш от всички Ruby инсталации, които имаш на локалните машини:

{% highlight sh %}
$ rvm gemset use global
$ gem install cloudstrap
{% endhighlight %}

След като направиш това, без значение коя версия на Ruby използваш, `app` командата ще бъде налична.

### Бъдете винаги up-to-date

След като веднъж си инсталирал `cloudstrap` gem-а, е много лесно да го обновяваш. Ruby има вграден механизъм за обновяване на инсталираните библиотеки. Използвай тази команда:

{% highlight sh %}
$ gem update cloudstrap
{% endhighlight %}

или

{% highlight sh %}
$ sudo gem update cloudstrap
{% endhighlight %}

и ще имаш последната версия на CloudStrap Client Tools. Ако възникнат някакви проблеми, погледи инструкциите по-горе.
{% endsection %}
{% endsection %}
