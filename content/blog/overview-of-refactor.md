---
title: Overview of ReFactor
author: beka
date: 2020-05-23
categories:
- ReFactor
tags:
- Cory Doctorow
- Manu Saadia
- Ivan Illich
- Utopia
- Anarchism
- Solar Punk
- Star Trek
- Convivial Technology
---

The ReFactor project emerged out of a handful of conversations folx
were having both as part of the Queers Read Leftism reading group
and outside of it.

The main goal of the project is to ask how the current technology
we use for production of goods -- whether that's clothing, shelter,
food, energy, water, or whatever else -- has been shaped by the
particular path through capitalist industrialization since the late
1700s. Once we have a good sense of where that has happened and how,
we can then go on to ask a second question, namely, how can we refactor
our technology, taking full advantage of modern tools and resources,
to eliminate the centralization of production, and the deep
interdependence of our tools on one another.

<!--more-->

If you want to keep up to date with ReFactor, this blog is probably a
good place to look, or [our Twitter account](https://twitter.com/QueeriousLabs).
You can also check out [the GitHub repo](https://github.com/queeriouslabs/ReFactor),
where all of the source files for building the various things we're
working on will reside. We encourage folx to make their own versions
of things, contribute new variations, propose new subprojects, etc.
ReFactor is an open-source, collaborative project, so, you know, PRs
welcome! :P

## A Solarpunk Anarchist Future

The vision of the future that we have in mind when trying to figure
out what to work on and how this project should be guided is probably
best described as solarpunk anarchism. It's well summed up by Connor
Owens:

> Imagine, for example, getting up in the morning and being able to
> walk into a fully-automated supermarket, with a robotised vertical
> farm overhead where all the food is grown, and being able to take
> any goods you like without any money being exchanged, while computers
> keep track of demand and supply levels so as to figure out what to
> grow and how much of it to stock. Then you could walk down to your
> neighbourhood centre, located where the gaudy shopping mall used to
> be, filled with creative teams of local specialists in fabrication
> and repair, using decentralist technics to make everything from
> computers to home appliances to works of art; their work and tools
> [no] longer hindered by the artificial scarcity of intellectual
> property laws and distributed on the commons principles of “to each
> according to need”, or at most trading favours.

> This is a brief glimpse of what a libertarian technics could look
> like in a future economy of the commons, though it’s one we’ll
> likely never see if the route of technical change isn’t directed
> away from the statist and capitalist imperatives towards centralised
> control and mass production; useful for making weapons and
> surveillance, but not so useful for meeting human and ecological needs.

> What social anarchists need to do in response to this changing
> technological milieu get serious about the course of technological
> development, actively push it in the direction of ecological design,
> decentralism, smaller scaling, and participatory control. We can’t
> just take over the ecocidal, centralised, and bureaucratic
> infrastructure of the capitalist state system and expect to make it
> run according to worker self-management. Authoritarian technics can’t
> be made to run according to libertarian logics.

> (Connor Owens, [Social Anarchist Futures](https://solarpunkanarchists.com/2018/05/02/social-anarchist-futures/))



That last paragraph especially captures the ideas behind Refactor:
ecological design, decentralism, smaller scaling, and participatory
control.

We envision a future where the majority of production that people
depend on happens within their neighborhood, whether that means
within their single village that is all within walking distance, or
within the local neighborhood within the city they live in. We
imagine using novel designs to make maximally automated toolchains,
for tools that are all manufacturable mostly or entirely within that
neighborhood.

And most importantly, we envision this taking place in community-run
shared workshops, like current day hackerspaces. Every member of the
community should be able to use the tools to produce things, perhaps
with a small amount of training by other members of the community.


## How Production is Centralized

To really understand what it means to decentralize production in the
way we want to do, we have to understand what exactly it means to say
that production is centralized.

There are two aspects of centralization that are relevant here:
geography and control. The first kind of centralization -- geographic
centralization -- is simply when production takes place in fewer and
fewer places. Historically, this meant the movement of production
out of homes and artisan workshops and into factories, and then
eventually into separate towns for more concentrated factory production.
When you want furniture, you rarely get it made in the town you live
in, but rather you buy something that was made in a factory, probably
hundreds or thousands of miles away.

The second kind of centralization -- control centralization -- is even
more important, especially for the anarchist part of our vision.
Capitalism has a tendency to try to produce monopolies, because
monopoly power is very profitable. Just 10 companies control the food
industry: Pepsico, General Mills, Kellogs, Associated British Foods,
Mondelez, Mars, Danone, Unilever, Coca-Cola, and Nestle. Just two
companies constitute the biggest social networks: Facebook, and Twitter
a distant second. Just one company controls the eyeglasses business:
Luxotica.

What these companies want, they get. You have no say in how they run
and you really don't have any meaningful ability to opt out. They're
all you get.


## Why Production is Centralized

The question of *why* production is centralized is a bit trickier than
the question of how. Some of it was mentioned above -- capitalism creates
monopolies -- but there are other factors too. The most interesting one
for the purposes of ReFactor is the history of the industrial revolution
itself.

Let's take textile production as an example case, since the loom is our
first main tool for ReFactor. Historically, looms were run in small
loomshops in the homes of weavers in whatever places were most convenient
for getting the raw material for textiles. The design of the power loom
let production increase, but the tradeoff meant that the textile mills that
housed the power looms needed to be near power sources. In the earliest
phase of industrialization, that meant near rivers, because the only real
power source of any use was water wheels. So textile production moved out
of the weaver's cottage and into the riverside factory. These were still
relatively small, and distributed, however.

By the late 1700s, the steam engine had developed into a usable power
source, and in the 1780s began being used to run power looms. As a result,
you could build a single steam powered factory that was able to produce
what dozens or hundreds of weaver's cottages were producing just 100 years
earlier. As a result, factory production was basically cemented as the
only sensible way to manufacture textiles. Electrification in the late
1800s did little to change the situation, except to make transportation of
power easier, and perhaps to make the looms safer since you no longer
needed to have large overhead belt drives that could easily catch a person's
hair or clothing and maim or kill them.

## Path Dependent Looms, Path Dependent Societies

Because of the centralization of textile production, our looms are extremely
well tuned to the needs of factory production. They're big, fast, expensive,
and time consuming to set up. Size isn't a problem because factories an be
huge. Cost isn't a problem because factory owners have access to large
amounts of capital and credit. Time consuming setup isn't an issue because
the people buying and building the looms aren't the people running them,
and the people running them tend to be poor and have little ability to
really protest or redesign anything. Additionally, because factory looms
produce extremely large quantities of fabric, the time required for setup
is proportionally low. And what's more, because labor is cheap, it doesn't
matter too much if the setup process is tedious -- there's no incentive to
automate if the only downside of not doing so is that your low-wage workers
are mildly grumpy. If you, or a hackerspace, wanted to buy a modern loom,
have fun!

Compare the situation with looms to the situation with CNC machines. It used
to be the case that CNC mills and other CNC tooling cost at least a few
thousand dollars, often tens of thousands. Industrial ones intended mostly
for factory use still do. But the emergence of hackerspaces, makerspaces, and
the broader maker movement lead to independent development of smaller
machines, or different designs. The LowRider CNC design is so radically
different from industrial machines, and could never have come out of a
factory-oriented design process. Filament-based 3D printers that came out of
the hobbyist world have seen an explosion in interesting, novel designs that
have no use in factories, including a few designs that use cables and tension
to enable massive sculptures to be printed in almost arbitrary enclosing
spaces. Industrial 3d printing has no need to develop CNC mechanisms that
mount to the inside of a museum stairwell or the nave of a church.

The power constraints on a lot of industrial machines are also an interesting
factor. Ignoring the industrial electricity requirements (i.e., 3 or 4 phase
current at 240 volts), there are still issues of power consumption. To run
a factory machine, you need a lot of power! It's not something you can do in
your urban apartment. Again, because of factories, power usage was never
really an issue. When you're building factories on riversides, or powering
things with dedicated steam engines, you can pretty much just ignore the
constraints of urban cottage industry. Once electrification came along, the
constraints were gone, so the resulting electric looms consume a lot of
power. But electricity is now available almost everywhere in the world.
Where there is no grid, there are solar cells. Small scale cottage industry
with lower production rates can easily be done on existing power
infrastructure in most homes, and definitely in most hackerspaces and
makerspaces. You couldn't run a few dozen factory looms, *but you don't need
to*.

The result of all of this centralization has been massive industrial output
but also massive dependence on factories, corporations, capital. But also,
perhaps less obvious, on reliable supply chains (a fact which many people
are discovering in the middle of the COVID-19 Pandemic). The alternative
future that we imagine to be possible is instead much more local, much more
automated, and much more community controlled. As a consequence, the people
who live in that future will be more autonomous, free from dependence on
corporations and capital, and ultimately, from from the drudgery of jobs.


## Project Inspirations

We've taken inspiration for this project from a lot of different places,
which we really encourage you to explore. In the world of fiction, we look
to the distant future of *Star Trek: The Next Generation*, and to the near
future of Cory Doctorow's *Walkaway*, among others. In non-fiction, to
Ivan Illich's *Tools for Conviviality*, Manu Saadia's *Trekonomics*, and
Doctorow's *The Jubilee: Fill Your Boots*.

We also love Marcin Jakubowski's *Global Village Construction Set* and
see ourselves working in the same area, but with a slightly different focus.

Lastly, for it's incredible view of the history of science and technology,
we want to note James Burke's *Connections*. Some of us have found it very
inspiring to see not only how the different threads of our civilization are
woven together, but also to see how the path of history was shaped by small,
seemingly innocuous developments that turned out to be significant a century
or two later.
