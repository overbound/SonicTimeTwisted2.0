function rumble_enqueue(argument0) {
	// Must be called from within an objInput.
	var rumble_data = argument0;
	if(!is_array(rumble_data))
	{
	    exit;
	}
	/**
	* RUMBLE_APPEND_MODE:
	* 0 - append
	* 1 - replace
	* 2 - append if queue empty, exit otherwise
	*/
	switch(rumble_data[0, RUMBLE_APPEND_MODE])
	{
	    case 1:
	        while(!ds_queue_empty(rumble_queue))
	        {
	            ds_queue_dequeue(rumble_queue);
	        };
	        break;
	    case 2:
	        if(!ds_queue_empty(rumble_queue))
	        {
	            exit;
	        }
	}
	var rumble_length = ds_queue_size(rumble_queue);
	// calculate target effect length
	var target_rumble_length = rumble_data[array_length(rumble_data) - 1, RUMBLE_END_TIME];
	if(target_rumble_length > rumble_length)
	{
	    // append the new rumble info at the end of previous rumble info
	    // first of all: skip everything that occurs during the already queued rumble effects
	    var rumble_data_element = 0;
	    while (rumble_data[rumble_data_element, RUMBLE_END_TIME] < rumble_length)
	    {
	        rumble_data_element++;
	    }
	    while (rumble_data_element < array_length(rumble_data))
	    {
	        var rstart = rumble_data[rumble_data_element, RUMBLE_START_TIME];
	        var rend = rumble_data[rumble_data_element, RUMBLE_END_TIME];
	        var rforce = max(0, min(100, rumble_strength * rumble_data[rumble_data_element, RUMBLE_FORCE]));
        
	        rumble_length = ds_queue_size(rumble_queue);
	        for(var j = rstart; j <= rend; j++)
	        {
	            if (j >= rumble_length)
	            {
	                ds_queue_enqueue(rumble_queue, rforce);
	            }
	        }
        
	        rumble_data_element++;
	    }
	}



}
