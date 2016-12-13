---
title: "Math Club - Logic"
author: "Mike Williamson"
date: "December, 2016"
output:
  html_document:
    number_sections: yes
    toc: yes
    toc_depth: 2
  pdf_document:
    toc: yes
  word_document: default
fontsize: 12pt
---

```{r echo=FALSE, message=FALSE}
library(ggplot2)
```

# Quick Overview

Here we will work with [*Propositional Logic*](https://en.wikipedia.org/wiki/Propositional_calculus) (also called Propositional Calculus) and [*Predicate Logic*](https://en.wikipedia.org/wiki/Predicate_logic) (also called First-Order Logic or Predicate Calculus).

The easiest way to define these two forms of logic is by the difference between them, and via examples.


> Propositional Logic v. Predicate Logic: propositional logic studies "plain" statements focusing on particular truths, while predicate logic includes quantifiers and variables.

Well, yeah, that's great, but ***what does that mean??** The following is a somewhat tenuous analogy, but think of propositional logic as $3 + 4 = 7$ (True) or $5 + 2 = 11$ (False), and predicate logic as $x + 7 = 14$ (True when $x = 7$) or $x + 3 \times y = 22$ (True for certain combinations of $x$ & $y$).

-----

## Examples of Propositional and Predicate Logic

But examples work best:

> Propositional Logic:  "Sparks is a dog and he can fly."

Some things to note:

 - logical *connectives*, such as "and" and "or", are allowed.
 - this is a **statement**, a sentence which, whether true or false, can at least be *assessed* as true or false.
     - For instance, questions like "How is Sparks feeling today?" or commands like "Get out of my face" are not part of propositional logic because they cannot be assessed as true or false.

-----

> Predicate Logic: "Someone likes fruitcake."

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
         
## Further details into Predicate Logic examples
         
Some examples to help understand these differences in the context of logic:

> "Someone likes fruitcake" (At least one person likes fruitcake.)

Just humoring me for a moment, if we were to assume the "*domain*" is everyone on Earth, we can assume this is ***true***.  (There is assuredly someone who likes it, although I am not really proving this in any rigorous way.)

> "No one likes fruitcake" (No people like fruitcake.)

**Notice:  this is different from saying "Everyone dislikes fruitcake".  Why??  Dislike is the *opposite* of like, but it is not the *negation* of like**.  There may be people who like fruitcake, dislike fruitcake, who don't care one way or the other, who love it, hate it, etc.

Using logic similar to above, "no one likes fruitcake" is likely ***true***.  Humor me to let me move on without really proving that in any way.


# Propositional Logic





# Stuff to add at some point

I want to include this link to [definite descriptors](https://en.wikipedia.org/wiki/Definite_description) and this link to a [logic calculator](http://somerby.net/mack/logic/) and this link to [predicate logic](https://en.wikipedia.org/wiki/First-order_logic).


