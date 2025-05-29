(define (problem p1)
(:domain d1)
(:objects
c3 - CELL
c2 - CELL
c1 - CELL
c4 - CELL
c0 - CELL
)
(:init
(dirty c3)
(dirty c2)
(dirty c1)
(dirty c0)
(dirty c4)
(pos c0)
(linked c2 c3)
(linked c0 c1)
(linked c1 c2)
(linked c3 c4)
)
(:goal
(and (clean c0)
  (clean c1)
  (clean c2)
  (clean c3)
  (clean c4))
))