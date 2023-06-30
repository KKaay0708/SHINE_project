

(define (problem painting-problem)
  (:domain painting)
  (:objects
    tile_0-1 tile_0-2 tile_0-3 tile_0-4 tile_0-5
    tile_1-1 tile_1-2 tile_1-3 tile_1-4 tile_1-5
    tile_2-1 tile_2-2 tile_2-3 tile_2-4 tile_2-5
    tile_3-1 tile_3-2 tile_3-3 tile_3-4 tile_3-5
    tile_4-1 tile_4-2 tile_4-3 tile_4-4 tile_4-5
    tile_5-1 tile_5-2 tile_5-3 tile_5-4 tile_5-5
    robot1 robot2
    white black
  )
  (:init
    (at robot1 tile_4-1)
    (at robot2 tile_0-3)
    (color white tile_1-1)
    (color black tile_1-2)
    (color white tile_1-3)
    (color black tile_1-4)
    (color white tile_1-5)
    (color black tile_2-1)
    (color white tile_2-2)
    (color black tile_2-3)
    (color white tile_2-4)
    (color black tile_2-5)
    (color white tile_3-1)
    (color black tile_3-2)
    (color white tile_3-3)
    (color black tile_3-4)
    (color white tile_3-5)
    (color black tile_4-1)
    (color white tile_4-2)
    (color black tile_4-3)
    (color white tile_4-4)
    (color black tile_4-5)
    (color white tile_5-1)
    (color black tile_5-2)
    (color white tile_5-3)
    (color black tile_5-4)
    (color white tile_5-5)
  )
  (:goal (and
    (color white tile_1-1)
    (color black tile_1-2)
    (color white tile_1-3)
    (color black tile_1-4)
    (color white tile_1-5)
    (color black tile_2-1)
    (color white tile_2-2)
    (color black tile_2-3)
    (color white tile_2-4)
    (color black tile_2-5)
    (color white tile_3-1)
    (color black tile_3-2)
    (color white tile_3-3)
    (color black tile_3-4)
    (color white tile_3-5)
    (color black tile_4-1)
    (color white tile_4-2)
    (color black tile_4-3)
    (color white tile_4-4)
    (color black tile_4-5)
    (color white tile_5-1)
    (color black tile_5-2)
    (color white tile_5-3)
    (color black tile_5-4)
    (color white tile_5-5)
  ))
  (:action change-color
    :parameters (?robot ?color)
    :precondition (and (at ?robot) (not (color ?color ?robot)))
    :effect (and (color ?color ?robot) (not (color ?color ?robot)))
  )
  (:action paint-up
    :parameters (?robot ?tile ?color)
    :precondition (and (at ?robot ?tile) (color ?color ?robot) (not (color ?color ?tile)))
    :effect (and (color ?color ?tile) (not (color ?color ?tile)))
  )
  (:action paint-down
    :parameters (?robot ?tile ?color)
    :precondition (and (at ?robot ?tile) (color ?color ?robot) (not (color ?color ?tile)))
    :effect (and (color ?color ?tile) (not (color ?color ?tile)))
  )
  (:action move-up
    :parameters (?robot ?tile)
    :precondition (and (at ?robot ?tile) (not (color ?color ?tile)))
    :effect (and (at ?robot ?tile) (not (at ?robot ?tile)))
  )
  (:action move-down
    :parameters (?robot ?tile)
    :precondition (and (at ?robot ?tile) (not (color ?color ?tile)))
    :effect (and (at ?robot ?tile) (not (at ?robot ?tile)))
  )
  (:action move-right
    :parameters (?robot ?tile)
    :precondition (and (at ?robot ?tile) (not (color ?color ?tile)))
    :effect (and (at ?robot ?tile) (not (at ?robot ?tile)))
  )
  (:action move-left
    :parameters (?robot ?tile)
    :precondition (and (at ?robot ?tile) (not (color ?color ?tile)))
    :effect (and (at ?robot ?tile) (not (at ?robot ?tile)))
  )
)