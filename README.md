# Meetup-Project

## Slides 
[Introduction to Elixir](https://docs.google.com/presentation/d/1gC353tfeXgwQkzSfujsVO0Uti36sYhU3k8dBD1x25Qk/pub?start=false&loop=false&delayms=3000)

##Description
Showcase for our first Elixir Meetup in Aachen.
* Set up a project
* Install a hex-package "Anagram"
* create a GenServer
* Start worker via supervisor

## Installation
First install elixir and erlang

## clone project

```bash
git clone git@github.com:guidoholz/meetup_1.git
```

## run project
```bash
 iex -S mix
```
```iex
iex(2)> Ana.GenServer.store("Anna")
iex(3)> Ana.GenServer.store(["List","Diet"])
iex(4)> Ana.GenServer.list()
iex(5)> Ana.GenServer.show_anagrams()
```
