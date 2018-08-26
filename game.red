Red [
    File: %game.red   
]

game: none
snake: none
candy: none

start-game: func[] [
    snake: [
        [
            x: 20 y: 20 direction: right
        ]
    ]
    candy: object [
        x: random SIZE/x
        y: random SIZE/y
    ]
]

end-game: func[] [
    game: none
]

update: func[] [

]

get-part-x: func[i] [pick pick snake i 2]
get-part-y: func[i] [pick pick snake i 4]
get-part-direction: func[i] [pick pick snake i 6]