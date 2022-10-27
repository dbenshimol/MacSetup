## My Mac Setup

This repo contains info on all the apps / tools / settings I use on my Mac.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->



- [Homebrew / Terminal / Shell](#homebrew--terminal--shell)
  - [Homebrew](#homebrew)
  - [Terminal](#terminal)
    - [Install the latest version of git](#install-the-latest-version-of-git)
- [OS Productivity](#os-productivity)
  - [Window Management](#window-management)
  - [App Switching](#app-switching)
  - [Quick Launching](#quick-launching)
- [Other Apps I Use Daily](#other-apps-i-use-daily)
- [OS Settings](#os-settings)
  - [Finder](#finder)
  - [Dock](#dock)
- [Menu Bar Customization](#menu-bar-customization)
  - [System Stats Widgets](#system-stats-widgets)
  - [Menu Bar Calendar](#menu-bar-calendar)
- [Note Taking](#note-taking)
- [Web Browser](#web-browser)
  - [Firefox](#firefox)
- [VS Code](#vs-code)
- [Break Timer](#break-timer)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


The apps and settings I use will work on the latest M1 and M2 MacBooks as well.

## Homebrew / Terminal / Shell

### Homebrew

[Homebrew](https://brew.sh/) allows us to install tools and apps from the command line.

To install it, open up the built in `Terminal` app and run this command:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This will also install the xcode build tools which is needed by many other developer tools.

After Homebrew is done installing, we will use it to install everything else we need.

### Terminal

The first app I install is to replace the built in `Terminal`.

I prefer [iTerm2](https://iterm2.com/) because:
* Nice [window chrome](https://en.wiktionary.org/wiki/chrome#Noun)
* Lots of customization options
* Clickable links
* Native OS notifications

There are a lot of options for a terminal replacement, but I've been using iTerm2 for years and it works great for my needs.

Checkout their documentation for more info on what iTerm2 can do: [https://iterm2.com/documentation.html](https://iterm2.com/documentation.html)

We install this using a Homebrew "cask". Casks are full applications, similar to what you would install from the App store.

```
brew install iterm2
```

Once installed, launch it and customize the settings / preferences to your liking. These are my preferred settings:

* Appearance
  * Theme
    * Minimal
* Profiles
  * Default
      * General -> Working Directory -> Reuse previous session's directory
      * Colors -> Basic Colors -> Foreground -> Lime Green
      * Text -> Font -> Anonymous Pro
          * You can download this font [here](https://www.marksimonson.com/fonts/view/anonymous-pro).
          * I use this font in VS Code as well
      * Text -> Font Size -> 36
          * I use my Macbook to present / teach, so a big font size is important so everyone can see the commands I'm typing
      * Keys -> Key Mappings -> Presets -> Natural Text Editing
          * This allows me to use the [keyboard shortcuts](https://gist.github.com/w3cj/022081eda22081b82c52) I know and love inside of iTerm2



#### Install the latest version of git

My Mac came with `git` version `2.38.1`, we can use brew to install the latest version of `git`:

```sh
git --version
brew install git
```

Open a new tab / window to start using the latest version:

```sh
git --version
```

Configure git with your name / email and preferred editor:

```sh
git config --global user.name david

git config --global user.email david@null.computer

```


## OS Productivity

### Window Management

I know this feature is built in to a lot of other operating systems, but it is not built in to a Mac, so we need an app for it.

I use [rectangle](https://rectangleapp.com/) to move and resize windows using keyboard shortcuts. I used to use [spectacle](https://www.spectacleapp.com/), but rectangle is more regularly maintained and allows me to use all of the same keyboard shortcuts as spectacle.

I highly recommend installing this and memorizing the keyboard shortcuts. Fluid and seamless window management is key to being productive while coding.

```sh
brew install rectangle
```

### App Switching

The built in App switcher only shows application icons, and only shows 1 icon per app regardless of how many windows you have open in that app.

I use an app switcher called [AltTab](https://alt-tab-macos.netlify.app/). It shows full window previews, and has an option to show a preview for every open window in all applications (even minimized ones).

I replace the built-in `CMD+TAB` shortcut with AltTab.

```sh
brew install alt-tab
```

### Quick Launching

The built in spotlight search is a bit slow for me and usually has web search results as the default instead of apps or folders on my machine.

I use [Alfred](https://www.alfredapp.com/) to launch apps / folders. There are features locked behind the paid powerpack, but I purchased a lifetime license a few years ago, and Alfred keeps working great for me. There are a lot of other cool things you can do with Alfred (workflows, scripting, clipboard manager etc.), but I mainly use it for launching apps and folders.

```sh
brew install alfred
```

## Other Apps I Use Daily

* [firefox-developer-edition](https://www.mozilla.org/en-US/firefox/developer/) - Preferred web browser
* [app-cleaner](https://freemacsoft.net/appcleaner/) - When removing an app, will search your file system for related files / settings that should be removed as well
* [keepingyouawake](https://keepingyouawake.app/) - Prevents my Mac from going to sleep when I'm presenting / live streaming
* [keka](https://www.keka.io/en/) - Can extract 7z / rar and other types of archives
* [visual-studio-code](https://code.visualstudio.com/) - Code Editor
* [sublime-text](https://www.sublimetext.com/) - Note taking (I know there are better apps...)

You can install them in one go by placing them all into a text file and then running brew install:

```
firefox-developer-edition
app-cleaner
keepingyouawake
slack
keka
kap
time-out
gimp
inkscape
visual-studio-code
sublime-text
```

```sh
xargs brew install < apps.txt
```

## OS Settings

These are my preferred settings for `Finder` and the `Dock`.

### Finder

* Finder -> Preferences
  * General -> Show these on the desktop -> Select None
      * I try to keep my desktop completely clean.
  * General -> New Finder windows show -> Home Folder
      * I prefer to see my home folder in each new finder window instead of recent documents
  * Advanced -> Show all filename extensions -> Yes
  * Advanced -> Show warning before changing an extension -> No
  * Advanced -> When performing a search -> Search the current folder
* View
  * Show Status Bar
  * Show Path Bar
  * Show Tab Bar

### Dock

I don't use the Dock at all. It takes up screen space, and I can use Alfred to launch apps and AltTab to switch between apps. I make the dock as small as possible and auto hide it.

* System Preferences
  * Dock & Menu Bar
      * Size -> Small as possible
      * Position on screen -> Right
      * Automatically hide and show the Dock -> Yes

## Menu Bar Customization

### System Stats Widgets

I like to see my network traffic, CPU temp / usage and RAM usage at a glance.

I used to use [iStat Menus](https://bjango.com/mac/istatmenus/), but a few people in my twitch chat pointed me to [stats](https://github.com/exelban/stats), a FOSS menu bar stats app. I tried it out, and I like it so far.

In each widget, a key setting to look for is under "widget settings", choose "merge widgets into one".

```sh
brew install stats
```

### Menu Bar Calendar

I like to have a calendar in the menu bar that I can quickly look at. stats does not include one, so I found [itsycal](https://www.mowglii.com/itsycal/). It seems fine for my needs.

```sh
brew install itsycal
```

itsycal shows the date, so I hide the date in the system menu bar widget:

* System Preferences
  * Dock & Menu Bar
      * Clock
          * Show Date -> Never
          * Show Day of Week -> No

## Note Taking

There are likely a million other better options, but I have used [Sublime Text](https://www.sublimetext.com/) as a note taking app for years now. I essentially use it as a staging area before moving my notes into a more permanent place (Google Docs, Google Keep, Trello, actual code project READMES etc.) or I delete the note (close the tab) after it has served its purpose.

I use sublime because it allows me to open new tabs / files without the need to save a given file. I can have several tabs / staging areas open and then completely close sublime. When I open it back up, all of my tabs are still there.

## Web Browser

### Firefox

I use Firefox because it is open source and comes from the [Mozilla Foundation](https://www.mozilla.org/en-US/about/manifesto/), a non profit company that [respects my privacy](https://www.mozilla.org/en-US/firefox/privacy/).

I use the following extensions to protect my privacy while browsing the web:

* Adblocker - [uBlock Origin](https://github.com/gorhill/uBlock)
* Tracker Blocker - [Privacy Badger](https://privacybadger.org/)
  * Firefox now includes tracker blocking, but I leave Privacy Badger enabled.
* [Cookie Autodelete](https://github.com/Cookie-AutoDelete/Cookie-AutoDelete)
  * Removes cookies from websites that are not in my whitelist whenever a tab is closed. An additional precaution to tracker blocking.
* [Decentraleyes](https://decentraleyes.org/)
  * Caches CDN links locally and intercepts requests to serve from the cache. Prevents CDNs from tracking you across websites.


## VS Code

VS Code is my preferred code editor.

You can view all of my VS Code settings / extensions [here](https://github.com/CodingGarden/vscode-settings).

2 of the most notable settings are:

```json
{
  "editor.linkedEditing": true,
  "editor.snippetSuggestions": "top",
}
```

* editor.linkedEditing
  * Automatically edit a closing tag when editing an opening tag
* editor.snippetSuggestions
  * Puts the most relevant auto complete options at the top

## Break Timer

I use an app called [Time Out](https://www.dejal.com/timeout/).

I have it setup to show:
* 10 second micro break every 15 minutes
* 5 minute long break every 60 minutes

There is also a cross platform break timer call [Stretchly](https://hovancik.net/stretchly/). I have not used it but a lot of people have recommended it.

# MacSetup
