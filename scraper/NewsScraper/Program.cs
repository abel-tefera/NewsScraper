using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Linq;

namespace NewsScraper
{
    class Program
    {
        Scraper scraper;
        static void Main(string[] args)
        {
            Program program = new Program();
            program.start();
        }

        private void start()
        {
            scraper = new Scraper();
            //DataContext = scraper;
            //string page = System.Console.ReadLine();
            string page2 = "https://www.ethiopianreporter.com/zena";
            //string page = "http://localhost/itsc/";
            //string page = "https://www.ezega.com/News/";
            string page1 = "https://www.bbc.com/amharic/topics/e986aff5-6b26-4638-b468-371d1d9617b4";
            //scraper.ScrapeData(page);
            scraper.ScrapeData(page2);
            scraper.ScrapDataBBC(page1);
        }
    }
}
