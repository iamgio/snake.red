Red [
    File: %util.red
]

collide: func [f s] [f/offset = s/offset]

random-location: func[] [
    x: multiply random (divide SIZE/x 20) 20
    y: multiply random (divide SIZE/y 20) 20
    make pair! (append append to string! x "x" to string! y)
]