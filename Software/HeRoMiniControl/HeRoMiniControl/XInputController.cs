using SharpDX.XInput;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace HeRoMiniControl
{
    class XInputController
    {

        Controller controller;
        Gamepad gamepad;
        public bool connected = false;
        public int deadband = 2000;
        public Point leftThumb, rightThumb = new Point(0, 0);
        public float leftTrigger, rightTrigger;
        public int limit = 100;
        public char buttons;

        public XInputController()
        {
            controller = new Controller(UserIndex.One);
            connected = controller.IsConnected;
        }

        // Call this method to update all class values
        public void Update()
        {
            try
            {
                if (!connected)
                {
                    controller = new Controller(UserIndex.One);
                    connected = controller.IsConnected;
                    return;
                }


                gamepad = controller.GetState().Gamepad;
                //Y|X|B|A|-|-|RightShoulder|LeftShoulder|RightTrigger|LeftTrigger|BACK|START|RIGHT|LEFT|DOWN|UP
                buttons = (char)gamepad.Buttons;
                leftThumb.X = (Math.Abs((float)gamepad.LeftThumbX) < deadband) ? 0 : Math.Round((float)gamepad.LeftThumbX / short.MinValue * -limit);
                leftThumb.Y = (Math.Abs((float)gamepad.LeftThumbY) < deadband) ? 0 : Math.Round((float)gamepad.LeftThumbY / short.MaxValue * limit);
                rightThumb.X = (Math.Abs((float)gamepad.RightThumbX) < deadband) ? 0 : Math.Round((float)gamepad.RightThumbX / short.MaxValue * limit);
                rightThumb.Y = (Math.Abs((float)gamepad.RightThumbY) < deadband) ? 0 : Math.Round((float)gamepad.RightThumbY / short.MaxValue * limit);

                leftTrigger = (float)Math.Round((float)gamepad.LeftTrigger / byte.MaxValue * limit);
                rightTrigger = (float)Math.Round((float)gamepad.RightTrigger / byte.MaxValue * limit);
            }
            catch (Exception ex)
            {

                Debug.Write(ex.Message);
            }
            
        }

    }
}
