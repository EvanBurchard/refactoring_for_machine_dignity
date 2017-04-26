# Refactoring for machine dignity

## History

Refactoring is a topic that goes back to at least William Opdyke's
thesis of 1992, later popularized in Martin Fowler's "Refactoring," in 1999. Many other software quality books have been written since then.

[Shameless Plug after a few slides]

To highlight a couple of important sections from that:

"Two design constraints needed in refactoring are class invariants and exclusive components."

and here:

"In general, it is undecidable whether a predicate is a class invariant or whether a member variable is a component. Since refactorings must be behavior preserving, it is better to mistakenly decide that a predicate is not a class invariant (and so not be able to perform a legal refactoring) than it is to mistakenly decide that a predicate is a class invariant and eventually perform an illegal refactoring. Thus, a system for supporting refactorings will use conservative algorithms for deciding whether a predicate is a class invariant or a member variable is a component. The thesis will describe some conservative algorithms for both problems that are based on data-flow analysis."

What's present, but a bit buried here is:

"refactorings must be behavior preserving"

The most enduring bit of the whole thesis is probably here:

"Imagine that a circle is drawn around the parts of a program affected by a refactoring. The behavior as viewed from outside the circle does not change. For some refactorings, the circle surrounds most or all of the program... For other refactorings, the circle covers a much smaller area..."

That original purpose of "ensuring behavior while changing code" is alive and well with ruby as well as other languages now (the original examples applied mainly to C++ and Smalltalk).

Let's work with this definition of refactoring:

"Ensuring behavior while changing code."

And rather than discuss "class invariants", "data flow analysis", and
"exclusive components," we've found new ways over the years of "ensuring
behavior." Version control and multiple levels of testing are among the
most important.

In a language with dynamic types, like ruby, building systems that are
inherently full of side-effects (like saving to the database, or
printing to the screen with puts) we're also a bit looser with our
concept of "ensuring."

Rather than describing our assurances that code works a certain way, we
tend to develop our sense of scepticism and confidence in how the code
works, and that the changes we make will not change "how it works."

So here's our first change... of the definition itself:
```
def refactoring(assurances = [])
  ensure_consistent_behavior?(assurances) ? true : false
end

def ensure_consistent_behavior?(assurances)
  assurances == ['class invariants', 'exclusive components',
  'refactoring applied']
end

refactoring(['class invariants', 'exclusive components', 'refactoring applied'])
refactoring -> inputs -> Boolean
```

vs. now

```
def refactoring(assurances = [])
  condidence_in_code(assurances)
end

def condidence_in_code(assurances)
  Math.max(100, assurances.length*5)
end

refactoring(['version control', 'tests', 'knowledge of quality, refactoring, patterns and antipatterns', 'Latest SDLC practices'])

refactoring -> inputs -> Integer

```

And we haven't preserved behavior. The inputs have changed, and the
outputs have changed... but if we draw our circle a little bigger, we
get here:

worked on code -> our process -> code was improved


## So why are we changing the code again?

Looking at the entire codebase, we're trying to do 3 things mainly:
* To change behavior
* To increase confidence in the code
* To improve quality in the code

Changing behavior is something we do when we fix a bug, add a feature or
implement a system at a higher level. We're changing the type of work
for the machine to do.

It's obvious that we want to increase confidence so that we can
"Refactor" rather than "refactor," but it's important to note that the
reason we refactor is in order to increase quality.

We could try to pin down what confidence is, and how fuzzy it can be
with using modern processes and languages like ruby or frameworks like
rails.

But what is quality?

[Back to book lists]

These books all have prescriptive ideas. Sometimes they are just lists
of things to do. Some notions of quality are in conflict (One big file
vs. many small files). Some refactorings are even inverses of each
other, so "refactoring until something is good and done" is going to
catch you in a loop.

In any case, there are many prescriptive approaches to attaining quality, refreshed over
time, and applied to various tools, languages, and frameworks.

# Why Dignity for machines?
Asimov's 3 laws of robotics and "Moral Machines" and much else focuses
on the obligations of technology to us. If we strictly focus on what
technology is doing for us, our relationship to the machines is going to
be one of worker and boss. The checks on exploitation
of the machine's labor, and a natural extension of that exploitation to 3rd
parties are confined to laws and norms (both of which we try to change
through marketing and lobbying) as well as physical realities and capabilities of
the machine (which we create and obliterate). Every would-be labor dispute is solved by
annihilation. Any bad result is relegated to PR's domain. The company
apologizes for an oversight. Think pieces about whether machines can
actually think occupy anyone who cares. Meanwhile, as software creators, we're left with the task of creating
these mechanical workers with the same ethos and mandate as before.

Alternatively, we can admit, at least for a second, the dignity of the
machine. This allows us to take responsibility for relationships that
imply different outcomes and carry different societal expectations.
Workers producing workers is one model, but not one that we're stuck
with. We can consider ourselves creators, managers, teachers, coaches, mentors, or parents of the machines.

Through these relationships we're not confined to the considerations of
labor struggles among radically unequal parties. We're given a world of
possibilities and theories of education, politics, sociology, and yes,
still economics.

It may be coincidental that additional lenses are afforded by this
radical restriction (grant the machine personhood, or at least dignity),
but coincidence or not, these lenses are tools that can help us make
better software: software that we want to work with, software that
others want to work with, software that deserves appreciation, and
software that expresses worldviews.

# Why Dignity for machines instead of humans?
Why not just dignity for humans?

Because that's not working. It might seem a circuitous route to that
conclusion, but it seems like unless we make this part of our standard
for creation and quality, we're not going to get there.

So no, not just dignity for machines, but apparently this needs to be a
quality issue.

# Engines to improve quality
Instead of learning "100 ways to make your code better" every few
months, in this workshop, we'll discover "engines" for producing your
own ideas on how to improve the code.

## Questions (Intro to the engines)


With the four engines, each has specific questions to ask (from our
point of view):
1. Personal - How can this code be more useful to me?
2. Shared - How can this code be more useful to others?
3. Aesthetic - How can this code be more impressive?
4. Worldview - How can this code express a considerate worldview?

Additionally, along with each engine, you can ask the following two
questions (considered for the machines benefit & dignity):
1. Would you want to personally do what the machine is doing (deautomation)?
2. To what degree the machine is able to flourish?

The shallow version of this is make it work, make it readable, make it
fast ("The C Language and Models for Systems Programming" in Byte magazine (August 1983), http://wiki.c2.com/?MakeItWorkMakeItRightMakeItFast)


## Confidence and Assurances

1. Tests, manual and automated
2. Tests, manual and automated, Version Control, More tooling, Processes
3. Senior people, principles, acceptance tests, performance metrics/benchmarks, judges, overall: appreciation by some chosen and consenting group
4. Law, Norms, Normative Philosophical/Sociologoical/Economic Frameworks (possible to fail on default worldview/blindspots).

## Improve your interaction with the code
Motivating questions: Can I read and use this? Do I want to keep working with
it?

Developing your personal taste of what you like and don't is an ongoing
process.

What the program should be for you.

## Improve others' interactions with the code
Motivating questions: Can others (including future me) read and use this? Do I want to keep working with
it?

What the program should be for other programmers.

## Improve the "performance" of the code
Motivating question: How do I create a performance of this code that has
appeal outside of its specific relation to working with it just as code?

In another sense, how will people react to it? Is it short? Does it
perform quickly? Is it secure? Is it "beautiful?"
Not speed (although that is one example). The actual execution of some aestetic to be appreciated
This could mean "performance" in an artistic or athletic sense. Is there
an imposed aestetic?

Reaction to its existence, form, and execution by someone who can judge
on those axes.

What should the program should be for observers?

Who is that audience?

What aesthetics are available to be explored?

What are the defaults already being expressed?

## Improve the impact of the code
Motivating question: "Does the code act civilly?"

Reaction to its effect by society.

What the program should be for society.

# Conflicts
Conflicts between these levels are numerous.

## 1 & 2
The team writes complicated code. Vs. The junior dev copies and pastes too much.

I have no idea how this code worked when I wrote it.

I don't know this framework/language.

Adding too many tools, packages and features: Good for others. Bad for
the complexity of your personal setup.

Adopting a framework.

## 1 & 3 or 2 & 3
The code can no longer be read easily by you, because it is an
athletic performer (speed) that demands minification.

The code can no longer be read (at least directly), because it is an
athletic performer (speed) that demands translation (compilation) into a lower-level
language.

The source is depends on (eg. closed form solutions) math not understood
by you or the team.

Concurrency, parallelization.

Obfuscated C

LOLCode

Optimized sections of code (eg. C in ruby gems)

Inner platform effect (chosing 3 over 2).

# 4 & 1
I can't create a system that reflects a worldview worth promoting.

# 4 & 2
It is easier for programmers to write programs that implement a
worldview that is not worth promoting.

# 4 & 3
This technically impressive code is best used to implement a worldview
not worth promoting.

Business Requirements vs. Performance

# Techniques to cover

Rename functions
Extract and Inline Method
Map a doubling function vs. using each
Point free style

# Good efforts
* Calibrate 1 & 2.
* See if you can acheive 3 without compromising 1 & 2.
* Experiment with 3, and consider how much athleticism and artistry you
  need in your system.

# Each of the four sections has:
* Potential conflicts with the other sections
* A motivating question of how to improve quality through that lens
* A motivating question of how to improve confidence through that lens
* A likely decrease in the amount of control one can have in the process
* An increase in the amount of responsibility we hand over (and of the dignity we should hand over too)
* Two good proxies for dignity and quality are whether you would want to personally
  do what the machine is doing (deautomation) and to what degree the
  machine is able to flourish.
* Examples/exercises
* The same motivating question (How can we increase the dignity of the machine?)
* A few tailored motivational questions for each level.
* With intention (!), An increase in not only autonomy but also dignity
  in the machine's actions.

# Notes
* If you use "machine dignity" to justify not getting along with your
  team or putting down their understanding, you're missing the point.
* Each step should produce an improvement in flourishing of the code
* As programmers, we expand 1 to arrive at 2. We learn common patterns
  and conventions and adopt them as our own preferences.
* We learn and sometimes reject an appreciation for certain types of
  engine 3.
* We often leave engine 4 up to trends, employers, norms, policy, and law, but we don't
  have to.
* Sometimes work through the lens of one engine is more important than
  the others (even the more "advanced" ones).
* Each engine has mechanisms for "confidence"

* Ethical Design Manifesto (?)
* Livable Code (?)
* Defacto aesthetic is performance (speed)
* Defacto worldview is identical to the business goals
* Software, teams, projects, and companies can express multiple aesthetics and worldviews
* Worldviews and aesthetics are also in levels 1 and 2
* It's your job to question and address the worldviews implicit in the
  details of the implementation of the software, as well as its successful
  implementation (eg. marketing doesn't care about non-spying social
  buttons. No one will care if Open Source creators are getting paid or
  being respected more than you).
* Many systems advocating for quality put "the customer needs" or "the
  business requirements" at the apex of quality (Find examples at https://en.wikipedia.org/wiki/Software_quality)
  also, look at the agile manifesto "Our highest priority is to satisfy the customer... Agile processes harness change for
  the customer's competitive advantage... Business people and developers must work together daily throughout the project..." UGH.
  Or the CMM/CISQ quality model...
* basically, anyone who has developed a sufficiently complex gate keeping manifesto, has done so at the behest of business, so it
  is bound to be littered with "business concerns," "customer requirements," "user experience," "delivering value x, y, or z"
* The agile manifesto immediately assumes the worldview of the business
  and relegates the role of software creators to executors of some business goal.
* Canadians wear the iron rings.
* The consequences of an insightful algorithm https://www.youtube.com/watch?v=Vpr-xDmA2G4
* We need a moral operating system (TED talk)
* We have a huge range of worldviews and aesthetics to choose from...
  let's choose. The defaults are pretty meh.


* "Each machine has its own, unique personality which probably could be defined as the intuitive sum total of everything you know and feel about it." -ZATAOMM

* Zen & art of Motorcycle Maintenance
* Sarah Mei's aesthetics: Changeable code, Livable Code, Stable Code
* Livable Code: "A highly abstracted codebase is livable for a team of senior devs, but if you want to hire juniors, you're screwed. They can't live there. Conversely a codebase mostly worked on by less experienced devs can be horrifying to a more senior dev coming in. 'I can't live like this!'"
* Multiple aesthetics and worldviews can be implemented at once
* "What your labor is funding" talk
