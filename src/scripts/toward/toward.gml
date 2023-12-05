function toward(argument0, argument1, argument2) {
	//toward(from,to,increment)
	var from = argument0;
	var to = argument1;
	var increment = argument2;
	    if (to > from)
	    {
	        from += increment;
	        if from > to
	            return to;
	            else return from;
	    }
	    else
	    {
	        from -= increment;
	        if from < to
	            return to
	            else return from;
	    }



}
