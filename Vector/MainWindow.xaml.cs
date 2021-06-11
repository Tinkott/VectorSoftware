using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
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
using System.Text.RegularExpressions;
using System.Windows.Forms.Design.Behavior;
using System.Windows.Media.Animation;

namespace Vector
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void CloseButton_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.Close();
        }

        private void MinButton_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void ToolBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        private void OnPasswordChanged(object sender, RoutedEventArgs e)
        {
            if (textBoxPass.Password.Length > 0)
            {
                WatermarkPass.Visibility = Visibility.Collapsed;
            }
            else
            {
                WatermarkPass.Visibility = Visibility.Visible;
            }
        }

        private void OpenRegisterWindow_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            Window1 Window1 = new Window1();
            Window1.Show();
            this.Close();
        }

        private void ButtonLogin_Click(object sender, RoutedEventArgs e)
        {
            bool ServersDied = false;
            string UserLogin = textBoxLogin.Text.Trim();
            string UserPass = textBoxPass.Password.Trim();

            if (UserLogin.Length < 3)
            {
                textErrorState.Content = "The login is too short!";
                textErrorState.Foreground = Brushes.Red;
            }
            else
            {   
                DB db = new DB();
                DataTable table = new DataTable();
                MySqlDataAdapter adapter = new MySqlDataAdapter();

                if (EmailisValid(UserLogin))
                {
                    MySqlCommand command = new MySqlCommand("SELECT * FROM `users` WHERE `email` = @vuEL AND `pass` = @vuP", db.GetConnection());
                    command.Parameters.Add("@vuEL", MySqlDbType.VarChar).Value = UserLogin;
                    command.Parameters.Add("@vuP", MySqlDbType.VarChar).Value = UserPass;
                    adapter.SelectCommand = command;
                }
                else
                {
                    MySqlCommand command = new MySqlCommand("SELECT * FROM `users` WHERE `login` = @vuL AND `pass` = @vuP", db.GetConnection());
                    command.Parameters.Add("@vuL", MySqlDbType.VarChar).Value = UserLogin;
                    command.Parameters.Add("@vuP", MySqlDbType.VarChar).Value = UserPass;
                    adapter.SelectCommand = command;
                }

                try
                {
                    adapter.Fill(table);
                }
                catch (Exception)
                {
                    ServersDied = true;
                    textErrorState.Content = "Vector servers are sleeping!";
                    textErrorState.Foreground = Brushes.Red;
                }

                if (ServersDied == false)
                {
                    if (table.Rows.Count > 0)
                    {
                        MainForm MainForm = new MainForm();
                        MainForm.Show();
                        this.Close();
                    }
                    else
                    {
                        textErrorState.Content = "Incorrect login or password!";
                        textErrorState.Foreground = Brushes.Red;
                    }
                }
                else
                {
                }
            } 
        }

        private void TextBoxPass_IsMouseCapturedChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            textErrorState.Content = "";
            textErrorState.Foreground = Brushes.Transparent;
        }

        private void TextBoxLogin_IsMouseCapturedChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            textErrorState.Content = "";
            textErrorState.Foreground = Brushes.Transparent;
        }
        public bool EmailisValid(string email)
        {
            string pattern = "[.\\-_a-z0-9]+@([a-z0-9][\\-a-z0-9]+\\.)+[a-z]{2,6}";
            Match isMatch = Regex.Match(email, pattern, RegexOptions.IgnoreCase);
            return true;
        }
    }
}
