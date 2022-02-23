+++
title = "Outside Your Comfort Zone"
[taxonomies]
tags = [
"comfort",
"simplicity"
]
+++

## Intro

Recently, I had a class which required conversion between a few numeric systems
such as binary (base2), decimal (the "normal" one we use, base10), and base16.

(It was actually a couple more, but for this blogpost only those three are relevant.)

A classmate of mine asked the professor if it was alright for him, in a
conversion between binary and base16, to convert to decimal as a middle step.
This initially seems as a good practice. Since decimal is a system that we've
all used since we learned to count, it makes sense to want to use it as a
middleground between two unknown systems.

In a situation where time and success are critical, it's natural to want to
stick to what you already know.

## The Problem with this Approach

In principle, I don't necessarily advise people to stray from their comfort
zone when performing a critical task; when dealing with little margin for error,
one should always exercise caution and stick to what works. However, in class,
it's **experimentation time**.

## Reasoning

For numerical systems that share a common base (base16 is, technically, base2^4),
conversion is actually **simpler** than it would be using a different system
with an incongruous base as a middleground. To prove this, let's do a little math...

### The Smart, But "Uncomfortable" Way

For a base16 number, each of its figures can be represented as 4 figures in binary.
Therefore, if the number were to be `52` in base16, then the `5` would be `0101`
and the `2` would be `0010`. Problem solved. Steps taken: 2. (3, if you wanna
count writing `01010010` together as a step.)

### The "Comfortable", But Convoluted Way

Whereas converting it to decimal would entail multiplying `5` by `16` and then
adding `2` to that, and **then** dividing `84` (the result of the previous
conversion) by `2` over and over again until the remainder is either `1` or `0`,
that's **six** divisions you have to carry out in order to convert a decimal
number of **two figures**.
Which then nets you `0101 0010`, which is the exact same result we reached
earlier. Steps: 7 (if you consider conversion from base16 to decimal a single
step, and I know you don't.)

## Conclusion

This was merely an example of the myriad of situations in which stretching your
limits a bit can save you tons of time. If you've read
[my previous post](../you-should-use-git/), then you know that, even though
learning to use it may seem difficult at first, it'll definitely save you lots
of headaches later on.
