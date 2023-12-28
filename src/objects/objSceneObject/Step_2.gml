
if (remove == 2)
{
	/// Destroy outside view
	// check views
	for (var i=0; i<7; i+=1) if view_get_visible(i) and in_view(i, 32) exit;
	// destroy
	was_removed = true;
	instance_destroy();

}
