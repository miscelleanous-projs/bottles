import std.stdio;
import std.format;

enum BOTTLESNUMBER = 99;

string bottlesCount(int i) {
    switch (i) {
        case -1:
            return format("%d bottles", BOTTLESNUMBER);
        case 0:
            return "No more bottles of beer";
        case 1:
            return "One bottle of beer";
        default:
            return format("%d bottles of beer", i);
    }
}

string takeOrBuy(int i) {
    switch (i) {
        case 0:
            return "Go to the store and buy some more";
        default:
            return "Take one down, pass it around";
    }
}

string onTheWall(bool yes) {
    switch (yes) {
        case true:
            return " on the wall";
        default:
            return "";
    }
}

void main() {
    foreach_reverse (i; 0 .. BOTTLESNUMBER + 1) {
        writefln("\n%s%s", bottlesCount(i), onTheWall(i != 0));
        writefln("%s", bottlesCount(i));
        writefln("%s", takeOrBuy(i));
        writefln("%s%s", bottlesCount(i - 1), onTheWall(i != 0));
    }
}
