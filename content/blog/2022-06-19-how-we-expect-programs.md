+++
title = "How We Expect Programs To Behave"
date = 2022-06-19T08:00:41Z
[taxonomies]
tags = [
"programming"
]
+++

A recent assignment for a university course I'm taking has me thinking about the way we might expect the behavior of a program to occur.
Living in a UNIX context (due to using Linux as my daily driver), I generally expect the utility programs I use to go through the following process:

1. Start up.
2. Gather input.
3. Process input.
4. Output result **or** show an error, and quit.

This sounds pretty normal in my eyes, but some teachers are inclined more towards the process of:

1. Start program.
2. Program asks for input.
3. If input is correct, process it; if not, loop back and ask user to try again.

This process is expected to happen for every single input expected from the user for the lifetime of the process. This comes off as pretty clunky, and the code reflects that.

```rust
use std::io;

use regex::Regex;

fn main() {
    let mut condition = true;
    let mut input_invalid = true;
    while condition {
        let mut year_input = String::new();
        while input_invalid {
            println!("Ingrese un año: ");
            io::stdin().read_line(&mut year_input).expect("Fallo");
            input_invalid = !Regex::new("^[1-9]+$").unwrap().is_match(year_input.trim());
            if input_invalid {
                println!("La entrada necesita ser de números solamente");
            }
        }
        input_invalid = true;
        let clean_input = year_input.trim();
        if is_leap_year(clean_input.parse().unwrap()) {
            println!("El año {} es bisiesto", &clean_input);
        } else {
            println!("El año {} NO es bisiesto", &clean_input);
        }
        let mut must_confirm = true;
        while must_confirm {
            println!("Desea continuar? [y/n]");
            let mut confirm = String::new();
            io::stdin()
                .read_line(&mut confirm)
                .expect("confirmación falló");
            must_confirm = !Regex::new("^(?:y|n)$").unwrap().is_match(confirm.trim());
            condition = !matches!(confirm.trim(), "n")
        }
    }
}

fn is_leap_year(year_input: u32) -> bool {
    if Regex::new(r#"00$"#)
        .unwrap()
        .is_match(&year_input.to_string())
    {
        year_input % 400 == 0
    } else {
        year_input % 4 == 0
    }
}
```

As you can see, there are quite a few loops that exist only to nag the user into providing a correct input.

Input validation in this style might work well when it comes to using graphically presented forms, where the person can re-evaluate the information they introduced; it is not so for interactive inputs in a one-shot CLI program since it's incredibly uncomfortable to "go back" and edit different inputs you've previously provided.

A much simpler (and actually closer in practicality to normal web forms) approach is to use flags or command line arguments, this allows the person to edit, in a single view, all the information they are passing to the program _even before_ said program executes. This also allows for a much more standard way of designing said program, as most languages either provide a library designed for CLI applications, or the ecosystem has a few third-party libraries for the same purpose. In the case of Rust (the language used to make the program above), there's the (clap crate)[https://docs.rs/clap/latest/clap/], which provides many useful functions for this endeavor.
