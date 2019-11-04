#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "dhdc.h"
#include "drdc.h"
#include <ros/ros.h>
#include "force_msg/Force.h"


#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif
#define _USE_MATH_DEFINES
#define FRE  50   // 0.1sec

 using namespace std;
// int32 force_x,force_y,force_z;

// void forcedataCallback(force_msg::Force &force_data)
// {
//     force_x=force_data.force_x;
//     force_y=force_data.force_y;
//     force_z=force_data.force_x;
//     cout<<"force_x"<<force_x<<endl;
//     cout<<"force_y"<<force_y<<endl;
//     cout<<"force_z"<<force_z<<endl;
// }

int main(int  argc, char **argv)
{
    ros::init (argc, argv, "read_pose");
    //ros::AsyncSpinner spinner(1);
    //spinner.start();
    ros::NodeHandle nh;
   

    ros::Subscriber sub_force_data=nh.subscribe("/force_msg",1000,forcedataCallback);
    cout << "ok" <<endl;
    ros::Rate loop_rate(FRE);
    double pose_x =0;
    double pose_y = 0;
    double pose_z = 0;
    double rot_r = 0;
    double rot_p = 0;
    double rot_y =0;
    double gripper_angle=0;
   // double force_x,force_y,force_z;
    int done = 0;
    //get device count
    if (dhdGetDeviceCount() <= 0) {
        printf("error: %s\n", dhdErrorGetLastStr());
        ros::shutdown();
        return 0;
    }
    // open the first available device
    if (dhdOpen () < 0) {
      printf ("error: cannot open device (%s)\n", dhdErrorGetLastStr());
      dhdSleep (2.0);
      ros::shutdown();
      return -1;
    }
    // identify device
    printf ("%s device detected\n\n", dhdGetSystemName());
    // enable force
    cout << "ok" <<endl;

    dhdEnableForce(DHD_ON);   // cout<< "ok"<<endl;


   // cout << "ok" <<endl;
   

    while(ros::ok() && !done)
    {

        if (dhdGetPosition(&pose_x, &pose_y, &pose_z) < DHD_NO_ERROR)
        {
            printf("error: cannot read position (%s)\n", dhdErrorGetLastStr());
            done = 1;
        }
        if (dhdGetOrientationRad(&rot_r, &rot_p, &rot_y) < DHD_NO_ERROR)
        {
            printf("error: cannot read position (%s)\n", dhdErrorGetLastStr());
            done = 1;
        }
        if (dhdGetGripperAngleRad(&gripper_angle) < DHD_NO_ERROR)
        {
            printf("error: cannot read position (%s)\n", dhdErrorGetLastStr());
            done = 1;
        }

        if(dhdSetForceAndTorque (0, 0, 0, 0.0, 0.0, 0)< DHD_NO_ERROR)
        {
          printf ("error: cannot set force (%s)\n", dhdErrorGetLastStr());
          done = 1;

        }



    }
    // close the connection
    dhdClose ();
    // happily exit
    printf ("\ndone.\n");
    ros::shutdown();
    return 0;
}









