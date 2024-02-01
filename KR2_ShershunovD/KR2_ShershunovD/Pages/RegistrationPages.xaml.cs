using KR2_ShershunovD.Models;
using System;
using System.Collections.Generic;
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

namespace KR2_ShershunovD.Pages
{
    /// <summary>
    /// Логика взаимодействия для RegistrationPages.xaml
    /// </summary>
    public partial class RegistrationPages : Page
    {
        Sotrudniki contextSotrudnik;
        public RegistrationPages()
        {
            InitializeComponent();
            CBRole.ItemsSource = App.DB.Role.ToList();
            contextSotrudnik = new Sotrudniki();
            DataContext = contextSotrudnik;
        }

        private void BSave_Click(object sender, RoutedEventArgs e)
        {
            App.DB.Sotrudniki.Add(contextSotrudnik);
            App.DB.SaveChanges();            
        }

        private void BBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
