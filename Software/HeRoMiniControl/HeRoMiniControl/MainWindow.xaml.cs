using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;


namespace HeRoMiniControl
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        SerialPort serial = new SerialPort();
        XInputController input = new XInputController();
        byte[] data = new byte[8];
        List<String> received_text = new List<string>();
        int refresh_time = 10;

        public MainWindow()
        {
            InitializeComponent();
            Task t = Task.Run(() => { GetInput(); });

        }

        private void GetInput()
        {
            while (true)
            {
                input.Update();

                data[0] = (byte)input.leftThumb.X;
                data[1] = (byte)input.leftThumb.Y;
                data[2] = (byte)input.rightThumb.X;
                data[3] = (byte)input.rightThumb.Y;
                data[4] = (byte)input.leftTrigger;
                data[5] = (byte)input.rightTrigger;
                data[6] = (byte)input.buttons;
                data[7] = (byte)(input.buttons >> 8);
                //foreach (var item in data)
                //{
                //    Debug.Write("|");
                //    Debug.Write(item);

                //}
                //Debug.WriteLine("|");

                //if (serial.IsOpen)
                //{
                //    for (int i = 0; i < data.Length; i++)
                //    {
                //        Debug.Write(data[i].ToString());
                //        if (i < data.Length - 1)
                //        {
                //            Debug.Write(",");
                //        }
                //    }
                //    Debug.WriteLine(";");
                //}
                try
                {
                    this.Dispatcher.Invoke(() =>
                    {
                        tb_LTHX.Text = ((sbyte)data[0]).ToString();
                        pb_LTHX.Value = (sbyte)data[0];
                        tb_LTHY.Text = ((sbyte)data[1]).ToString();
                        pb_LTHY.Value = (sbyte)data[1];

                        tb_RTHX.Text = ((sbyte)data[2]).ToString();
                        pb_RTHX.Value = (sbyte)data[2];
                        tb_RTHY.Text = ((sbyte)data[3]).ToString();
                        pb_RTHY.Value = (sbyte)data[3];

                        tb_LTR.Text = ((sbyte)data[4]).ToString();
                        pb_LTR.Value = (sbyte)data[4];

                        tb_RTR.Text = ((sbyte)data[5]).ToString();
                        pb_RTR.Value = (sbyte)data[5];

                        rb_up.IsChecked = (((byte)data[6] >> 0) & 1) > 0 ? true : false;
                        rb_down.IsChecked = (((byte)data[6] >> 1) & 1) > 0 ? true : false;
                        rb_left.IsChecked = (((byte)data[6] >> 2) & 1) > 0 ? true : false;
                        rb_right.IsChecked = (((byte)data[6] >> 3) & 1) > 0 ? true : false;

                        rb_a.IsChecked = (((byte)data[7] >> 4) & 1) > 0 ? true : false;
                        rb_b.IsChecked = (((byte)data[7] >> 5) & 1) > 0 ? true : false;
                        rb_x.IsChecked = (((byte)data[7] >> 6) & 1) > 0 ? true : false;
                        rb_y.IsChecked = (((byte)data[7] >> 7) & 1) > 0 ? true : false;

                        rb_LTR.IsChecked = (((byte)data[6] >> 6) & 1) > 0 ? true : false;
                        rb_RTR.IsChecked = (((byte)data[6] >> 7) & 1) > 0 ? true : false;

                        rb_MS.IsChecked = (((byte)data[6] >> 4) & 1) > 0 ? true : false;
                        rb_MB.IsChecked = (((byte)data[6] >> 5) & 1) > 0 ? true : false;

                        rb_SL.IsChecked = (((byte)data[7] >> 0) & 1) > 0 ? true : false;
                        rb_SR.IsChecked = (((byte)data[7] >> 1) & 1) > 0 ? true : false;

                    });
                }
                catch (Exception ex)
                {
                    Debug.Write(ex.Message);
                }

                try
                {
                    if (serial.IsOpen)
                    {
                        for (int i = 0; i < data.Length; i++)
                        {
                            serial.Write(data[i].ToString());
                            if (i < data.Length - 1)
                            {
                                serial.Write(",");
                            }
                        }
                        serial.Write(";");
                    }
                }
                catch (Exception ex)
                {
                    Debug.Write(ex.Message);
                }


                Thread.Sleep(refresh_time);
            }

        }

        private void btn_refresh_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (serial.IsOpen)
                {
                    serial.DiscardInBuffer();
                    serial.Close();
                    btn_connect.ClearValue(Button.BackgroundProperty);
                    cb_debug.IsEnabled = true;
                }
                cb_ports.ItemsSource = SerialPort.GetPortNames();
                cb_ports.SelectedIndex = 0;
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
            }

        }

        private void btn_connect_Click(object sender, RoutedEventArgs e)
        {

            if (serial.IsOpen)
            {
                serial.DiscardInBuffer();
                serial.Close(); 
                btn_connect.ClearValue(Button.BackgroundProperty);
                cb_debug.IsEnabled = true;
                return;
            }



            try
            {
                
                cb_debug.IsEnabled = false;
                serial.PortName = cb_ports.Text; //Com Port Name                
                serial.BaudRate = Convert.ToInt32(115200); //COM Port Sp
                serial.Handshake = System.IO.Ports.Handshake.None;
                serial.Parity = Parity.None;
                serial.DataBits = 8;
                serial.StopBits = StopBits.One;
                serial.ReadTimeout = 200;
                serial.WriteTimeout = 50;
                if (cb_debug.IsChecked == true)
                {
                    refresh_time = 1000;
                    serial.DataReceived += new SerialDataReceivedEventHandler(DataReceivedHandler);
                }
                else
                {
                    refresh_time = 10;
                    serial.DataReceived -= DataReceivedHandler;
                }
                
                serial.Open();
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
            }

            if (serial.IsOpen)
            {
                serial.Write("Serial OPEN");
                btn_connect.Background = Brushes.GreenYellow;
            }
        }

        private void DataReceivedHandler(object sender, SerialDataReceivedEventArgs e)
        {
            
            try
            {
                if (refresh_time > 500)
                {
                    received_text.Add(serial.ReadTo("\n"));
                    while (received_text.Count > 25)
                    {
                        received_text.RemoveAt(0);
                    }

                    this.Dispatcher.BeginInvoke((Action)(() =>
                    {
                        tb_receive.Text = "";
                        foreach (var item in received_text)
                        {
                            tb_receive.Text = tb_receive.Text + item;
                        }

                    }));
                }
                
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
            }
            
        }
    }
}
