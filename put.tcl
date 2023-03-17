set fd [socket localhost 8865]
puts $fd [read -nonewline stdin]
close $fd
