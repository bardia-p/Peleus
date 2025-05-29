(define (domain d1)
(:requirements :equality :strips :typing :non-deterministic)
(:types 
  CELL
)
(:predicates 
  (dirty ?v0 - CELL)
  (pos ?v0 - CELL)
  (clean ?v0 - CELL)
  (linked ?v0 - CELL ?v1 - CELL)
)
(:action suck1
  :parameters (?X - CELL)
  :precondition 
  (and (pos ?X)
    (and (dirty ?X)
      (linked c3 ?X)))
  :effect 
  (and (not (dirty ?X))
    (clean ?X)
    (oneof (and (not (dirty c48))
      (clean c48)) (and)))
)
(:action suck2
  :parameters (?X - CELL)
  :precondition 
  (and (pos ?X)
    (and (dirty ?X)
      (linked ?X c1)))
  :effect 
  (and (not (dirty ?X))
    (clean ?X)
    (oneof (and (not (dirty c1))
      (clean c1)) (and)))
)
(:action suck3
  :parameters (?X - CELL ?L - CELL ?R - CELL)
  :precondition 
  (and (pos ?X)
    (and (dirty ?X)
      (and (linked ?L ?X)
        (linked ?X ?R))))
  :effect 
  (and (not (dirty ?X))
    (clean ?X)
    (oneof (and (not (dirty ?L))
      (clean ?L)
      (not (dirty ?R))
      (clean ?R)) (and)))
)
(:action suck4
  :parameters (?X - CELL)
  :precondition 
  (and (pos ?X)
    (clean ?X))
  :effect 
  (and (oneof (and (dirty ?X)
      (not (clean ?X))) (and)))
)
(:action right
  :parameters (?X - CELL ?R - CELL)
  :precondition 
  (and (pos ?X)
    (linked ?X ?R))
  :effect 
  (and (pos ?R)
    (not (pos ?X)))
)
(:action left
  :parameters (?X - CELL ?L - CELL)
  :precondition 
  (and (pos ?X)
    (linked ?L ?X))
  :effect 
  (and (pos ?L)
    (not (pos ?X)))
)
)