[![Code Climate](https://codeclimate.com/github/timhyson/boris_bikes_rv/badges/gpa.svg)](https://codeclimate.com/github/timhyson/boris_bikes_rv) [![Test Coverage](https://codeclimate.com/github/timhyson/boris_bikes_rv/badges/coverage.svg)](https://codeclimate.com/github/timhyson/boris_bikes_rv) [![Build Status](https://travis-ci.org/timhyson/boris_bikes_rv.svg?branch=master)](https://travis-ci.org/timhyson/boris_bikes_rv)
# Boris Bikes

Boris Bikes is a simulation of the Boris Bikes Rental system in London.

## Objectives

To learn about Object-Orientated-Programming and Test-Driven-Development.

## Technology
- Ruby
- RSpec for TDD
- Git for DVC

## To Run
```
$ git clone git@github.com:timhyson/boris_bikes_rv.git
$ cd boris_bikes_rv
$ irb
    > Dir['./lib/*.rb'].each {|file| require file }
```

Now you are able to play around with the objects in Ruby. These are:
- Bike
- Docking Station

The ```bike_container``` module means the domain could be further expanded to include, for instance:
- Van
- Garage

## To Run Tests
```
$ rspec
```
------------

# Boris Bikes Challenge
London's Boris Bikes (well, 'Santander Cycles') are awesome. For a small fee, anyone can hire out a bike and ride it around London. Bikes are located at Docking Stations dotted throughout the city.

Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (congratulations! That was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of Docking Stations and bikes that anyone can use. They want you to build a program that will run all the Docking Stations, simulate all the Bikes, and emulate all the infrastructure (vans, repair staff, and so on) required to make their dream a reality. They call it - guess what? - 'Boris' Bikes, and they're offering a tasty sum of money.

------------

```As a person,
So that I can use a bike,
I'd like a docking station to release a bike.```

```As a person,
So that I can use a good bike,
I'd like to see if a bike works.```

```As a member of the public
So that I can get across town
I'd like to get a working bike from a docking station.```

```As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.```

```As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.```

```As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.```

```As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.```

```As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.```

```As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.```

```As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).```

```As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.```

```As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.```
