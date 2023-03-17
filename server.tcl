set pipe {}

proc put {chan addr port} {
  global pipe
  chan configure $chan -blocking 1 -buffering full -buffersize 10000000
  append pipe [read $chan]
  puts stdout $pipe
  close $chan
}

proc get {chan addr port} {
  global pipe
  chan configure $chan -blocking 1 -buffering full -buffersize 10000000
  puts $chan $pipe
  set pipe {}
  close $chan
}

socket -server put 8865
socket -server get 9965
vwait forever
