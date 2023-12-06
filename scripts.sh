# from https://github.com/hyper-neutrino/advent-of-code
set AOC="~/aoc"
set AOC_COOKIE="											
53616c7465645f5f15f7c696922c22cb6a9dd4e2259aaab591d29a954d918827b0ccd33245144fd997824777e6c1fc6a00f4e72f587feb359964b5901ae9cb1b"

function pull-aoc () {
    folder="$1/day$2"
    eval "cargo new $folder"
    curl --cookie "session=$AOC_COOKIE" https://adventofcode.com/$1/day/$2/input > ./$1/day$2/in.txt
    touch ./$1/day$2/test1.txt
    touch ./$1/day$2/test2.txt
}