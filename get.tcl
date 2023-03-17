set fd [socket localhost 9965]
puts [read -nonewline $fd]
close $fd
