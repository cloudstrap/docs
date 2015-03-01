---
layout: document

title:  "Инсталиране на StartApp Client Tools под Linux"
date:   2013-12-02 22:58:04
header_title:  "> gem install startapp Linux"
header_title_fontsize: big
lead: "Как да инсталираме Ruby, Git и StartApp Client Tools под Linux"
keywords: "инсталиране git linux, инсталиране на startapp"
description: "Няколко бързи примера как да инсталираме и конфигурираме Ruby, Git и StartApp Client Tools под Linux"
slug: app-client-tools-install-linux
noToc: true
---

{% capture help_links %}
  Интерактивният `setup wizard` ще ти помага и насочва през целия процес при настройване на StartApp Client Tools. Ако не можеш да стартираш StartApp Client tools на този етап драсни на [Startapp общността в Google Groups]({{ site.startapp.groups }}) за съдействие.
{% endcapture %}

{% capture after_ruby_and_git_installed %}
  След като вече сте инсталирал Ruby и Git, използвай RubyGem, (който е вграден в Ruby), за да инсталираш StartApp Client Tools:
{% endcapture %}

<!-- FIXME: Ugly work around -->
<p style="margin: 25px"></p>

{% section id="install-linux" title="StartApp Client Tools под Linux" %}

{% section id="install-git-ruby-linux" title="Инсталация на Ruby и Git - Ubuntu" %}

Ще използваме вградения конзолен пакетен мениджър `apt-get`, за да инсталираме Ruby и Git преди да инсталираме StartApp Client tools. Използвай тази команда:

{% highlight sh %}
$ sudo apt-get install ruby-full rubygems git-core
{% endhighlight %}

След като си инсталирал Ruby и Git, провери дали са достъпни през командния ред с тази команда:

{% highlight sh %}
$ ruby -e 'puts "Welcome to Ruby"'
Welcome to Ruby
$ git --version
git version 1.7.11.1
{% endhighlight %}

Версията на Git може да е различна от тази в примера. Ако е по-висока от тази това не трябва да те притеснява.

{% endsection %}

{% section id="install-app-linux" title="Инсталиране на StartApp Gem" %}

{{ after_ruby_and_git_installed }}

{% highlight sh %}
$ sudo gem install startapp
{% endhighlight %}

{% note info, Внимание %}
Използваш Ubuntu 11.10 или по-старо (и производните като Mint) и използваш системното Ruby? Възможно е да видиш грешки, когато инсталираш StartApp Client Tools като например `invalid date formats`. Използвай тези команди преди да инсталираш `startapp gem`:

{% highlight sh %}
$ sudo gem install rubygems-update
$ sudo update_rubygems
{% endhighlight %}
[Прочети повече за този проблем и неговите симптоми.](https://github.com/rubygems/rubygems/pull/57)
{% endnote %}

След като инсталираш StartApp Client Tools използвай тази команда:

{% highlight sh %}
$ app setup
{% endhighlight %}

{{help_links}}

{% endsection %}

{% section id="rvm" title="Ruby Version Manager" %}

Ruby Version Manager позволява да инсталираш и използваш различни версии на Ruby. Когато инсталираш StartApp Client Tools върху системата използваща RVM, е необходимо да инсталираш `startapp` gem-а в глобалния `gemset`, за да може да го достъпваш от всички Ruby инсталации, които имаш на локалните машини:

{% highlight sh %}
$ rvm gemset use global
$ gem install startapp
{% endhighlight %}

След като направиш това, без значение коя версия на Ruby използваш, `app` командата ще бъде налична.

### Бъдете винаги up-to-date

След като веднъж си инсталирал `startapp` gem-а, е много лесно да го обновяваш. Ruby има вграден механизъм за обновяване на инсталираните библиотеки. Използвай тази команда:

{% highlight sh %}
$ gem update startapp
{% endhighlight %}

или

{% highlight sh %}
$ sudo gem update startapp
{% endhighlight %}

и ще имаш последната версия на StartApp Client Tools. Ако възникнат някакви проблеми, погледи инструкциите по-горе.
{% endsection %}
{% endsection %}
