---
title: Overall Design of the ReFactor Loom
author: beka
date: 2020-05-25
categories:
  - ReFactor
tags:
  - Loom
  - Convivial Technology
---

One of the first subprojects we're working on as part of ReFactor is a loom. We
decided on a loom partially because it's a nice, complex piece of machinery with
a bunch of different aspects that are tied to the path dependence problem, but
also partially because it's arguably the machine that kicked off the First
Industrial Revolution in the 1700s.

This is going to be a short blog post giving an overview of the loom as it's
currently conceived, and we'll add some more posts documenting its progress and
the changes to the design that we end up making.

As always, all of the designs for these projects are on GitHub. The loom in
particular is [here](https://github.com/queeriouslabs/ReFactor/tree/master/loom).

<!--more-->

## Design Constraints

When we set out to work on a loom, we decided to focus primarily on making it
quick and easy to set up. As mentioned in the overview of ReFactor, looms are a
_huge_ pain in the ass. One of the main reasons is the complexity and time
required to set up a loom. One part in particular, the heddles, are a nightmare.

The heddles on a loom serve to grasp the wrap threads, which must be moved up
and down in various ways to do the actual weaving process. Typically, heddles
are some kind of loop suspended on rods or thread. Each warp thread passes
through a single heddle loop. A single loom can have hundreds or thousands of
heddle loops, and each warp thread must be manually threaded through the loops.

<center>
  <a href="https://en.wikipedia.org/wiki/File:Heddle1.JPG">
    <img
      alt="Closeup of metal heddles and warp threads"
      src="/blog/refactor-loom-overall-design/images/heddles-1-small.jpeg"
      />
  </a>
  <a href="https://en.wikipedia.org/wiki/File:Heddle2.JPG">
    <img
      alt="Wide shot of metal heddles and warp threads showing a large number of heddles"
      src="/blog/refactor-loom-overall-design/images/heddles-2-small.jpeg"
      />
  </a>
</center>

This process is incredibly time consuming, as you can see in the video below,
which demonstrates this process for a loom with heddles made of string.
Therefore, one of the design constraints we have is that threading the heddles
must be fast. Our goal is less than 5 minutes.

<center>
  <iframe width="280" height="157" src="https://www.youtube.com/embed/VbNl_nYI5qc?start=324" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</center>

The same issues are true of the beater and reed. The reed is typically a series
of thing metal rods or wires called dents (because "teeth"), which kind of look
like a comb but closed on both sides. Threading the reed is just as time
consuming as threading the heddles.

<center>
  <a href="https://en.wikipedia.org/wiki/File:WeavingReed2.JPG">
    <img
      alt="Closeup of metal reed"
      src="/blog/refactor-loom-overall-design/images/reed-1-small.jpeg"
      />
  </a>
  <a href="https://en.wikipedia.org/wiki/File:LoomWithViewOfReed.JPG">
    <img
      alt="Wide shot of metal reed with warp threads"
      src="/blog/refactor-loom-overall-design/images/reed-2-small.jpeg"
      />
  </a>
</center>

We also want the loom to be automatic. The process of manually weaving fabric is
incredibly time consuming and boring. It's one thing to operate a loom for the
zen relaxation of the whole experience, but there just aren't enough people in
the world who want or need that to produce all the textiles we need. But unlike
most of the kinds of tools that hackers typically design, we want to avoid using
computer control. Computers are a cheap, but they're an unnecessary tangle with
global supply chains, so if you can get away without computers, then the design
is improved. Given that no automatic loom used a computer to control it until
fairly recently, relying instead of standard mechanical design principles for
control, this isn't a huge constraint.

A happy benefit of not relying on computers for control also means that the loom
we end up with could in principle run in places without substantial amounts of
reloable electricity. Wind, water, pedal power, etc. would all work.

## Design Components

To address the 5 minute constraint on setup time, the design of the heddles and
reed simply cannot be close loops as is common. They have to instead be fully
open. Some looms, such as tapestry looms, already make use of such a design for
both the heddle and reed. In those designs, you have what are called heddle
bars, which are rods with slots cut in them at different angles to raise the
warp threads. There are [lots of images on Google](https://www.google.com/search?q=heddle+bar&tbm=isch) that demonstrate the principle.

For our loom, we've decided to use something similar to a heddle bar. Our
heddles consist of a stack of cams on a rod, separated by disks. The disks form
channels that each warp thread sits in, unable to move left or right. As the
cams rotate, they lift and lower the threads, like a heddle bar. We place the
cams at 180&deg; angles so that they raise alternate heddles, but you could in
principle put them at multiple angles, in different sequences, to weave more
complicated patterns. Below you can see a prototype of what the heddles will
look like.

<center>
  <img
    alt="Cam heddles with disks partially visible"
    src="/blog/refactor-loom-overall-design/images/cam-heddles-prototype.jpeg"
    />
</center>

One reason we want to use cams and disks instead of heddle bars is that, while
heddle bars are much much simpler and faster to make, every heddle on it is
rotated simultaneously. This limits the designs you can make to simple
repeating patterns. This is analogous to how non-jacquard looms are
constrained. By using cams, we could theoretically put gear teeth on the
heddles and drive each one independently with a rack and pinion mechanism,
connected to something like a jacquard control mechanism.

Another design component is the weft thread insertion mechanism. There are a
variety of mechanisms that exist in industrial looms currently. Shuttles are the
classic design, where the weft thread moves back and forth through the sheds on
a shuttle that carries the bobbin. These of course are heavy, and therefore
slow, and they have a limited amount of thread they can carry, so flying shuttle
looms require operators to periodically change out the bobbins. Air and water
jet looms carry the weft thread across the shed by means of jets of air/water
moving down a channel, and kind of end up looking like a vacuum cleaner sucking
up the thread. These have the disadvantage of needing complex reeds to channel
auxiliary booster air/water, and also need pumps. Projectile looms use a small
shuttle-like object with a hook to grab thread and move it across the shed.
They typically require multiple projectiles to operate at high speeds, and
need somewhat complicated transport mechanisms to return the projectiles to the
originating side of the loom. Rapier looms are a purely design that uses a
retractable arm (or two) to move the thread across the shed. Rigid rapier looms
have the disadvantage of being very wide (twice the width of the woven fabric,
because the rapier needs to both span the fabric and also fully clear it when
retracted), but flexible rapier looms can use tape measure-like coils of metal
to act as the rapier and take up much less space. You can see explanations of
these mechanisms in this video:

<center>
  <iframe width="280" height="157" src="https://www.youtube.com/embed/s0W0iDj7_hc" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</center>

We've decided to go with a flexible rapier design because they can be fast, and
allow effectively unlimited fabric length with no operator required to oversee
the loom. Since tape measures are rather abundant and cheap, the rapier itself
can be a repurposed one, making the mechanism effectively a commodity item at
this point. All that's required is to add some helper mechanisms to provide the
thread and manage it during weaving. We might at some point also look into
projectile looms as well.

There are some newer kinds of looms, called multiphase looms, developed in the
last decade or two, that use complex structures to manage the weft thread. Some
of these may be good designs to look into for future versions of the ReFactor
loom, but they're exclusively industrial machines, currently, and would
probably need to be prototyped more than an older, more established loom design.
They also have the disadvantage of being able to do only simple designs, so
don't have the potential to scale in quite the same way as the current loom. You
can see two very different multiphase looms in the videos below.

<center>
  <iframe width="280" height="157" src="https://www.youtube.com/embed/s7ZD0HufFMQ" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

  <iframe width="280" height="157" src="https://www.youtube.com/embed/AEzWFNEqFHg" frameborder="0" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</center>
