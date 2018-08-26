Red [
    File: %direction.red
]

#define up: 0
#define right: 1
#define down: 2
#define left: 3

is-opposite: func[old [integer!] new [integer!]] [
    i: absolute subtract old new
    return i = 2
]