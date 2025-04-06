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
using System.Windows.Shapes;

namespace _13prAPI
{
    
    public partial class CatDetailWindow : Window
    {
        public CatDetailWindow(Cat cat)
{
    InitializeComponent();
    DataContext = cat;
    Title = cat.BreedName;
}
    }
}
