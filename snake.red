Red [
    Title: "snake.red"
    File: "%snake.red"
    Author: "iAmGio"
    Description: "Snake game written in Red"
    License: https://github.com/iAmGio/snake.red/blob/master/LICENSE
    Needs: 'View
]

view [
    title "Snake"
    size 600x450

    do [
        actors: context [
            on-key-down: function [face event] [
                ;to-do
            ]
        ]
    ]
]