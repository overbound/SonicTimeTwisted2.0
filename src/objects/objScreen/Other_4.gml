/// @description  Setup views
view_enabled = true;
image_index=0;
__view_set( e__VW.Visible, 0, true );
__view_set( e__VW.Visible, 1, split_screen );
if split_screen __view_set( e__VW.YPort, 1, height * 0.5 );
for (var i = 0; i < 2; i += 1)
{
    __view_set( e__VW.WView, i, width );
    __view_set( e__VW.HView, i, height );
    __view_set( e__VW.WPort, i, width );
    __view_set( e__VW.HPort, i, height - (height * 0.5 * split_screen) );
}

