<!-- Mike Williamson -->
<!-- 2016 -->

# Propositional Logic
Here are some notes for the parents, mostly.  You can go through it with your kids if you'd like, but I'm trying to keep the math club fun & "light".

## Quick Overview

Here we will work with [*Propositional Logic*](https://en.wikipedia.org/wiki/Propositional_calculus) (also called Propositional Calculus) and [*Predicate Logic*](https://en.wikipedia.org/wiki/Predicate_logic) (also called First-Order Logic or Predicate Calculus).

The easiest way to define these two forms of logic is by the difference between them, and via examples.

Below are two sources that capture the essence, but in fairly different ways:

> Propositional Logic v. Predicate Logic: propositional logic studies "plain" statements focusing on particular truths, while predicate logic includes quantifiers and variables.

and

> Propositional Logic v. Predicate Logic: In propositional logic, we use letters to symbolize entire propositions... In predicate logic, we symbolize subject and predicate separately.

(I forget where I found the first quote, but you can find the [second quote here](https://www.quora.com/What-is-the-precise-difference-between-propositional-and-predicate-logic).)

Well, yeah, that's great, but ***what does that mean??***

The link above goes on to give an example, by introducing symbols.  We'll get to the symbols later, but the point is fairly clear.

 - Propositional logic: "Socrates is a man" would be represented simply as $$S$$.  It is a statement, a single statement.
 - Predicate logic: "Socrates is a man" would be represented as the combination of the *subject* (Socrates) and the *predicate* (to be a man).  Therefore, it would be represented as $$Ms$$.
     - (Typically the predicates are in capital letters and the subjects in small letters.)


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

### ***True negation***:

> Harry is not tall.

Big deal, you say, right?

There is actually a **huge** conceptual difference between the negation of a statement and the opposite of the statement.

Let's imagine the **entire world** in our heads for a moment.  No, let's imagine the **entire universe**.  There are only 2 possibilities within that universe:  either Harry *is* tall, or Harry is *not* tall.  There is no other version of the universe.

What do I mean by that?  I mean that ***if*** "Harry is tall" is true, then "Harry is not tall" ***must be false***.  There is no other option.  However, if I instead used "Harry is short", then they could both be false.  (Maybe Harry is average size, or maybe tiny, or whatever.)

## Compound Statements: "And"

For those of you who do some computer programming, that "negation" concept probably seems familiar.  Here's another one, compound statements.

We'll look here at combining statements using *and*, starting with some examples.

> Paris is the capital of France and it is the most populous city in the world.

This is a statement.  **The statement is false**.  But why is this statement false?  Because ***at least one of the statements is false***.

When combining statements via a compound statement using "and", for the combined statement to be true, both parts of it have to be true.

To sound fancy, in propositional logic, this *and* is referred to as a "***conjunction***".

## Compound Statements: "Or"

Again, jumping straight into an example:

> Paris is the capital of France or it is the most populous city in the world.

This is a true statement, unlike above.  This is because a compound statement created using *or* only requires **one** of the portions of the compound statement to be true.

However, the logical *or* works slightly differently from the "or" that we use in normal speaking language.  For instance, the statement

> You can eat dessert or stay up late.

is interpreted in colloquial English to mean that you can either eat dessert or you can stay up late, ***but you cannot do both***.

This is **not how logical *or* works**!  The logical or means either or both of the statements can be true in order for the statement to be true.

To sound fancy, in propositional logic, this *or* is referred to as a "***disjunction***".

  (There is another logical gadgetry called an *xor*, for "eXclusive OR", which works the way we normally intend within colloquial English.)

## Symbolic Logic

Earlier we saw an example of a generalized logic concept, the negation. After that, the *or* and *and*, defined in tight logical terms. There are several others that we'll be exposed to, enough that we want to set up some symbols so that it becomes easier to understand what we're working with.

Again, it's easiest to look via example. Let's take a few statements:

> Pink is a mixture between white and red.

> My dog can fly.

> My cat is small.

I can start combining these statements, or negating them, to make statements with different meaning, and different "[truthiness](http://www.cc.com/video-clips/63ite2/the-colbert-report-the-word---truthiness)".

For instance:

> My dog can fly, or pink is a mixture between white and red.

> Pink is not a mixture between white and red, and my cat is small.

But even with these fairly simple examples, it becomes fairly laborious to combine the statements.  More importantly, in more complex cases, it's unclear what, for instance, is the right way to negate a sentence.

So we should introduce some symbols to simplify things, and more importantly, to ensure consistency.

Let's revisit our original sentences:

> Pink is a mixture between white and red. (p)

> My dog can fly. (d)

> My cat is small. (c)

After each sentence, I provided a letter, which will act as the shorthand for the statement.

We also need to introduce some symbols to represent these logical terms we've introduced:

 - not: $$\neg$$ (or sometimes *~* )
 - and: $$\land$$
 - or: $$\lor$$

So, I can write something like

> d $$\lor$$ p

> ~p $$\land$$ c

The nice thing about using these symbols, is that guaranteed truths, or *tautologies* become much easier to spot:

The statement

> ~g $$\lor$$ g

***must*** be true, regardless of what "g" actually stands for.

Similarly, the statement

> ~g $$\land$$ g

***must*** be false, regardless of what "g" actually stands for.

## Truth Tables

That brings us up to our last concept for this lesson: truth tables.

We started by saying that statements are sentences which can either be true or false.  We then mentioned that a statement's *negation* will be true whenever the original statement is false, or vice-versa.  Then we introduced compound statements using *and* and *or*, which impacts whether the statement is true.

Let's look at all of these relationships, using what are called truth tables.

First, let's take our generic statement, whichever statement you'd like, and call that statement "*p*".  And let's call a different generic statement "*q*".  Here are our tables, so far:

### Negation

| p | ~p |
| --- | --- |
| T | F |
| F | T |

Let's break down what's happening with this simple table:

 - The first row lists **all** of the statement permutations.  Since we're simply looking at a statement and its negation, we just have those two.
 - Then along all of the original statements, we write out all of their possibilities.
     - Since we only have 1 statement, *p*, there are only 2 possible outcomes, either *p* is true, or it is false.
     - We then figure out / calculate all the remaining columns and whether they are true or false.  In thise case, that is simply the *~p* column

To recap, any time *p* is true, *~p* is false, and vice-versa.  This can be quickly seen from the truth table.

### Conjunction (*and*)

| p | q | p $$\land$$ q |
| --- | --- | --- |
| T | T | T |
| F | T | F |
| T | F | F |
| F | F | F |

As we can see, only the first case - when both are true - is the conjunction true.

### Disjunction (*or*)

| p | q | p $$\lor$$ q |
| --- | --- | --- |
| T | T | T |
| F | T | T |
| T | F | T |
| F | F | F |

As we can see, only the last case - when both are false - is the disjunction false.

-----

We'll see more truth tables and symbols as we cover more material.



# Resources

I found some great resources, and wanted to provide them to you all.

The first one on this list, *Modern Math for Elementary Schoolers* is truly amazing!!  "Modern Math" is really what it says (relatively recently developed math), but most people call it "advanced math".  I prefer "modern math" because some of the concepts are not particularly advanced or complex, just things that we don't normally teach our kids.  The author did a great job sussing out what smart kids willing to learn could handle.

 - [Modern Math for Elementary Schoolers](http://old.naturalmath.com/DeltaStreamMedia/OlegGleizerModernMathematics_12_2011.pdf)
 - [Introduction to Symbolic Logic](./symbolic.logic.intro.pdf) (I'm not sure where I found this one originally.)
 - [Propositional Logic PPT](./propositional.logic.1.pdf) (Also not sure where I originally found it.)
 - Some fun [Lewis Carroll logic puzzles](./3E_Lewis_Carroll_Puzzles.pdf)
 - A [wikipedia link on logic](https://en.wikipedia.org/wiki/First-order_logic)
 - A [cute little logic calculator](http://somerby.net/mack/logic/)
 
