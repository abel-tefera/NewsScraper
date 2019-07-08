-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2019 at 01:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_tbl`
--

CREATE TABLE `news_tbl` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `created_at` varchar(32) CHARACTER SET utf8 NOT NULL,
  `image_link` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_tbl`
--

INSERT INTO `news_tbl` (`id`, `title`, `link`, `content`, `created_at`, `image_link`) VALUES
(151, 'በአገር ውስጥና ከአገር ውጭ ነዳጅና ጋዝ ፍለጋ የሚያከናውን የመንግሥት ኮርፖሬሽን ሊቋቋም ነው', 'https://www.ethiopianreporter.com/article/16115', 'በአገር ውስጥና በውጭ አገሮች የነዳጅና የተፈጥሮ ጋዝ ፍለጋና አቅርቦት ላይ የሚሰማራ የመንግሥት ኮርፖሬሽን ሊቋቋም ነው፡፡\nየሚቋቋመው ኮርፖሬሽን በነዳጅና ጋዝ ፍለጋ ልማትና አቅርቦት ላይ ከመሰማራት ባለፈ፣ በኢትዮጵያ ውስጥ የነዳጅና ጋዝ ፍለጋ ላይ በተሰማሩ የውጭ ኩባንያዎች ውስጥ የመንግሥትን ድርሻ በመያዝና በማስተዳደር፣ የአገሪቱን ጥቅም የሚያስጠብቅ እንደሚሆን ሪፖርተር ያገኘው መረጃ ያመለክታል፡፡', '  |  7 July 2019', 'https://www.ethiopianreporter.com/sites/default/files/styles/medium/public/2019-07/oil.jpg?itok=KtdFgPdy'),
(152, 'ቡና ላኪዎች ከታሸገ ኮንቴይነር የሚፈጸም ዝርፊያ በመባባሱ የወጪ ንግዱን አጣብቂኝ ውስጥ የሚከት አደጋ ተደቅኗል አሉ', 'https://www.ethiopianreporter.com/article/16114', 'ከአገር ውስጥ ታሽጎ ከሚወጣ ኮንቴይነር ውስጥ በማያስታውቅ መንገድ ሲካሄድ የነበረው የተቀነባበረ የቡና ዝርፊያ ወይም ቅሸባ ለወራት ጋብ ብሎ ቢሰነብትም፣ ዳግም ተባብሶ  በማገርሸቱ ላኪዎች የኢትዮጵያ የኤክስፖርት ቡና አደጋ ተጋርጦበታል አሉ፡፡ መንግሥት በበኩሉ ግብረ ኃይል ማቋቋሙን ገልጿል፡፡', '  |  7 July 2019', 'NOT FOUND'),
(153, 'መንግሥት የ51 በመቶ ድርሻ በመያዝ ኢትዮ ቴሌኮምን እንደሚሸጥና ሁለት የኔትወርክ ኦፕሬተሮችን እንደሚያስገባ አስታወቀ', 'https://www.ethiopianreporter.com/article/16113', 'ሙሉ በሙሉና በከፊል ወደ ግል ይዞታ ይዛወራሉ ከተባሉ የመንግሥት የልማት ድርጅቶች መካከል ኢትዮ ቴሌኮም በሁለት ዘርፍ እንደሚደራጅና 51 በመቶ ድርሻ መንግሥት በመያዝ፣ የተቀረውን ድርሻ ለመሸጥ የገንዘብ ሚኒስቴር ዝግጅት እየተጠናቀቀ መሆኑ ተገለጸ፡፡', '  |  7 July 2019', 'https://www.ethiopianreporter.com/sites/default/files/styles/medium/public/2019-07/mofed.jpg?itok=Jc11XX-T'),
(154, 'ሲጠበቅ የነበረው የምርጫና የፖለቲካ ፓርቲ ምዝገባ አዋጅ ለፓርላማ ቀረበ', 'https://www.ethiopianreporter.com/article/16112', 'በ2012 ዓ.ም. ይካሄዳል ተብሎ የሚጠበቀውን አገር አቀፍ ምርጫ ከምንጊዜውም በላይ ነፃና ፍትሐዊ ለማድረግ መንግሥት ቃል በገባውና ምኅዳሩን ለመፍጠር አስፈላጊ ነው የተባለው የምርጫ ሕግ ማሻሻያ ተጠናቆ ረቂቁ ለሕዝብ ተወካዮች ምክር ቤት ሐሙስ ሰኔ 27 ቀን 2011 ዓ.ም. ቀረበ፡፡', '  |  7 July 2019', 'NOT FOUND'),
(155, 'አዋሽ ባንክ ከታክስ በፊት ከ3.3 ቢሊዮን ብር በላይ ትርፍ አገኘ', 'https://www.ethiopianreporter.com/article/16111', 'ሃያ አምስተኛ ዓመቱን ለማክበር በዝግጅት ላይ የሚገኘው አዋሽ ባንክ በ2011 የሒሳብ ዓመት ከሌሎች የግል ባንኮች ጋር ያለውን ልዩነት በማስፋት ከታክስና ከሌሎች ተቀናሾች በፊት፣ ከ3.3 ቢሊዮን ብር በላይ ትርፍ ማስመዝገቡ ተመለከተ፡፡', '  |  7 July 2019', 'NOT FOUND'),
(156, 'ከአመራሮች ግድያ በኋላ የአማራ ክልል አመራሮች በአንድነትና በቁርጠኝነት እየሠሩ መሆኑ ተጠቆመ', 'https://www.ethiopianreporter.com/article/16109', 'በአማራ ክልላዊ መንግሥት አመራሮች ላይ ግድያ ከተፈጸመ በኋላ፣ የመንግሥትም ሆኑ የፓርቲ አመራሮች በአንድነት በቁርጠኝነት እየሠሩ መሆኑ ተገለጸ፡፡\nበአመራሮቹ ግድያ ምክንያት ለክልሉ ተቆርቋሪ በመምሰል የሕዝብ ጥያቄዎች ተገቢ ምላሽ እንዳያገኙ የማደናቀፍ አጀንዳ ይዘው ለሚንቀሳቀሱ አካላት ዕድሉ የተዘጋ መሆኑን፣ የአማራ ዴሞክራሲያዊ ፓርቲ (አዴፓ) ጽሕፈት ቤት ኃላፊ አቶ ዮሐንስ ቧያለው ለመገናኛ ብዙኃን ተናገሩ፡፡', '  |  7 July 2019', 'https://www.ethiopianreporter.com/sites/default/files/styles/medium/public/2019-07/amahara.jpg?itok=_HJTBwWv'),
(157, 'የተሻሻለው የውጭ ግንኙነት ፖሊሲ ረቂቅ ለውይይት ቀረበ', 'https://www.ethiopianreporter.com/article/16108', 'የተቀላጠፈና ፈጣን የወደብ አገልግሎት ማግኘት ለኢትዮጵያ ወሳኝ በመሆኑ የወደብ ጉዳይ የአገሪቱ ውጭ ግንኙነት ፖሊሲ ቁልፍ ጉዳይ እንደሆነ፣ ከባለወደብ አገሮች ጋር ዘላቂ የወደብ አገልግሎትና የባህር በር መዳረሻ የማግኘት መብቷን በሚያረጋግጡ ዓለም አቀፍና ቀጣናዊ ትብብሮች ላይ በትኩረት እንደምትሠራ የሚያትተው ረቂቅ የውጭ ግንኙነት ፖሊሲ ለውይይት ቀረበ፡፡', '  |  7 July 2019', 'NOT FOUND'),
(158, 'የአሠሪና ሠራተኛ አዋጅ ሴቶችን ተጠቃሚ በማድረግ ተሻሻለ', 'https://www.ethiopianreporter.com/article/16106', 'ላለፉት 15 ዓመታት በሥራ ላይ የነበረው የአሠሪና ሠራተኛ አዋጅ ቁጥር 377/96፣ አካል ጉዳተኞችንና ሴቶችን ተጠቃሚ አድርጎ ተሻሻለ፡፡ \nየሕዝብ ተወካዮች ምክር ቤት ሰኔ 27 ቀን 2011 ዓ.ም. ባደረገው አራተኛ ዓመት የሥራ ዘመን፣ 47ኛ መደበኛና ዘጠነኛ ልዩ ስብሰባው ያሻሻለው የሠራተኛና አሠሪ አዋጅ፣ ስድስት አንቀጾችን ማሻሻሉም ታውቋል፡፡', '  |  7 July 2019', 'NOT FOUND'),
(159, 'ኤክስፖርት ሊደረግ የነበረ 39.9 ሜትሪክ ቶን ቡና ከእነ ተሽከርካሪው መዘረፉ ተነገረ', 'https://www.ethiopianreporter.com/article/16107', 'የአገሪቱን የቡና ጥራት ደረጃ በማሟላትና አስፈላጊውን የጉምሩክ ፎርማሊቲ በመፈጸም፣ ወደ ጂቡቲ ወደብ ተሸንቶ የነበረ 39.9 ሜትሪክ ቶን ቡና በሞጆና በአዳማ መካከል በሚገኝ ሥፍራ ከእነ ተሽከርካሪው መዘረፉ ተገለጸ፡፡', '  |  7 July 2019', 'NOT FOUND'),
(160, '‹‹በኢትዮጵያ አንድነት የሚመጣ ካለ ግንባራችንን እንሰጣለን›› ጠቅላይ ሚኒስትር ዓብይ አህመድ (ዶ/ር)', 'https://www.ethiopianreporter.com/article/16076', 'ጠቅላይ ሚኒስትር ዓብይ አህመድ (ዶ/ር) የዓመቱን የሥራ አፈጻጸም ሪፖርታቸውን ለሕዝብ ተወካዮች ምክር ቤት ሰኞ ሰኔ 24 ቀን 2011 ዓ.ም. ሲያቀርቡ፣ ፖለቲካዊና አስተዳደራዊ ጉዳዮችን በተመለከተ ካቀረቡት ሪፖርት በተጨማሪ በወቅታዊ ሁኔታ ላይ ለቀረቡላቸው ጥያቄዎች ዝርዝር ማብራሪያ ሰጥተዋል።', '  |  3 July 2019', 'https://www.ethiopianreporter.com/sites/default/files/styles/medium/public/2019-07/parlama.jpg?itok=Mq6m7Fwa'),
(161, 'አትሌት ሃጎስ፡ \'\'ምን እንደተፈጠረ አልገባኝም። ይህ ግን የህይወቴ ትልቁ ገጠመኝ ነው\"', 'https://www.bbc.com/amharic/news-48908026', 'አትሌት ሃጎስ፡ \'\'ምን እንደተፈጠረ አልገባኝም። ይህ ግን የህይወቴ ትልቁ ገጠመኝ ነው\"', '8 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/13F18/production/_107788618_hagosgere.jpg'),
(162, 'በቤኒሻንጉል፤ ማንዱራ በተፈፀመ ጥቃት ቢያንስ የ5 ሰዎች ተገደሉ', 'https://www.bbc.com/amharic/news-48905036', 'በቤኒሻንጉል፤ ማንዱራ በተፈፀመ ጥቃት ቢያንስ የ5 ሰዎች ተገደሉ', '8 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/2C68/production/_107786311_mediaitem106649284.png'),
(163, 'ቦይንግ የ737 ማክስ አውሮፕላኖች ትዕዛዝ ተሰረዘበት', 'https://www.bbc.com/amharic/news-48905037', 'የሳዑዲ አረቢያው ፍላይኤድል አየር መንገድ ከቦይንግ አውሮፕላኖች የመግዛት እቅዱን ሰርዞ ወደ ኤርባስ ፊቱን አዙሯል።', '8 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/452C/production/_107780771_flyadeal.women.g.jpg'),
(164, 'አደጋ የተጋረጠበት የትግራይ በለስ', 'https://www.bbc.com/amharic/news-48878952', 'በትግራይ ክልል፡ በደቡባዊው ዞን በለስ ላይ ከፍተኛ ጉዳት ያደረሰው ኮችኔል በመባል የሚታወቅ ትል፡ በምስራቃው ዞንም መከሰቱ ተገልጻል።', '7 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/169D4/production/_107482629_1dc6788e-edd4-4045-a8ce-9d8eefefc001.jpg'),
(165, 'በኦሮምኛና በትግርኛ አፋቸውን የፈቱ የአማርኛ ሥነ ጽሑፍ ባለውለታዎች', 'https://www.bbc.com/amharic/48850572', 'ለዘመናዊው የአማርኛ ሥነ ጽሑፍ መዳበር አስተዋጽኦ ካበረከቱ በርካታ ጸሃፍት መካከል አፋቸውን በኦሮምኛ ወይም በትግርኛ የፈቱት ጉልህ ሚና አላቸው። በዚህም በአማርኛ በተጻፉ ረጅም ልቦለዶች፣ በሥነ ግጥሞችና በቲያትሮች ላይ አሻራቸውን ለማኖር እንደቻሉ ባለሙያዎች ይመሰክራሉ።', '7 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/DF54/production/_107727175_mediaitem107727173.jpg'),
(166, '\"መግለጫ የምንሰጠው ሰዎችም ልንታሰር እንችላለን\" የአማራ ክልል ምክትል ጠቅላይ ዐቃቤ ሕግ', 'https://www.bbc.com/amharic/news-48891711', 'የአማራ ክልል ጠቅላይ አቃቢ ሕግ ሰኔ 15፣ 2011 ዓ. ም. የተፈጠረውን ክስተት ተከትሎ ተጠርጣሪዎችን በቁጥጥር ስር እያዋለ መሆኑን አስታውቋል።', '6 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/103DF/production/_107772566_whatsappimage2019-06-23at9.56.42am-1.jpg'),
(167, '“በአሁኗ ኢትዮጵያ በፀረ ሽብር ሕጉ ክስ መኖር የለበትም” ዳንኤል በቀለ', 'https://www.bbc.com/amharic/news-48889733', 'በታላላቅ ዓለም አቀፍ የሰብአዊ መብት ተከራካሪ ተቋማት ውስጥ በከፍተኛ ኃላፊነት ሲያገለግል የቆየው ዳንኤል በቀለ (ዶ/ር) የኢትዮጵያ ሰብዓዊ መብት ኮሚሽን ዋና ኮሚሽነር ሆኖ ተሹሟል። ቢቢሲ የተለያዩ ጥያቄዎችን አንስቶ ከዳንኤል በቀለ ጋር ቆይታ አድርጓል።', '6 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/11D93/production/_107770137_dani.jpg'),
(168, 'የኢትዮ ቴሌኮም 49 በመቶ ድርሻ ለሽያጭ ይቀርባል ተባለ', 'https://www.bbc.com/amharic/news-48885486', 'ኢትዮ ቴሌኮም ከጠቅላላ የድርጅቱ አክሲዮን ድርሻ እስከ 49 በመቶውን ለሽያጭ በማቅረብ አብላጫ ድርሻውንና የቦርዱን አስተዳደር ይዞ እንዲቀጥል ተወሰነ።', '5 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/129C2/production/_107762267_ethiotelecom.jpg'),
(169, 'ማክስ 737፡ «ቤተሰቦቼን በኢትዮጵያው አውሮፕላን አደጋ አጥቻለሁ»', 'https://www.bbc.com/amharic/news-48878891', 'ተቺዎች ማክስ 737 የተሰኘው የቦይንግ አውሮፕላን ወደ ገበያ ለማውጣት ጥድፊያ ነበረ ሲሉ ይወቅሳሉ። ኤርባስን ከመሳሰሉ የአውሮፕላን አምራች ኩባንያዎች ጋር ለመፎካከር ሲል ነው ጥድፍያ ያበዛው፤ የባለሙያዎች ትችት ነው።', '5 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/8967/production/_107757153_paul2.jpg'),
(170, 'የብ/ጄነራል አሳምነው ፅጌ ሚስት መታሰራቸውን ልጃቸው ገለጸች', 'https://www.bbc.com/amharic/news-48880777', 'በአማራ ክልል ባለስልጣናት ላይ ለተፈጸመው ግድያና የመፈንቅለ መንግሥት ሙከራ ዋነኛ አንቀሳቃሽ እንደሆኑ የተነገረው የብርጋዴር ጄነራል አሳምነው ጽጌ ባለቤት በፖሊስ መያዛቸው ተገለጸ።', '5 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/14933/production/_107757248_cbd3394e-607f-431b-b319-9dd2ba965f05.jpg'),
(171, 'በደቡብ ወሎ \'የህፃናት ስርቆት\' ስጋት መነሻ ምንድን ነው?', 'https://www.bbc.com/amharic/news-48876042', 'ከሰሞኑ በደቡብ ወሎ ተገኝተው ህፃናት ሰርቀው ሊወስዱ ነው የተባሉ አምስት ግለሰቦች በደቦ ጥቃት መገደላቸው ይታወሳል። ለመሆኑ ሰዎች እርግጥ ህፃናት ሰርቀው ለመሄድ ነው የተገኙት? ካልሆነስ ስጋቱ ከየት መጣ?', '5 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/B9A5/production/_107752574_bbb.jpg'),
(172, 'ለኢትዮጵያና ለኢንዶኔዢያ የአውሮፕላን አደጋ ተጎጂ ቤተሰቦች በቦይንግ የቀረበው ካሳ ቁጣን ቀሰቀሰ', 'https://www.bbc.com/amharic/news-48868371', 'ለኢትዮጵያና ለኢንዶኔዢያ የአውሮፕላን አደጋ ተጎጂ ቤተሰቦች በቦይንግ የቀረበው ካሳ ቁጣን ቀሰቀሰ', '4 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/BD82/production/_107741584_gettyimages-167643398.jpg'),
(173, '\"መንግሥት አይወክለኝም ለሚሉ ወገኖች ምርጫ ምላሽ ይሰጣል\" ፕሮፌሰር መረራ ጉዲና', 'https://www.bbc.com/amharic/news-48864603', '\"መንግሥት አይወክለኝም ለሚሉ ወገኖች ምርጫ ምላሽ ይሰጣል\" ፕሮፌሰር መረራ ጉዲና', '4 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/C3D0/production/_105482105_merera.jpg'),
(174, '\"አጋንንትን በካራቴ ሆነ በቴስታ ብመታ ምን ችግር አለው?\" እዩ ጩፋ', 'https://www.bbc.com/amharic/news-48864601', '\"አጋንንትን በካራቴም ሆነ በቴስታ ብመታ ምን ችግር አለው?\" እዩ ጩፋ', '4 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/FD7D/production/_107739846_p07fypvv.jpg'),
(175, 'ዓይናሞችን ዓይነ ስውር የሚያደርገው እራት', 'https://www.bbc.com/amharic/news-48796796', 'ዓይናሞችን ዓይነ ስውር የሚያደርገው እራት', '4 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/AED0/production/_107725744_-1.jpg'),
(176, '\"ብ/ጄኔራል አሳምነውን ቀድቻቸዋለሁ\" ጋዜጠኛ ፋሲካ ታደሰ', 'https://www.bbc.com/amharic/news-48862811', 'ለብ/ጄኔራል አሳምነው ጽጌ በዚያ ቀውጢ ሰዓት ስልክ ደውላ እንዳወራቻቸው የገለጸችው የፎርቹን ጋዜጣ ዋና አዘጋጅ ፋሲካ ታደሰ በመጨረሻ ዝምታዋን ሰብራለች። ለቢቢሲ ስለዚያች ምሽት በዝርዝር ተናግራለች።', '3 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/C029/production/_107739194__107739946_fasikafasika.jpg'),
(177, 'ከአሜሪካ የጥላቻ ንግግርን የሚያሠራጩ ኢትዮጵያዊያን እንዴት በህግ ይጠየቃሉ?', 'https://www.bbc.com/amharic/news-48861251', 'ከአሜሪካ የጥላቻ ንግግር የሚያሰራጩ ኢትዮጵያዊያንን በሕግ ተጠያቂ የማድረግ እንቅስቃሴ መጀመሩን የኢትዮጵያ አሜሪካዊያን የዜጎች ምክር ቤት ቢያስታውቅም ይህን ማድረግ የሚቻል ነው ወይ ? የሚለው የብዙዎች ጥያቄ ነው።', '3 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/598B/production/_107732922_abiy-socialmedia.jpg'),
(178, 'ቦይንግ ለተጎጂ ቤተሰቦች መቶ ሚሊዮን ዶላር ሊሰጥ ነው', 'https://www.bbc.com/amharic/news-48859253', 'በኢንዶኔዥያና ኢትዮጵያ ለተከሰከሱት ሁለት የ737 ማክስ አውሮፕላን ተጎጂ ቤተሰቦች ቦይንግ መቶ ሚሊዮን ዶላር አቀረበ።', '3 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/24A7/production/_106238390_gettyimages-1136394061-594x594.jpg'),
(179, 'ዓንዶም ገብረጊዮርጊስ፡ የአሜሪካ ምክርቤት አባል ለመሆን ቅስቀሳ እያደረገ ያለው ኤርትራዊ', 'https://www.bbc.com/amharic/news-48846532', 'በሚቀጥለው አመት በሰኔ ወር ሊካሄድ ለታቀደው የአሜሪካ ፕሬዚዳንታዊና ለምክር ቤት አባልነት የምርጫ ቅስቀሳ ከወዲሁ ተጀምሯል። የምረጡኝ ቅስቀሳ እያካሄዱ ካሉት መካካል ኤርትራዊ አሜሪካዊው ዓንዶም ገብረጊዮርጊስ ይገኝበታል።', '3 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/1185F/production/_107557717_whatsappimage2019-06-22at22.12.30.jpg'),
(180, 'በኦሮምኛ የሥነ-ጽሁፍ እድገት ውስጥ ትልቅ መነሳሳት የፈጠሩት ኦኒስሞስ ነሲብ', 'https://www.bbc.com/amharic/news-48836549', 'በኦሮምኛ የሥነ-ጽሁፍ እድገት ውስጥ ትልቅ መነሳሳት የፈጠሩት ኦኒስሞስ ነሲብ በባርነት ተሽጠው የነበሩ ሲሆን የገዛቸው ስውዲናዊ ወደ ትምህርት ቤት አስገብቷቸው እንደነበር ይነገራል።', '2 ሀምሌ 2019', 'https://ichef.bbci.co.uk/news/320/cpsprodpb/60B6/production/_107485742_onesmos1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news_tbl`
--
ALTER TABLE `news_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news_tbl`
--
ALTER TABLE `news_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
