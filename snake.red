Red [
    Title: "snake.red"
    File: %snake.red
    Author: "iAmGio"
    Description: "Snake game written in Red"
    License: https://github.com/iAmGio/snake.red/blob/master/LICENSE
    Needs: 'View
]

#include %./direction.red
#include %./game.red

#define SIZE: 600x500
#define FRAMERATE: 10
#define PART-SIZE: 20x20

random/seed now/time

start-game

view [
    title "Snake"
    size SIZE
    backdrop black

    at get-part-location 1 
        snake-head: box white PART-SIZE
    
    at candy/location
        candy: box yellow PART-SIZE
    
    at -100x-100 box black 0x0 rate FRAMERATE on-time [
        move
        snake-head/offset: get-part-location 1
        ; game loop: triggered {FRAMERATE} times every second
    ]

    do [
        actors: context [
            on-key-down: func[face event] [
                case [
                    event/key = to word! "up"    [set-head-direction up]
                    event/key = to word! "right" [set-head-direction right]
                    event/key = to word! "down"  [set-head-direction down]
                    event/key = to word! "left"  [set-head-direction left]
                ]
                ; triggered on key press
            ]
        ]
    ]
]