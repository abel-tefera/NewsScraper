using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using HtmlAgilityPack;

namespace NewsScraper
{
    class Scraper
    {
        private ObservableCollection<News> _entries = new ObservableCollection<News>();
        private Database db = new Database();
        public ObservableCollection<News> Entries
        {
            get { return _entries; }
            set { _entries = value; }
        }

        public void ScrapDataBBC(string page)
        {
            News news;
            string header;
            string created_at;
            string content;
            string link;
            string img_lnk;
            var web = new HtmlWeb();
            var doc = web.Load(page);
            var Articles = doc.DocumentNode.SelectNodes("//*[@class = 'eagle-item faux-block-link']");
            foreach(var article in Articles)
            {
                header = HttpUtility.HtmlDecode(article.SelectSingleNode(".//*[@class = 'title-link__title']").InnerText);
                content = HttpUtility.HtmlDecode(article.SelectSingleNode(".//*[@class = 'eagle-item__summary']").InnerText);
                created_at = HttpUtility.HtmlDecode(article.SelectSingleNode(".//*[@class = 'date date--v2']").InnerText);
                link = HttpUtility.HtmlDecode(article.SelectSingleNode(".//*[@class = 'faux-block-link__overlay-link']").OuterHtml);
                img_lnk = HttpUtility.HtmlDecode(article.SelectSingleNode(".//*[@class = 'js-image-replace']").OuterHtml);
                string l = "https://www.bbc.com" + ExtractLink(link);
                string a = "https:" + ExtractLink(img_lnk);
                news = new News(header.Trim(), content.Trim(), created_at.Trim(), l, a);
                db.NewsInsert(news);
            }
            Console.WriteLine("DONE! From bbc.com");
        }

        public void ScrapeData(string page)
        {
            string header;
            string created_at;
            string content;
            //int count = 1;
            var web = new HtmlWeb();
            var doc = web.Load(page);
            Dictionary<string, string> imgLinks = new Dictionary<string, string>();
            var Articles = doc.DocumentNode.SelectNodes("//*[@class = 'post-content']");
            var Images = doc.DocumentNode.SelectNodes("//*[@class = 'field field--name-field-image field--type-image field--label-hidden field__item']");
            
            List<string> contents = new List<string>();

            #region XPATH
            //var Articles = doc.DocumentNode.SelectNodes("//*[@class = 'col-xs-12 col-sm-3']");

            //*[@id="block-gavias-kama-content"]/div/div/div/div/div[1]/article/div/div[2]/h3
            //*[@id="block-gavias-kama-content"]/div/div/div/div/div[2]/article/div/div[2]/h3
            //*[@id="block-gavias-kama-content"]/div/div/div/div/div[3]/article/div/div[2]/h3

            //*[@id="block-gavias-kama-content"]/div/div/div/div/div[1]/article/div/div[2]/div[1]/span[2]
            //*[@id="block-gavias-kama-content"]/div/div/div/div/div[2]/article/div/div[2]/div[1]/span[2]

            //*[@id="block-gavias-kama-content"]/div/div/div/div/div[1]/article/div/div[2]/div[2]
            //*[@id="block-gavias-kama-content"]/div/div/div/div/div[2]/article/div/div[2]/div[2]
            #endregion

            foreach(var img in Images)
            {
                string all = HttpUtility.HtmlDecode(img.InnerHtml);
                string imgg = all.Substring(all.IndexOf("src"));
                string img_lnk = "";
                string lnk = "https://www.ethiopianreporter.com" + ExtractLink(all);
                img_lnk = ExtractImgLink(imgg, img_lnk);
                imgLinks.Add(lnk, img_lnk);
            }

            foreach (var articles in Articles)
            {
                News news;
                string all = HttpUtility.HtmlDecode(articles.InnerText);
                string link = HttpUtility.HtmlDecode(articles.InnerHtml);
                var htmlDoc = new HtmlDocument();
                htmlDoc.LoadHtml(link);

                var htmlBody = htmlDoc.DocumentNode.SelectSingleNode("//a");
                string lnk = "https://www.ethiopianreporter.com" + ExtractLink(htmlBody);
                string[] stringSeparators = new string[] { "\n\n" };
                string[] names = all.Split(stringSeparators, StringSplitOptions.None);
                foreach (string name in names)
                {
                    if (name == "")
                    {
                        continue;
                    }
                    else
                    {
                        contents.Add(name);
                    }
                }

                #region Failed
                //string header = "";
                //foreach(char character in all)
                //{
                //    if (character.Equals("/n"))
                //    {

                //    }
                //    header += character;
                //}
                //header = HttpUtility.HtmlDecode(articles.InnerText);


                //while (i != 0)
                //{
                //try
                //{
                //header = HttpUtility.HtmlDecode(doc.DocumentNode.($"//*[@id=\"block-gavias-kama-content\"]/div/div/div/div/div[{count}]/article/div/div[2]/h3").InnerText);
                //created_at = HttpUtility.HtmlDecode(doc.DocumentNode.SelectSingleNode($".//*[@id=\"block-gavias-kama-content\"]/div/div/div/div/div[{count}]/article/div/div[2]/div[1]/span[2]").InnerText);
                //content = HttpUtility.HtmlDecode(doc.DocumentNode.SelectSingleNode($".//*[@id=\"block-gavias-kama-content\"]/div/div/div/div/div[{count}]/article/div/div[2]/div[2]").InnerText);
                //count += 1;
                //i = 0;
                //}
                //catch (NullReferenceException e) { Console.WriteLine("NullReferenceException caught!"); }
                //}
                //var header = HttpUtility.HtmlDecode(articles.SelectSingleNode(".//*[@class = 'card-title']").InnerText);
                //var content = HttpUtility.HtmlDecode(articles.SelectSingleNode(".//*[@class = 'card-text']").InnerText);
                //var created_at = HttpUtility.HtmlDecode(articles.SelectSingleNode(".//*[@class = 'card-text']").InnerText);
                //System.IO.File.WriteAllText(@"C:\Users\Abel\source\repos\WebScraper\WebScraper\Test.txt", header);
                #endregion
                if (contents.Count > 2)
                {
                    created_at = contents[0];
                    header = contents[1];
                    content = contents[2];
                    contents.Clear();
                }
                else
                {
                    contents.Clear();
                    continue;
                }
                string img_lnk = "";
                if (imgLinks.TryGetValue(lnk, out img_lnk))
                {
                    //Console.WriteLine("For key = \"tif\", value = {0}.", value);
                    news = new News(header, content, created_at, lnk, "https://www.ethiopianreporter.com" + img_lnk);
                }
                else
                {
                    //Console.WriteLine("Key = \"tif\" is not found.");
                    news = new News(header, content, created_at, lnk, "NOT FOUND");
                }
                //News news = new News(header, content, created_at, lnk, img_lnk);
                db.NewsInsert(news);
                #region FileWrite
                //    using (System.IO.StreamWriter file =
                //new System.IO.StreamWriter(@"C:\Users\Abel\source\repos\WebScraper\WebScraper\Test.txt", true))
                //    {
                //        //file.WriteLine("!@#$%^&*()(*&^%$#@!#$%^&*(*&^%$#@$%^&*()*&^%$#");
                //        file.WriteLine(header + " || " + created_at);
                //        //file.WriteLine($"{header} and {content} and {created_at}");
                //        file.WriteLine(content);
                //        //file.WriteLine("!@#$%^&*()(*&^%$#@!#$%^&*(*&^%$#@$%^&*()*&^%$#");
                //    }
                #endregion

            }
            Console.WriteLine("DONE! From ethiopianreporter.com");
            //System.Console.ReadLine();
        }

        private static string ExtractImgLink(string imgg, string img_lnk)
        {
            int skip = 1;
            foreach (char chr in imgg)
            {
                if (chr == '/')
                {
                    skip = 0;
                }

                if (skip == 0)
                {
                    if (chr == '"')
                    {
                        break;
                    }
                    img_lnk += chr;
                }
            }

            return img_lnk;
        }

        private static string ExtractLink(HtmlNode htmlBody)
        {
            string lnk = "";
            int val = 0;
            foreach (char chr in htmlBody.OuterHtml)
            {
                if (chr == '/')
                {
                    val = 1;
                }

                if (val == 1)
                {
                    if (chr == '"')
                    {
                        break;
                    }
                    lnk += chr;
                }
            }

            return lnk;
        }

        private static string ExtractLink(String htmlBody)
        {
            string lnk = "";
            int val = 0;
            foreach (char chr in htmlBody)
            {
                if (chr == '/')
                {
                    val = 1;
                }

                if (val == 1)
                {
                    if (chr == '"')
                    {
                        break;
                    }
                    lnk += chr;
                }
            }

            return lnk;
        }
    }
}
