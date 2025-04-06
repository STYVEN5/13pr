using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _13prAPI.Models
{
    public class Cat
    {
        public string Id { get; set; }
        public string Url { get; set; }
        public int Width { get; set; }
        public int Height { get; set; }

       
        public string BreedName => Breeds?.FirstOrDefault()?.Name ?? "Без породы";
        public List<Breed> Breeds { get; set; } = new List<Breed>();

      
        public string Dimensions => $"{Width}x{Height}";
    }

    public class Breed
    {
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
