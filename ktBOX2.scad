//
// ktBOX2
//
//

A = 1;
B = 1;
C = 1;
D = 1;
E = 1;


gap1 = 0.001;
gap2 = 0.002;






if( A )
{
//color( "Blue" )
{
difference()
{
    union()
    {
        translate( [-1.5, -1.5, 0] )
        cube( [9, 43, 15.5] );
    }
    translate( [-1.5-gap1, 8, -gap1] )
    cube( [8.5, 24, 15.5+gap2] );
    translate( [10+gap1, -1.5, 3] )
    rotate( [33, 0, 180] )
    cube( [11.5+gap2, 10, 16] );
    translate( [-1.5-gap1, 40+1.5, 3] )
    rotate( [33, 0, 0] )
    cube( [11.5+gap2, 10, 16] );
    
    screw_hole( 2.5, 2.5 );
    screw_hole( 2.5, 40-2.5 );
}
}
}



if( B )
{
//color( "Blue" )
{
    translate( [5.08, 9.84, 0] )
    {
        difference()
        {
            union()
            {
                relay_base( 2.54*6*0, 0 );
                relay_base( 2.54*5*1, 0 );
                relay_base( 2.54*5*2, 0 );
                relay_base( 2.54*5*3, 0 );
                relay_base( 2.54*5*4, 0 );
                relay_base( 2.54*5*5, 0 );
                relay_base( 2.54*5*6, 0 );
                relay_base( 2.54*5*7, 0 );
            }
            translate( [-gap1, -gap1, -gap1] )
            cube( [2.54+gap2, 22+gap2, 4+gap2] );
        }
    }
}
}



if( C )
{
//color( "Blue" )
{
translate( [140, 0, 0] )
{
difference()
{
    union()
    {
        translate( [-31, -1.5, 0] )
        cube( [23, 43, 12] );
    }
    translate( [-31+1, 4.85+1, -gap1] )
    cube( [10, 30.3-2, 12-1] );
    translate( [-23+1, -1.5+1, -gap1] )
    cube( [13, 43-2, 12-1] );

    translate( [-23+1, -1.5-gap1, -gap1] )
    cube( [14+gap1, 3+gap2, 3] );
    
    screw_hole( -25.5, 2.5 );
    screw_hole( -25.5, 40-2.5 );
}
}
}
}



if( D ){
//color( "Blue" )
{
translate( [140, 0, 0] )
{
difference()
{
    union()
    {
        translate( [-7.5, -1.5, 0] )
        cube( [9, 43, 15.5] );
    }
    translate( [-8.5+1.5+gap1, 8, -gap1] )
    cube( [8.5, 24, 15.5+gap2] );
    translate( [1.5+gap1, -1.5, 3] )
    rotate( [33, 0, 180] )
    cube( [11.5+gap2, 10, 16] );
    translate( [-10-gap1, 40+1.5, 3] )
    rotate( [33, 0, 0] )
    cube( [11.5+gap2, 10, 16] );
    
    screw_hole( -2.5, 2.5 );
    screw_hole( -2.5, 40-2.5 );
}
}
}
}







module screw_hole( x, y, z=0 )
{
    hole_height = 5-1.5;
    translate( [x, y, z-gap1] )
    {
        cylinder( hole_height, 1.6, 1.6, $fn=30 );
        cylinder( 2.4+0.15, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
    }
}



module relay_base( x, y, z=0 )
{
    translate( [x, y, z] )
    {
        difference()
        {
            union()
            {
                cube( [12.7, 20.32, 4] );
            }
            translate( [12.7-2.54-(3+1)/2, 2.54-(3+1)/2, -gap1] )
            {
                cube( [3+1, 3+1, 4+gap2] );
                translate( [0, 2.54*2, 0] )
                cube( [3+1, 3+1, 4+gap2] );
                translate( [0, 2.54*4, 0] )
                cube( [3+1, 3+1, 4+gap2] );
                translate( [0, 2.54*6, 0] )
                cube( [3+1, 3+1, 4+gap2] );
            }
        }
    }
}