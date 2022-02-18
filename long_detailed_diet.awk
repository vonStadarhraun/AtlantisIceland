NR == 1 {
    print $1,$2,$3,$4,$5,"Prey","Value"
    for (c=6; c<=NF; ++c) {
        col_str[c] = $c
    }
    next
}

{
    for (c=6; c<=NF; ++c) {
        if ($c != 0) {
	    print $1,$2,$3,$4,$5,col_str[c],$c
        }
    }
}
