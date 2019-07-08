using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NewsScraper
{
    class News
    {
        public string title, link, content, created_at, image_link;

        //public News(string title, string description, string content, string created_at, string image)
        //{
        //    this.title = title;
        //    this.description = description;
        //    this.content = content;
        //    this.created_at = created_at;
        //    this.image = image;
        //}

        public News(string title, string content, string created_at, string link, string img_lnk)
        {
            this.title = title;
            this.content = content;
            this.created_at = created_at;
            this.link = link;
            this.image_link = img_lnk;
        }

    }
}
