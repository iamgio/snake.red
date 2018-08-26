Red [
    File: %game.red   
]

game: none
snake: none
candy: none
parts-amount: none

start-game: func[] [
    snake: make map! ["1x" 20 "1y" 20 "1d" 1]
    parts-amount: 1
    candy: object [
        x: multiply random (divide SIZE/x 20) 20
        y: multiply random (divide SIZE/y 20) 20
        location: make pair! (append append to string! x "x" to string! y)
    ]
]

end-game: func[] [
    game: none
    snake: none
    candy: none
    parts-amount: none
]

set-head-direction: func[direction] [
    if not is-opposite get-part-direction 1 direction [
        put snake "1d" direction
    ]
]

move: func[] [
    head-direction: select snake "1d"
    case [
        head-direction = up    [put snake "1y" (subtract select snake "1y" PART-SIZE/y)]
        head-direction = right [put snake "1x" (add      select snake "1x" PART-SIZE/x)]
        head-direction = down  [put snake "1y" (add      select snake "1y" PART-SIZE/y)]
        head-direction = left  [put snake "1x" (subtract select snake "1x" PART-SIZE/x)]
    ]
    i: 2
    loop parts-amount - 1 [
        wait divide 1 FRAMERATE
        i-string: to string! i
        put snake append i-string "x" select snake "1x"
        put snake append i-string "y" select snake "1y"
        put snake append i-string "d" select snake "1d"
        i: i + 1
    ] 
]

get-part-x: func[i] [select snake (append to string! i "x")]
get-part-y: func[i] [select snake (append to string! i "y")]
get-part-direction: func[i] [select snake (append to string! i "d")]
get-part-location: func[i] [
     x: get-part-x i
     y: get-part-y i
     make pair! (append append to string! x "x" to string! y)
]