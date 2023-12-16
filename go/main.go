package main

import "fmt"

const BOTTLESNUMBER = 99

func main() {
	bottlesCount := func(i int) string {
		switch i {
		case -1:
			return fmt.Sprintf("%d bottles", BOTTLESNUMBER)
		case 0:
			return "No more bottles of beer"
		case 1:
			return "One bottle of beer"
		default:
			return fmt.Sprintf("%d bottles of beer", i)
		}
	}

	takeOrBuy := func(i int) string {
		switch i {
		case 0:
			return "Go to the store and buy some more"
		default:
			return "Take one down, pass it around"
		}
	}

	onTheWall := func(yes bool) string {
		switch yes {
		case true:
			return " on the wall"
		default:
			return ""
		}
	}

	fmt.Printf("")
	
	for i := BOTTLESNUMBER; i >= 0; i-- {
		fmt.Printf("\n%s on the wall\n", bottlesCount(i))
		fmt.Printf("%s\n", bottlesCount(i))
		fmt.Printf("%s\n", takeOrBuy(i))
		fmt.Printf("%s%s\n", bottlesCount(i-1), onTheWall(i != 0))
	}

	fmt.Printf("")
}
