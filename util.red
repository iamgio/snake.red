Red [
    File: %util.red
]

collide: func [f s] [f/offset = s/offset]

random-location: func[] [
    x: multiply random (divide (subtract (subtract SIZE/x 40) 40) 20) 20
    y: multiply random (divide (subtract (subtract SIZE/y 40) 40) 20) 20
    make pair! (append append to string! x "x" to string! y)
]