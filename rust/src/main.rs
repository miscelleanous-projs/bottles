const BOTTLESNUMBER: i32 = 99;

fn bottles_count(i: i32) -> String {
    match i {
        -1 => format!("{} bottles", BOTTLESNUMBER),
        0 => String::from("No more bottles of beer"),
        1 => String::from("One bottle of beer"),
        _ => format!("{} bottles of beer", i),
    }
}

fn take_or_buy(i: i32) -> String {
    match i {
        0 => String::from("Go to the store and buy some more"),
        _ => String::from("Take one down, pass it around"),
    }
}

fn on_the_wall(yes: bool) -> String {
    match yes {
        true => String::from(" on the wall"),
        _ => String::new(),
    }
}

fn main() {
    for i in (0..=BOTTLESNUMBER).rev() {
        println!("\n{}{}", bottles_count(i), on_the_wall(i != 0));
        println!("{}", bottles_count(i));
        println!("{}", take_or_buy(i));
        println!("{}{}", bottles_count(i - 1), on_the_wall(i != 0));
    }
}
