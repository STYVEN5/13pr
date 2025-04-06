using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using Newtonsoft.Json;


namespace _13prAPI
{
    public partial class MainWindow : Window
    {
        private const string ApiUrl = "https://api.thecatapi.com/v1/images/search?limit=20";
        private List<Cat> _allCats = new List<Cat>();
        private bool _isLoading = false;

        public MainWindow()
        {
            InitializeComponent();
            Loaded += async (s, e) => await LoadCats();
        }

        private async Task LoadCats()
        {
            if (_isLoading) return;

            _isLoading = true;
            StatusText.Text = "Загрузка данных...";

            try
            {
                using (HttpClient client = new HttpClient())
                {
                    string json = await client.GetStringAsync(ApiUrl);
                    _allCats = JsonConvert.DeserializeObject<List<Cat>>(json);
                    CatsListView.ItemsSource = _allCats;
                    StatusText.Text = $"Загружено: {_allCats.Count} кошек";
                }
            }
            catch (Exception ex)
            {
                StatusText.Text = "Ошибка загрузки";
                MessageBox.Show($"Ошибка: {ex.Message}", "Ошибка",
                                MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                _isLoading = false;
            }
        }

        private void SearchBox_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            var searchText = SearchBox.Text.Trim().ToLower();

            if (string.IsNullOrEmpty(searchText))
            {
                CatsListView.ItemsSource = _allCats;
                return;
            }

            CatsListView.ItemsSource = _allCats
                .Where(c => c.BreedName.ToLower().Contains(searchText))
                .ToList();
        }

        private async void RefreshButton_Click(object sender, RoutedEventArgs e)
        {
            await LoadCats();
        }

        private void CatsListView_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (CatsListView.SelectedItem is Cat selectedCat)
            {
                var detailWindow = new CatDetailWindow(selectedCat);
                detailWindow.Owner = this;
                detailWindow.ShowDialog();
            }
        }
    }

    public class Cat
    {
        public string Id { get; set; }
        public string Url { get; set; }
        public int Width { get; set; }
        public int Height { get; set; }
        public string BreedName => "Домашняя";
        public string Dimensions => $"{Width} × {Height} px";
    }
}