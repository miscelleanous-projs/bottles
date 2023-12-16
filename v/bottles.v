const bottles_number = 99

fn bottles_count(i int) string {
    return match i {
		-1 {'${bottles_number} bottles'}
		0 {'No more bottles of beer'}
		1 {'One bottle of beer'}
        else {'${i} bottles of beer'}
    }
}

fn take_or_buy(i int) string {
    return match i {
		0 {'Go to the store and buy some more'}
		else {'Take one down, pass it around'}
    }
}

fn on_the_wall(yes bool) string {
    return match yes {
		true {' on the wall'}
		else  {''}
    }
}

fn main() {
    for i := bottles_number; i >= 0; i -= 1 { // for i in 0 .. bottles_number + 1 {
        println('\n${bottles_count(i)}${on_the_wall(i != 0)}')
        println('${bottles_count(i)}')
        println('${take_or_buy(i)}')
        println('${bottles_count(i - 1)}${on_the_wall(i != 0)}')
    }
}