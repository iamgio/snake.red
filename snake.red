Red [
    Title: "snake.red"
    File: "%snake.red"
    Author: "iAmGio"
    Description: "Snake game written in Red"
    License: https://github.com/iAmGio/snake.red/blob/master/LICENSE
    Needs: 'View
]

#define SIZE: 600x450
#define FRAMERATE: 10

view [
    title "Snake"
    size SIZE
    
    at 0x0 root: box black SIZE rate FRAMERATE draw [
        ; to-do: content
    ] on-time [
        ; to-do: triggered {FRAMERATE} times every second
    ]

    do [
        actors: context [
            on-key-down: func [face event] [
                 ; to-do: triggered on key press
            ]
        ]
    ]
]