<!-- Mike Williamson -->
<!-- 2016 -->

# Propositional Logic
Here are some notes for the parents, mostly.  You can go through it with your kids if you'd like, but I'm trying to keep the math club fun & "light".

## Quick Overview

Here we will work with [*Propositional Logic*](https://en.wikipedia.org/wiki/Propositional_calculus) (also called Propositional Calculus) and [*Predicate Logic*](https://en.wikipedia.org/wiki/Predicate_logic) (also called First-Order Logic or Predicate Calculus).

The easiest way to define these two forms of logic is by the difference between them, and via examples.


> Propositional Logic v. Predicate Logic: propositional logic studies "plain" statements focusing on particular truths, while predicate logic includes quantifiers and variables.

Well, yeah, that's great, but ***what does that mean??**

The following is a somewhat tenuous analogy, but think of propositional logic as <em>3 + 4 = 7</em> (True) or <em>5 + 2 = 11</em> (False), and predicate logic as <em>x + 7 = 14</em> (True when <em>x = 7</em>) or <em>x + 3 * y = 22</em> (True for certain combinations of <em>x</em> & <em>y</em>).

Lastly, propositional logic is not solely the purview of numbers. We'll mostly work with sentences.

## Examples of Propositional and Predicate Logic

But examples work best:

### Propositional Logic

> "Sparks is a dog and he can fly."

Some things to note:

 - logical *connectives*, such as "and" and "or", are allowed.
 - this is a **statement**, a sentence which, whether true or false, can at least be *assessed* as true or false.
     - For instance, questions like "How is Sparks feeling today?" or commands like "Get out of my face" are not part of propositional logic because they cannot be assessed as true or false.

### Predicate Logic

> "Someone likes fruitcake."

Some things to note:

 - now *variables* and *quantifiers* are allowed.
     - In the case above, ***someone*** acts as both the variable and the quantifier.
         - variable: we are not sure **who** likes fruitcake, just that *someone* does.
         - quantifier: we know that *at least one* person likes fruitcake.  (At least in this toy example!)

Let's give one more predicate logic example, to better understand this distinction.

> "All fish can swim."

Here there is no variable, but we still have the quantifier *all*.  This becomes important when we want to look at negations, which we'll discuss later.

         
We will talk in more detail on this topic later, but since we will *not cover probabilities or likelihoods*, there are only 4 types of quantifiers:

 - some (or "at least one"): this means there is at least 1 case that is true
 - all: all cases are true
 - not all ("at least one is not"): this means there is at least 1 case that is not true
 - none (or "all are not"): no cases are true
         
### Further details into Predicate Logic examples
         
Some examples to help understand these differences in the context of logic:

> "Someone likes fruitcake" (At least one person likes fruitcake.)

Just humoring me for a moment, if we were to assume the "*domain*" is everyone on Earth, we can assume this is ***true***.  (There is assuredly someone who likes it, although I am not really proving this in any rigorous way.)

> "No one likes fruitcake" (No people like fruitcake.)

**Notice:  this is different from saying "Everyone dislikes fruitcake".  Why??  Dislike is the *opposite* of like, but it is not the *negation* of like**.  There may be people who like fruitcake, dislike fruitcake, who don't care one way or the other, who love it, hate it, etc.

Using logic similar to above, "no one likes fruitcake" is likely ***true***.  Or, so say comedians who've run out of better jokes.


## Propositional Logic Statements

Propositional Logic involves the process of taking given truths, and validating (or invalidating) other statements using these given truths.  Therefore, we can only work with concepts where *true* and *false* even make sense.

In language, **statements** are sentences which are either true or false.  Here are some example statements:

 - Paris is the capital of France.
 - I have two brothers.
 - There is lost treasure hidden in College Park.

Note that the statements do *not need to be* true, they simply need to be either true or false.

But shouldn't any sentence be either true or false?  Nope!  Here are some sentences which are not statements:

 - Beyonce is an amazing musician. (opinion)
 - What time will we eat dinner? (question)
 - Hand me that pencil, please. (command)


## Statement Negations

The *negation* of a statement is ***not*** the opposite of the statement, at least not in rigorous logical terms.

Instead, the *negation* of a statement is the complementary statement which captures "everything else in the world".

Again, it's always best to work with examples:

###Statement:

> Harry is tall.

### Opposite:

> Harry is short.

### True negation:

> Harry is not tall.

Big deal, you say, right?

There is actually a **huge** conceptual difference between the negation of a statement and the opposite of the statement.

Let's imagine the **entire world** in our heads for a moment.  No, let's imagine the **entire universe**.  There are only 2 possibilities within that universe:  either Harry *is* tall, or Harry is *not* tall.  There is no other version of the universe.

What do I mean by that?  I mean that ***if*** "Harry is tall" is true, then "Harry is not tall" ***must be false***.  There is no other option.  However, if I instead used "Harry is short", then they could both be false.  (Maybe Harry is average size, or maybe tiny, or whatever.)



# Stuff to add at some point

I want to include this link to [definite descriptors](https://en.wikipedia.org/wiki/Definite_description) and this link to a [logic calculator](http://somerby.net/mack/logic/) and this link to [predicate logic](https://en.wikipedia.org/wiki/First-order_logic).



# Resources

I found some great resources, and wanted to provide them to you all.

The first one on this list, *Modern Math for Elementary Schoolers* is truly amazing!!  "Modern Math" is really what it says (relatively recently developed math), but most people call it "advanced math".  I prefer "modern math" because some of the concepts are not particularly advanced or complex, just things that we don't normally teach our kids.  The author did a great job sussing out what smart kids willing to learn could handle.

 - [Modern Math for Elementary Schoolers](http://old.naturalmath.com/DeltaStreamMedia/OlegGleizerModernMathematics_12_2011.pdf)
 - [Introduction to Symbolic Logic](./symbolic.logic.intro.pdf) (I'm not sure where I found this one originally.)
 - [Propositional Logic PPT](./propositional.logic.1.pdf) (Also not sure where I originally found it.)
 - Some fun [Lewis Carroll logic puzzles](./3E_Lewis_Carroll_Puzzles.pdf)
 - A [wikipedia link on logic](https://en.wikipedia.org/wiki/First-order_logic)
 - A [cute little logic calculator](http://somerby.net/mack/logic/)
 
