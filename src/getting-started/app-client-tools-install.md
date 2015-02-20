---
layout: document

title:  "Инсталиране на StartApp Client tools под Mac OS, Linux и Windows"
date:   2013-12-02 22:58:04
header_title:  "> gem install startapp"
header_title_fontsize: big
lead: "Как да инсталираме Git и StartApp tools под Mac OS, Linux и Windows"
keywords: "инсталиране git windows, инсталиране git linux, инсталиран git mac os, инсталиране на startapp"
description: "Няколко бързи примера как да инсталираме и конфигурираме StartApp и Git под Mac OS, Linux и Windows"
slug: app-client-tools-install
noToc: true
---

{% capture help_links %}
  Интерактивният `setup wizzard` ще ви помага и насочва през целия процес на настройване на StartApp Client tools. Ако не можете да пуснете StartApp Client tools на този етап, моля свържете се с нас в [IRC](http://webchat.freenode.net/?channels=startapp&uio=d4) или пишете на [StartApp общността в Google Groups]({{ site.startapp.groups }}) за съдействие.
{% endcapture %}

{% capture after_ruby_and_git_installed %}
  След като вече имате инсталирани Ruby и Git, използвайте RubyGem (който е вграден в Ruby) за да инсталирате и самите StartApp Client tools:
{% endcapture %}

<!-- FIXME: Ugly work around -->
<p style="margin: 25px"></p>

StartApp Client tools които ще използваме през командния ред като `app`, са създадени и пакетирани използвайки езика за програмиране `Ruby`. За да осигури мощен и децентрализиран `version control` на сорс кода на вашите приложения, в StartApp сме заложили на дълбоката интеграция с `Git`, който днес е един от най-надежните инструменти за тази цел.

Програмата `app` може да се използва на всяка една операционна система с Ruby 1.8.7 и нагоре. Инструкции за инсталация на различни операционни системи можете да намерите малко по-надолу в този документ.

Предполага се, че за да можете да стартирате команди, трабва да имате "Command Prompt" или "Terminal". Ако използвате [Ruby Version Manager (rvm) вижте инструкциите по-долу.](#rvm)

{% section id="install-macos" title="Mac OS X" %}

{% section id="install-ruby-macos" title="Инсталиране на Ruby" %}

От Mac OS X Lion насам, всяко копие на операционната система идва с инсталиран Ruby 1.8.7. На по-старите Mac системи, Ruby идва, като част от [Xcode development suite](http://developer.apple.com/xcode) и може да си го инсталирате от вашия инсталационен диск. Ако сте се занимавали с разработка на приложения за Mac, можете да изпозлвате [MacRuby](http://macruby.org/) или да видите [как можете да инсталирате Ruby с помоща на homebrew.](http://www.ruby-lang.org/en/downloads/)

За да разберете дали Ruby е инсталирано правилно на вашата машина пробвайте това:

{% highlight sh %}
$ ruby -e 'puts "Welcome to Ruby"'
Welcome to Ruby
{% endhighlight %}

{% endsection %}

{% section id="install-git-macos" title="Инсталиране на Git" %}

Има много опрции за да си инсталирате `Git` на вашия Mac OS X. Ние препоръчваме този: [Git for OS X installer](http://code.google.com/p/git-osx-installer/). Свалете последната версия на `dmg` файла. След това го инсталирайте по познатия начин ... next ... next ... next :)

За да разберете дали Git е инсталиран правилно на вашата машина пробвайте това:

{% highlight sh %}
$ git --version
git version 1.7.11.1
{% endhighlight %}

Версията на Git може да е различна от тази в примера. Ако е по-висока от тази това не тябва да ви притеснява.

{% endsection %}

{% section id="install-app-macos" title="Инсталиране на StartApp Gem" %}

{{ after_ruby_and_git_installed }}

Просто напишете тази команда в терминала си:

{% highlight sh %}
$ sudo gem install startapp
{% endhighlight %}

След като инсталацията приключи, напишете следното:

{% highlight sh %}
$ app setup
{% endhighlight %}

{{help_links}}

{% endsection %}
{% endsection %}




{% section id="install-windows" title="Windows" %}

{% section id="install-ruby-windows" title="Инсталиране на Ruby" %}

[RubyInstaller 1.9](http://rubyinstaller.org/) е най-лесният начин да инсталирате Ruby на Windows XP, Vista и Windows 7. Свалете последната версия от [тази страница](http://rubyinstaller.org/downloads/) и стартирайте инсталатора след това.

{% note danger, Важно %}
По време на инсталация преценете които от стандартните настройки искате да приемете, но е задължително да изберете тази опция "Add Ruby executables to your PATH" за да можете да стартирате Ruby от командния ред.
{% endnote %}

След като инсталацията приключи, за да разберете дали Ruby е инсталирано правилно на вашата машина пробвайте това:

{% highlight sh %}
C:\Program Files\> ruby -e 'puts "Welcome to Ruby"'
Welcome to Ruby
{% endhighlight %}

Ако съобщението 'Welcome to Ruby' не се покаже е възжмоно изпълнимия файл `ruby` да не е добавен във вашите пътища. Опитайте се да инсталирате отново Ruby, но този път се уверете, че чекбокс-а "Add Ruby executables to your PATH" е включен!

{% endsection %}

{% section id="install-git-windows" title="Инсталиране на Git" %}

Следващата стъпка е да инсталираме [Git за Windows](http://msysgit.github.com/) благодарение на който ще можете да синхронизирате сорс кода на вашите локални приложения с тези които работят на StartApp. Git за Windows предлага най-ленсия начин за инсталация на Git под Windows и затова силно го препоръчваме - ако използвате друга версия на Git, молим да се уверите, че може да се използва през командния ред, след това продължете със следващата секция.

{% highlight sh %}
C:\Program Files\> git --version
git version 1.7.11.msysgit.1
{% endhighlight %}

Версията на Git може да е различна от тази в примера. Ако е по-висока от тази това не тябва да ви притеснява.

{% endsection %}

{% section id="install-app-windows" title="Инсталиране на StartApp Gem" %}

{{ after_ruby_and_git_installed }}

{% highlight sh %}
C:\Program Files\> gem install startapp
{% endhighlight %}

RubyGems ще свали и ще инсталира `startapp` gem-а от www.rubygems.org/gems/startapp. Принцпно инсталацията протича без проблеми, но за да се уверите, че всичко е окей, след инсталацията напишете това:

{% highlight sh %}
C:\Program Files\> app
{% endhighlight %}

{{help_links}}

{% endsection %}
{% endsection %}



{% section id="install-linux" title="Linux" %}

{% section id="install-git-ruby-linux" title="Инсталация на Ruby и Git - Ubuntu" %}

Ще използваме вградения конзолен пакетен мениджър `apt-get` за да инсталираме Ruby и Git преди да инсталираме StartApp Client tools. Иползвайте този ред:

{% highlight sh %}
$ sudo apt-get install ruby-full rubygems git-core
{% endhighlight %}

След като сте инсталирали Ruby и Git, проверете дали са достъпни през командния ред:

{% highlight sh %}
$ ruby -e 'puts "Welcome to Ruby"'
Welcome to Ruby
$ git --version
git version 1.7.11.1
{% endhighlight %}

Версията на Git може да е различна от тази в примера. Ако е по-висока от тази това не тябва да ви притеснява.

Ако някоя от програмите Git или Ruby не са достъпни през командния ред, молим ви да ги добавите в `PATH`.

{% endsection %}

{% section id="install-app-linux" title="Инсталиране на StartApp Gem" %}

{{ after_ruby_and_git_installed }}

{% highlight sh %}
$ sudo gem install startapp
{% endhighlight %}

{% note info, Внимание %}
Ако използвате Ubuntu 11.10 или по-старо (и производните като Mint) и използвате системното Ruby, е възможно да видите грешки когато инсталирате StartApp Client Tools като напримерно `invalid date formats`. Ако изкочат тези грешки може би трябва да напишете следните команди преди да инсталирате `startapp gem`:

{% highlight sh %}
$ sudo gem install rubygems-update
$ sudo update_rubygems
{% endhighlight %}
[Прочети повече за този проблем и неговите симптоми.](https://github.com/rubygems/rubygems/pull/57)
{% endnote %}

След като инсталирате StartApp Client Tools напишете следното:

{% highlight sh %}
$ app setup
{% endhighlight %}

{{help_links}}

{% endsection %}

{% section id="rvm" title="Ruby Version Manager" %}

Ruby Version Manager ви позволява да инсталирате и използвате различни версии на Ruby. Когато инсталирате StartApp Client Tools върху системата използваща RVM, е необходимо да инсталирате `startapp` gem-а в глобалния `gemset`, за да може да го достъпвате от всички Ruby инсталации, които имате на машината си:

{% highlight sh %}
$ rvm gemset use global
$ gem install startapp
{% endhighlight %}

След като направите това, без значение коя версия на Ruby изпозлвате, `app` командата ще бъде налична.

### Бъдете винаги up-to-date

След като веднъж сте инсталирали `startapp` gem-а, е много лесно да го ъпдейтвате. Ruby има вграден механизъм за ъпдейт на инсталираните библиотеки. Просто напишете:

{% highlight sh %}
$ gem update startapp
{% endhighlight %}

или

{% highlight sh %}
$ sudo gem update startapp
{% endhighlight %}

и ще имате последната версия на StartApp Client Tools. Ако възникнат някакви проблеми, погледнете инструкциите по-горе за вашата операционна система.
{% endsection %}
{% endsection %}
