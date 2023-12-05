
if (remove == 2)
{
	/// Destroy outside view
	// check views
	for (var i=0; i<7; i+=1) if __view_get( e__VW.Visible, i ) and in_view(i, 32) exit;
	// destroy
	was_removed = true;
	instance_destroy();

}
