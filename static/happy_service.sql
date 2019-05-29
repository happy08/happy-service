-- phpMyAdmin SQL Dump
-- version 4.4.15.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2019 at 10:58 PM
-- Server version: 5.6.36
-- PHP Version: 5.3.10-1ubuntu3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happy_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `lotus_about`
--

CREATE TABLE IF NOT EXISTS `lotus_about` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mytime` date DEFAULT NULL COMMENT '时间',
  `image1` varchar(250) DEFAULT NULL COMMENT '图片',
  `mycontent` text,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='表';

--
-- Dumping data for table `lotus_about`
--

INSERT INTO `lotus_about` (`id`, `title`, `mytime`, `image1`, `mycontent`, `status`, `myorder`, `noDelete`) VALUES
(1, '關於我們', NULL, NULL, '<p><span style="font-size:18px"><span style="color:#e74c3c"><strong>設立至今超過30年經驗。</strong></span></span></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<table border="0" cellpadding="0" cellspacing="0" style="width:100%">\n				<tbody>\n					<tr>\n						<td><span style="font-size:36px"><span style="color:#3498db">經營<br />\n						理念</span></span></td>\n						<td><span style="font-size:18px">人類舒適的文明生活。創造利潤 使顧客滿意。<br />\n						作對的事，把事做對，走對的路。貢獻社會。<br />\n						繼往開來 ....物盡其用，人盡其才</span></td>\n					</tr>\n					<tr>\n						<td><span style="font-size:36px"><span style="color:#3498db">經營<br />\n						方針</span></span></td>\n						<td><span style="font-size:18px">1、了解並滿足顧客的基本需求。<br />\n						2、創造新的效益。<br />\n						3、心靈及實際的需求。<br />\n						4、使科學、效益、藝術、環保的創造力結合。<br />\n						5、和樂環境、獎金、分紅，創造夥伴發展空間。客戶滿意、安心、放心</span></td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p>&nbsp;</p>\n			</td>\n			<td style="text-align:right"><img alt="" src="/public/uploads/ckfinder/images/about.jpg" style="height:auto; width:100%" /></td>\n		</tr>\n	</tbody>\n</table>\n', 0, -1, 0),
(2, '維修流程', NULL, NULL, '<p><img alt="" src="/public/uploads/ckfinder/images/process-t1.jpg" style="height:69px; width:280px" /></p>\n\n<p style="text-align:center"><img alt="" src="/public/uploads/ckfinder/images/process.jpg" style="height:100%; width:100%" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt="" src="/public/uploads/ckfinder/images/process-t2.jpg" style="height:69px; width:280px" /></p>\n\n<p><strong><span style="color:#3498db"><span style="font-size:28px">冷氣</span></span></strong><br />\n<span style="font-size:20px">◆ 冷氣流之循環迴路中不可有高物阻擋(例如:屏風、高鐵櫃等)，以免氣溫不均勻。<br />\n◆ 開暖氣時，剛開始會有一點燒焦味，這是正常的且很快會消失。若持續不斷，必須立刻關閉機器，並連絡本服務站。<br />\n◆ 冷氣機外部可用雨棚遮護。但要儘量避免使用封套，會影響內部機件。濾網約兩週定期清洗一次。<br />\n◆ 冷氣需定期檢測，冷房專用的冷氣機，每二年需做一次檢測。如是冷暖兩用型，建議至少一年。<br />\n◆ 長期不使用時，先清洗乾淨後(可交給廠商維修服務中心)再用罩子蓋起來。期間最好每個月試運轉一次，以維持機體內部正常。</span></p>\n\n<p><strong><span style="color:#3498db"><span style="font-size:28px">洗衣機</span></span></strong><br />\n<span style="font-size:20px">◆ 注意安裝位置是否堅固、平穩，以避免噪音產生。若噪音過大請立即停機。<br />\n◆ 務必安裝接地線，可避免漏電。若有漏電情形，請立即聯絡本服務站。安裝於排水管路暢通之處。<br />\n◆ 洗衣時，衣物請以八分滿為佳，並按照按照說明書上之規定進行操作。<br />\n◆ 洗衣前必須先清理口袋內的雜物，以免卡住攪盤或堵住排水口。<br />\n◆ 雙槽洗衣機脫水時應避免&quot;頭重腳輕&quot;現象，造成脫水軸磨損而漏水。<br />\n◆ 洗衣機運轉中，勿碰觸脫水槽或衣物。維修服務專線 &nbsp; 0800-200-938</span></p>\n\n<p><strong><span style="color:#3498db"><span style="font-size:28px">冰箱</span></span></strong><br />\n<span style="font-size:20px">◆ 要安放於水平穩固之場所。四周空隙要夠大.<br />\n◆ 放置地點通風要良好。避免靠近熱源及溼度高的地方。避免放在瓦斯爐..等發熱器旁，或太陽光照射到的地方。<br />\n◆ 電源線避免壓傷或觸及高溫。<br />\n◆ 存取食物時應儘量減少開關次數和時間。冰箱門應經常保持密閉，門縫墊條損壞時應立即修復。</span></p>\n\n<p>&nbsp;</p>\n', 0, -2, 0),
(3, '心靈雞湯', NULL, NULL, '<p><strong><span style="font-size:20px">南無本師釋迦摩尼佛</span></strong></p>\n\n<table border="0" cellpadding="5" cellspacing="0" style="width:100%">\n	<tbody>\n		<tr>\n			<td style="text-align:center; width:50%"><img alt="" src="/public/uploads/ckfinder/images/soul1.jpg" style="width:480px" /></td>\n			<td>\n			<p><span style="color:#ff3399"><span style="font-size:36px">知足常樂</span></span><br />\n			&nbsp;<br />\n			<span style="font-size:20px">有糧千擔，也是一日三餐&nbsp;<br />\n			有錢萬貫，也是黑白一天<br />\n			洋房十座，也是睡搭一間<br />\n			寶車百乘，也是有愁有煩<br />\n			高官厚祿，也是每天上班<br />\n			妻妾成群，也是一夜之歡</span></p>\n\n			<p><span style="font-size:20px"><span style="color:#3498db">想想，您還在苦苦追求是為了什麼？<br />\n			想想，您到底活著究竟是為了什麼？<br />\n			想想，您想不開看不破放不下什麼？</span></span></p>\n\n			<p>&nbsp;</p>\n\n			<p><span style="font-size:20px"><span style="color:#3498db">在生活中，不妨養成「能有，很好；沒有，也沒關係」的想法，<br />\n			便能轉苦為樂，便會比較自在了。</span></span></p>\n\n			<p><span style="color:#27ae60"><span style="font-size:20px">有也足，無也足，多也足，少也足<br />\n			一切有為法，如夢幻泡影，如露亦如電，應作如是觀</span></span></p>\n\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p style="text-align:center"><span style="color:#27ae60"><strong><span style="font-size:36px">般若波羅密多心經</span></strong></span></p>\n\n<p><span style="font-size:20px">觀自在菩薩，行深般若波羅密多時，照見五蘊皆空，度一切苦厄。 舍利子，色不異空， 空不異色，色即是空，空即是色，受想行識， 亦復如是。 舍利子，是諸法空相，不生不滅，不垢不淨，不增不減。是故空中無色，無受想行識， 無眼耳鼻舌身意，無色聲香味觸法，無眼界，乃至無意識界，無無明，亦無無明盡， 乃至無老死，亦無老死盡。 無苦集滅道，無智亦無得。以無所得故。菩提 薩埵，依般若波羅密多故，心無罣礙。無罣礙故，無有恐怖，遠離顛倒夢想，究竟涅槃。</span></p>\n\n<p><span style="font-size:20px">&nbsp;三世諸佛，依般若波羅密多故，得阿耨多羅三藐三菩提，故知般若波羅密多，是大神咒， 是大明咒，是無上咒，是無等等咒，能除一切苦，真實不虛，故說般若波羅密多咒， 即說咒曰，揭諦揭諦，波羅揭諦，波羅僧揭諦，菩提薩婆訶</span><span style="font-size:26px">。</span></p>\n\n<p>&nbsp;</p>\n\n<p style="text-align:center"><span style="color:#ff3366"><span style="font-size:28px">108自在語 /</span><span style="font-size:22px">聖嚴法師</span></span></p>\n\n<p><span style="font-size:18px"><span style="color:#ff3366">提昇人品</span><br />\n1. 需要的不多，想要的太多。<br />\n2. 知恩報恩為先，利人便是利己。<br />\n3. 盡心盡力第一，不爭你我多少。<br />\n4. 慈悲沒有敵人，智慧不起煩惱。<br />\n5. 忙人時間最多，勤勞健康最好。<br />\n6. 布施的人有福，行善的人快樂。<br />\n7. 心量要大，自我要小。<br />\n8. 要能放下，才能提起。提放自如，是自在人。<br />\n9. 識人識已識進退，時時身心平安；知福惜福多培福，處處廣結善緣。<br />\n10. 提得起放得下，年年吉祥如意；用智慧種福田，日日都是好日。<br />\n11. 身心常放鬆，逢人面帶笑；放鬆能使我們身心健康，帶笑容易增進彼此友誼。<br />\n12. 話到口邊想一想，講話之前慢半拍。不是不說，而是要惜言慎語。<br />\n13. 在生活中，不妨養成：「能有，很好；沒有，也沒關係」的想法，便能轉苦為樂，便會比較自在了。<br />\n14. 四安：安心、安身、安家、安業。<br />\n15. 四要：需要、想要、能要、該要。<br />\n16. 四感：感恩、感謝、感化、感動。<br />\n17. 四它：面對它、接受它、處理它、放下它。<br />\n18. 四福：知福、惜福、培福、種福。<br />\n19. 能要、該要的才要；不能要，不該要的絕對不要。<br />\n20. 感恩能使我們成長，報恩能助我們成就。<br />\n21. 感謝給我們機會，順境、逆境，皆是恩人。<br />\n22. 遇到好事，要隨喜、讚嘆、鼓勵，並且虛心學習。<br />\n23. 少批評、多讚美，是避免造口業的好方法。<br />\n24. 平常心就是最自在、最愉快的心。<br />\n25. 踏實地走一步路，勝過說一百句空洞的漂亮語。<br />\n26. 知道自己的缺點愈多，成長的速度愈快，對自己的信心也就愈堅定。<br />\n27. 多聽多看少說話，快手快腳慢用錢。<br />\n28. 唯有體驗了艱苦的境遇，才會有精進奮發的心。<br />\n29. 踏踏實實做人，心胸要廣大；穩穩當當做事，著眼宜深遠。<br />\n<span style="color:#ff3366">享受工作</span><br />\n30. 忙而不亂，累而不疲。<br />\n31. 忙得快樂，累得歡喜。<br />\n32. 「忙」沒關係，不「煩」就好。<br />\n33. 工作要趕不要急，身心要鬆不要緊。<br />\n34. 應該忙中有序的趕工作，不要緊張兮兮的搶時間。<br />\n35. 不要以富貴貧賤論成敗得失，只要能盡心盡力來自利利人。<br />\n36. 任勞者必堪任怨，任事者必遭批評。怨言之下有慈忍，批評之中藏金玉。<br />\n37. 隨遇而安，隨緣奉獻。<br />\n38. 成功的三部曲是：隨順因緣、把握因緣、創造因緣。<br />\n39. 見有機緣宜把握，沒有機緣要營造，機緣未熟不強求。<br />\n40. 人生的起起落落，都是成長的經驗。<br />\n41. 用智慧處理事，以慈悲關懷人。<br />\n42. 以智慧時時修正偏差，以慈悲處處給人方便。<br />\n43. 慈悲心愈重，智慧愈高，煩惱也就愈少。<br />\n44. 面對許多的情況，只管用智慧處理事，以慈悲對待人，而不擔心自己的利害得失，就不會有煩惱了。<br />\n45. 心隨境轉是凡夫；境隨心轉是聖賢。<br />\n46. 大鴨游出大路，小鴨游出小路，不游就沒有路。<br />\n47. 山不轉路轉，路不轉人轉，人不轉心轉。<br />\n48. 「精進」不等於拼命，而是努力不懈。<br />\n49. 船過水無痕，鳥飛不留影，成敗得失都不會引起心情的波動，那就是自在解脫的大智慧。<br />\n50. 給人方便等於給自己方便。<br />\n51. 甘願吃明虧，是仁者；受辱吃暗虧，是愚蠢。<br />\n52. 壓力通常來自對身外事物過於在意，同時也過於在意他人的評斷。<br />\n53. 用感恩的人、用報恩的心，來做服務的工作，便不會感到倦怠與疲累。<br />\n54. 隨時隨地心存感激，以財力、體力、智慧、心力、來做一切的奉獻。<br />\n<span style="color:#ff3366">平安人生</span><br />\n55. 生命的意義是為了服務，生活的價值是為了奉獻。<br />\n56. 人生的目標，是來受報、還願、發願的。<br />\n57. 人的價值，不在壽命的長短，而在貢獻的大小。<br />\n58. 過去已成虛幻，未來尚是夢想，把握現在最重要。<br />\n59. 不用牽掛過去，不必擔心未來，踏實於現在，就與過去和未來同在。<br />\n60. 智慧，不是知識、不是經驗、不是思辯，而是超越自我中心的態度。<br />\n61. 積極人生，謙虛滿分；自我愈大，不安愈多。<br />\n62. 上等人安心於道，中等人安心於事，下等人安心於名利物欲。<br />\n63. 你是有那些身分的人，就應該做那些身分的事。<br />\n64. 在安定和諧中、把握精彩的今天，走出新鮮的明天。<br />\n65. 擔心，是多餘的折磨；用心，是安全的動力。<br />\n66. 財富如流水，佈施如挖井。井愈深，水愈多；佈施的愈多，財富則愈大。<br />\n67. 面對生活，要有「最好的準備，最壞的打算」。<br />\n68. 只要還有一口呼吸在，就有無限的希望，就是最大的財富。<br />\n69. 救苦救難的是菩薩，受苦受難的是大菩薩。<br />\n70. 超越生老病苦三原則：活得快樂、病得健康、老得有希望。<br />\n71. 超越死亡三原則：不要尋死、不要怕死、不要等死。<br />\n72. 死亡不是喜事，也不是喪事，而是一件莊嚴的佛事。<br />\n73. 每一個孩子，都是幫助父母成長的小菩薩。<br />\n74. 對青少年，要關心不要擔心，要誘導不要控制，用商量不用權威。<br />\n75. 愛你的孩子，與其擔心，不如祝福吧！<br />\n76. 夫妻是倫理的關係，不是「論理」的關係。<br />\n77. 能不亂丟垃圾，隨時清撿垃圾，都是做的功德。<br />\n78. 眼光，是你的智慧；運氣，是你的福德。<br />\n79. 喜愛的就想佔有，討厭的就會排斥，患得患失，煩惱就來了。<br />\n80. 經常少欲知足的人，才是無虞匱乏的富人。<br />\n81. 心不平安是真正的苦，身體的病痛不一定是苦。<br />\n82. 明知心不平安是苦事，就趕快以持念「南無觀世音菩薩」來安心吧！<br />\n83. 現在擁有的，就是最好的。擁有再多也無法滿足，就等於是窮人。<br />\n84. 不要用壓抑來控制情緒，最好用觀想、用佛號、用祈禱，來化解情緒。<br />\n<span style="color:#ff3366">幸福人間</span><br />\n85. 好話大家說，好事大家做，好運大家轉。<br />\n86. 大家說好話，大家做好事，大家轉好運。<br />\n87. 每人每天多說一句好語，多做一件好事，所有小小的好，就會成為一個大大的好。<br />\n88. 急須要做，正要人做的事，我來吧！<br />\n89. 我和人和，心和口和，歡歡喜喜有幸福。<br />\n90. 內和外和，因和緣和，平平安安真自在。<br />\n91. 自求心安就有平安，關懷他人就有幸福。<br />\n92. 人品等於財富，奉獻等於積蓄。<br />\n93. 奉獻即是修行，安心即是成就。<br />\n94. 擁有的多，不一定讓人滿足；擁有的少，不一定讓人貧乏。<br />\n95. 現在所得的，是過去所造的，未來所得的，是現在所做的。<br />\n96. 好人不寂寞，善人最快樂，時時處處助人利己，時時處處你最幸福。<br />\n97. 若希望人際關係相處得好，就要把心量放大，多接納人，多包容人。<br />\n98. 只要自己的心態改變，環境也會跟著改變，世界上沒有絕對的好與壞。<br />\n99. 人與人之間的相處之道，需要溝通，溝通不成則妥協，妥協不成時，你就原諒和容忍他吧。<br />\n100. 大的要包容小的，小的要諒解大的。<br />\n101. 以全心全力關懷家庭，用整體生命投入事業。<br />\n102. 戒貪最好的方法，就是多佈施、多奉獻、多與人分享。<br />\n103. 包容別人時，雙方的問題就解決了。<br />\n104. 學佛的人，有兩大任務：莊嚴國土，成熟眾生。<br />\n105. 要做無底的垃圾桶，要學無塵的反射鏡。<br />\n106. 煩惱消歸自心就有智慧，利益分享他人便是慈悲。<br />\n107. 用慚愧心看自己，用感恩心看世界。<br />\n108. 淨化人心，少欲知足，淨化社會，關懷他人。</span></p>\n', 0, -3, 0),
(4, '服務項目编辑', NULL, NULL, '', 0, -4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_api`
--

CREATE TABLE IF NOT EXISTS `lotus_api` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `base_url` varchar(255) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `is_token` varchar(255) DEFAULT '0',
  `app_id` int(11) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lotus_api`
--

INSERT INTO `lotus_api` (`id`, `name`, `base_url`, `hash`, `method`, `is_token`, `app_id`, `param`, `key`, `value`, `create_time`, `update_time`) VALUES
(1, 'test', 'https://www.lotusadmin.top/index/index/testPost.html', 'NGPJPXYFLBFCTASBXYMYJ97R5', 'no_limit', '1', NULL, 'id:2|name:999', NULL, NULL, 1511938273, 1516843876),
(45, '轮播图', 'https://www.lotusadmin.top/index/index/testPost.html', 'INW2BZIXLBZJXHZ4QD4QGBLQ2', 'post', '1', NULL, 'id:1|name:活动1|image:http://www.baidu.com|cd:22', NULL, NULL, 1516413527, 1541690386);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_app`
--

CREATE TABLE IF NOT EXISTS `lotus_app` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lotus_app`
--

INSERT INTO `lotus_app` (`id`, `name`, `app_id`, `secret`, `create_time`, `update_time`) VALUES
(48, '67890', 83315454, 'T5TIKY52PXW92KI8T47YNCPY2', 1512900450, 1514554017),
(49, 'jjj', 89701605, 'CSOS6G1EX3PBE5QLWVOKJ4S4N', 1513262603, 1516368208),
(51, '33213213', 36632265, 'SJXMOASBN1F7ZD85V44FPFZD5', 1513749512, 1513749512),
(52, '66', 41119516, 'VG57ZSSDC1PN66QWHTQ167BXW', 1514170106, 1514170106),
(54, 'fff', 35381515, 'FW8R3HD2DK7UVSK1UNPWUX3VR', 1514337763, 1514337763),
(55, 'gggg', 17816116, 'V42T5EVD39Y19PHVQVKAP6AAM', 1514337920, 1514337920),
(61, '888', 82758191, '2584LUAXGDEF2OFJESDQKPAVC', 1515790384, 1515790384),
(62, '首页测试数据', 85221630, 'B3IXA9U7PRKQPBIJPJWBI6OVX', 1516412439, 1516412439),
(63, 'frsfsd', 62661704, 'LZ8UTZOZO6QFB8EY6HIX2UJC2', 1516606772, 1516606772),
(65, 'test11', 67203101, 'EA3NX4PARMR63RUMATX27A5IY', 1516694560, 1516694560),
(66, 'test11', 42597693, 'JGBRGA7EXDY8T5INDBJO6PHCE', 1516756425, 1516756425),
(67, 'ssdfgsdf', 62128950, 'IG4NT2KGVA72E1VRDEDFZBZUL', 1516760748, 1516760748),
(68, '11111111', 82120651, 'OPYRD3BIOUXV75556X34DAYCR', 1516760764, 1516760764);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_article`
--

CREATE TABLE IF NOT EXISTS `lotus_article` (
  `id` int(10) unsigned NOT NULL COMMENT '文章ID',
  `cid` smallint(5) unsigned NOT NULL COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `introduction` varchar(255) DEFAULT '' COMMENT '简介',
  `content` longtext COMMENT '内容',
  `author` varchar(20) DEFAULT '' COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0 待审核  1 审核',
  `reading` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `photo` text COMMENT '图集',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶  0 不置顶  1 置顶',
  `is_recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐  0 不推荐  1 推荐',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `publish_time` datetime NOT NULL COMMENT '发布时间'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- Dumping data for table `lotus_article`
--

INSERT INTO `lotus_article` (`id`, `cid`, `title`, `introduction`, `content`, `author`, `status`, `reading`, `thumb`, `photo`, `is_top`, `is_recommend`, `sort`, `create_time`, `publish_time`) VALUES
(1, 1, '测试文章一', '', '<p>测试内容</p>', 'admin', 1, 0, '', NULL, 0, 0, 0, '2017-04-11 14:10:10', '2017-04-11 14:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_auth_group`
--

CREATE TABLE IF NOT EXISTS `lotus_auth_group` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL COMMENT '权限规则ID'
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COMMENT='权限组表';

--
-- Dumping data for table `lotus_auth_group`
--

INSERT INTO `lotus_auth_group` (`id`, `title`, `status`, `rules`) VALUES
(1, '超级管理组', 1, '1,2,223,3,4,219,226,227,228,5,6,7,8,202,203,209,229');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `lotus_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限组规则表';

--
-- Dumping data for table `lotus_auth_group_access`
--

INSERT INTO `lotus_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(27, 2),
(28, 2),
(29, 50),
(30, 52),
(31, 54),
(32, 2),
(33, 64),
(34, 1),
(35, 52),
(36, 35),
(37, 52),
(38, 65),
(39, 59),
(40, 69),
(41, 69),
(42, 69),
(43, 61),
(44, 62),
(45, 64),
(46, 69),
(47, 70),
(48, 70),
(49, 70),
(50, 69),
(51, 70),
(52, 70),
(53, 70),
(54, 70),
(55, 1),
(56, 1),
(57, 72),
(58, 72),
(59, 72),
(60, 72),
(61, 1),
(62, 78),
(63, 78),
(64, 1),
(65, 117),
(66, 90),
(67, 90),
(68, 102),
(69, 102),
(70, 102),
(71, 106),
(72, 106),
(73, 112),
(74, 111),
(75, 78),
(76, 126),
(77, 1),
(78, 123),
(79, 1),
(80, 123),
(81, 129),
(82, 135),
(83, 129),
(84, 138),
(85, 137),
(86, 1),
(87, 138),
(88, 138),
(89, 138),
(90, 138),
(91, 117),
(92, 156),
(93, 156),
(94, 163),
(95, 164),
(96, 145),
(97, 172),
(98, 175),
(99, 1),
(100, 173),
(101, 180),
(102, 181),
(103, 185),
(104, 187),
(105, 187),
(106, 187),
(107, 1),
(108, 193),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_auth_rule`
--

CREATE TABLE IF NOT EXISTS `lotus_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `pid` smallint(5) unsigned NOT NULL COMMENT '父级ID',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `sort` int(50) unsigned NOT NULL COMMENT '排序',
  `condition` char(100) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 COMMENT='规则表';

--
-- Dumping data for table `lotus_auth_rule`
--

INSERT INTO `lotus_auth_rule` (`id`, `name`, `title`, `type`, `status`, `pid`, `icon`, `sort`, `condition`) VALUES
(1, 'admin/user/default', '管理員', 1, 0, 0, 'xe66f', 1000, ''),
(2, 'admin/user/userlist', '管理員', 1, 1, 0, 'xe66f', 999, ''),
(3, 'admin/auth/index', '权限管理', 1, 0, 1, '', 0, ''),
(4, 'admin/auth/role', '角色管理', 1, 1, 1, '', 0, ''),
(8, 'admin/api/app_list', '接口仓库', 1, 1, 7, '', 0, ''),
(5, 'admin/DbManage/default', '数据库', 1, 0, 0, 'xe631', 201, ''),
(6, 'admin/DbManage/index', '备份', 1, 1, 5, '', 0, ''),
(7, 'admin/api/default', '接口管理', 1, 0, 0, 'xe857', 3, ''),
(202, 'admin/file_system/index', '文件管理', 1, 0, 0, 'xe61d', 200, ''),
(203, 'sadasd', '一级菜单', 1, 0, 0, 'xe609', 5, ''),
(219, 'admin/auth/addRole', '新增角色', 1, 0, 4, '', 0, ''),
(220, 'admin/auth/add', '新增权限', 1, 0, 3, '', 0, ''),
(221, 'admin/auth/edit', '编辑权限', 1, 0, 3, '', 0, ''),
(222, 'admin/auth/delete', '删除权限', 1, 0, 3, '', 0, ''),
(223, 'admin/user/addUser', '增加用户', 1, 0, 2, '', 0, ''),
(234, 'admin/stores/index', '各區服務站', 1, 1, 0, 'xe857', 16, ''),
(235, 'admin/events/index', '行銷活動', 1, 0, 0, 'xe66e', 10, ''),
(226, 'admin/auth/updateAuthGroupRule', '角色授权', 1, 0, 4, '', 0, ''),
(227, 'admin/auth/editRole', '角色编辑', 1, 0, 4, '', 0, ''),
(228, 'admin/auth/delRole', '删除角色', 1, 0, 4, '', 0, ''),
(229, 'admin/news/index', '新闻中心', 1, 0, 0, 'xe647', 5, ''),
(230, 'admin/news/index2', '新闻列表', 1, 0, 229, '', 0, ''),
(231, 'admin/newsClass/index', '新聞分類', 1, 0, 229, '', 2, ''),
(233, 'admin/products/index', '服務項目', 1, 1, 0, 'xe653', 20, ''),
(236, 'admin/about/index', '關於我們', 1, 1, 0, 'xe857', 15, ''),
(237, 'admin/links/index', '首頁鏈接', 1, 0, 0, 'xe641', 3, ''),
(238, 'admin/contact/index', '線上報修', 1, 1, 0, 'xe63a', 0, ''),
(239, 'admin/banner/index', 'Banner', 1, 1, 0, 'xe64a', 2, ''),
(240, 'admin/seo/edit', 'SEO', 1, 1, 0, 'xe620', 1000, '');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_banner`
--

CREATE TABLE IF NOT EXISTS `lotus_banner` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '链接名称',
  `title_en` varchar(200) DEFAULT NULL,
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `image1` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 1 显示  2 隐藏',
  `myorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `noDelete` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

--
-- Dumping data for table `lotus_banner`
--

INSERT INTO `lotus_banner` (`id`, `title`, `title_en`, `link`, `image1`, `status`, `myorder`, `noDelete`) VALUES
(1, '品質安全有保障', '免費來電提供您簡易故障排除', 'products', '\\public\\uploads\\20190508\\fb80c43f476f331a3de659c962970c6b.jpg', 0, 0, 0),
(2, '在地深耕服務 30年', '品質安全有保障', '', '\\public\\uploads\\20190508\\fb80c43f476f331a3de659c962970c6b.jpg', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_category`
--

CREATE TABLE IF NOT EXISTS `lotus_category` (
  `id` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `alias` varchar(50) DEFAULT '' COMMENT '导航别名',
  `content` longtext COMMENT '分类内容',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `icon` varchar(20) DEFAULT '' COMMENT '分类图标',
  `list_template` varchar(50) DEFAULT '' COMMENT '分类列表模板',
  `detail_template` varchar(50) DEFAULT '' COMMENT '分类详情模板',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分类类型  1  列表  2 单页',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `path` varchar(255) DEFAULT '' COMMENT '路径',
  `create_time` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='分类表';

--
-- Dumping data for table `lotus_category`
--

INSERT INTO `lotus_category` (`id`, `name`, `alias`, `content`, `thumb`, `icon`, `list_template`, `detail_template`, `type`, `sort`, `pid`, `path`, `create_time`) VALUES
(1, '分类一', '', '', '', '', '', '', 1, 0, 0, '0,', '2016-12-22 18:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_contact`
--

CREATE TABLE IF NOT EXISTS `lotus_contact` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `model` varchar(50) NOT NULL,
  `buy_time` varchar(50) NOT NULL,
  `tel` varchar(250) DEFAULT NULL COMMENT '标题英文',
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '分類',
  `line` varchar(50) DEFAULT NULL,
  `product` varchar(50) NOT NULL,
  `remark` text,
  `mytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  `address` varchar(250) DEFAULT NULL COMMENT '图片',
  `name` varchar(255) DEFAULT NULL COMMENT '详细',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删',
  `fault` varchar(250) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='表';

--
-- Dumping data for table `lotus_contact`
--

INSERT INTO `lotus_contact` (`id`, `title`, `title_en`, `sex`, `model`, `buy_time`, `tel`, `phone`, `email`, `line`, `product`, `remark`, `mytime`, `address`, `name`, `status`, `myorder`, `noDelete`, `fault`) VALUES
(13, NULL, NULL, '先生', 'dfsadf', '2019年-1月', '0800200938', NULL, 'daphne@mynet.com.tw', NULL, '', 'fsdfsa', '2019-05-13 07:20:30', '臺南市-官田區', '陳小姐', 0, 1, 0, ''),
(14, NULL, NULL, '先生', '', '2017年-1月', '0988829562', NULL, 'bodhi7808@gmail.com', NULL, '冷氣空調維修', '', '2019-05-25 13:31:19', '新竹縣-竹北市', '黃祐謙', 0, 1, 0, '1j4x/3');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_events`
--

CREATE TABLE IF NOT EXISTS `lotus_events` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title2` varchar(200) DEFAULT NULL,
  `mome` varchar(250) DEFAULT NULL COMMENT '标题英文',
  `price` varchar(255) DEFAULT NULL,
  `old_price` varchar(255) DEFAULT NULL COMMENT '分類',
  `mytime` date DEFAULT NULL COMMENT '时间',
  `image1` varchar(250) DEFAULT NULL COMMENT '图片',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='表';

--
-- Dumping data for table `lotus_events`
--

INSERT INTO `lotus_events` (`id`, `title`, `title2`, `mome`, `price`, `old_price`, `mytime`, `image1`, `status`, `myorder`, `noDelete`) VALUES
(1, '母親節優惠', '淋巴推一推，肩頸好輕鬆', '原價：999元，現在優惠價只要$499元，\n限本人一次性使用。', '499', '999', '2019-04-14', '\\public\\uploads\\20190414\\58cd776b7ca84379be96606c165308b8.jpg', 0, 1, 0),
(2, '母親節優惠2', '淋巴推一推，肩頸好輕鬆2', '淋巴推一推，肩頸好輕鬆2', '999', '1999', '2019-04-15', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_file`
--

CREATE TABLE IF NOT EXISTS `lotus_file` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lotus_file`
--

INSERT INTO `lotus_file` (`id`, `url`, `size`) VALUES
(95, '\\public\\uploads\\20190208\\2db88d4d4dde4ad48cb31afede57780e.jpg', '71k'),
(96, '\\public\\uploads\\20190208\\b12efb0cbb47dfe62fd30813a66d2ac7.jpg', '71k'),
(97, '\\public\\uploads\\20190208\\b3148fe7cb8af3607d14bc72c88f4884.jpg', '71k'),
(98, '\\public\\uploads\\20190208\\70dc2d48c6c560b361c576d44b6bf246.jpg', '65k'),
(99, '\\public\\uploads\\20190208\\42de89d9ffd0b448e41b4db628fe8b28.jpg', '71k'),
(100, '\\public\\uploads\\20190208\\2a7207d1a0f58cccdb834ecb069de899.jpg', '71k'),
(101, '\\public\\uploads\\20190208\\3ab2baeb2b26fea551f7caaef4bfb257.jpg', '71k'),
(102, '\\public\\uploads\\20190208\\566b0158b2600877a738f41c84390486.jpg', '75k'),
(103, '\\public\\uploads\\20190208\\8ca9651d7946a3b85b9bb01577fc033c.jpg', '71k'),
(104, '\\public\\uploads\\20190208\\0f659a43cea6ed253a02347829b2668b.jpg', '71k'),
(105, '\\public\\uploads\\20190208\\2db06465130783f3c4e9b7f10f8d54c5.jpg', '65k'),
(106, '\\public\\uploads\\20190208\\c3c2251d07b7dfb94aee7eafd1a36ea6.jpg', '71k'),
(107, '\\public\\uploads\\20190210\\9ebd320f4460525299df22a6fb4d3a4b.jpg', '71k'),
(108, '\\public\\uploads\\20190210\\381d08146427616914227b757a0dd859.jpg', '71k'),
(109, '\\public\\uploads\\20190210\\dde99490ef1d2f7e8b607bb755f9257c.jpg', '65k'),
(110, '\\public\\uploads\\20190210\\f5beed5bcd4ec02bfce3ae7e47eff069.jpg', '65k'),
(111, '\\public\\uploads\\20190210\\b8e7b5eb5586c1034b1e365b0d9a653d.jpg', '75k'),
(112, '\\public\\uploads\\20190210\\c49407f7ea5e3d6198afb8b4d937d8c3.jpg', '65k'),
(113, '\\public\\uploads\\20190210\\057219c8ab75e9e0aae0d05e010b170b.jpg', '65k'),
(114, '\\public\\uploads\\20190210\\09127bd79f8fddf1695c391c6c90b2c2.jpg', '65k'),
(115, '\\public\\uploads\\20190210\\f4a9f44e0344f28da76749f1742b057c.jpg', '65k'),
(116, '\\public\\uploads\\20190210\\e76c314fa9028bd079d1120d1564148e.jpg', '65k'),
(117, '\\public\\uploads\\20190210\\a28bd571bcfa2bd663399b003817e819.jpg', '65k'),
(118, '\\public\\uploads\\20190210\\47a890edd2cb4ab0bbf8fbd7db1ea3eb.jpg', '65k'),
(119, '\\public\\uploads\\20190210\\4bbefde2047c891150cb066e12e33e85.jpg', '75k'),
(120, '\\public\\uploads\\20190210\\2bea04989a7ceff393574c430bd63010.jpg', '71k'),
(121, '\\public\\uploads\\20190210\\60a93cf485dc71ec8ea2b40e56760d1f.jpg', '71k'),
(122, '\\public\\uploads\\20190210\\01888bf6dba6074effc6bceacbffb65f.jpg', '65k'),
(123, '\\public\\uploads\\20190210\\d83b66929334c8ff30dc0052ae3091e3.jpg', '71k'),
(124, '\\public\\uploads\\20190210\\1d3e3f7355df1b9f3d77a29f1d19bfde.jpg', '75k'),
(125, '\\public\\uploads\\20190210\\f42d10e9c32f3f9438da9d12d329c4a9.jpg', '65k'),
(126, '\\public\\uploads\\20190210\\9dea8d1661c90609e8a9c240d47c1ea7.jpg', '75k'),
(127, '\\public\\uploads\\20190210\\924aa3c7c468555dddc8deafb3c6b9f5.jpg', '71k'),
(128, '\\public\\uploads\\20190210\\311884349c3d2b4e87abc616686746b4.jpg', '65k'),
(129, '\\public\\uploads\\20190210\\b916cd35def5bb3caa69db5f880e9397.jpg', '75k'),
(130, '\\public\\uploads\\20190210\\4e073f8850d18ad02c699308c2630b3e.jpg', '75k'),
(131, '\\public\\uploads\\20190210\\a9ab64200a29b13b4c7ba55be946d055.jpg', '75k'),
(132, '\\public\\uploads\\20190210\\326cffd09ffe246a082c0690b0fa877c.jpg', '65k'),
(133, '\\public\\uploads\\20190210\\00b44c70bffead39ea8577d19bfbccda.jpg', '75k'),
(134, '\\public\\uploads\\20190210\\d8d403dd8f8ec836db469c476740c726.jpg', '75k'),
(135, '\\public\\uploads\\20190210\\72b222f90485acd40aa7666e35e8f03a.jpg', '65k'),
(136, '\\public\\uploads\\20190210\\4e1eba39e16b66a70d4fc13ca4dfd318.jpg', '75k'),
(137, '\\public\\uploads\\20190210\\e3d0a65317b46dd21c31bc638d92568e.jpg', '75k'),
(138, '\\public\\uploads\\20190210\\a1d6d20bb23ad2c3d6feb6fed45fccd9.jpg', '75k'),
(139, '\\public\\uploads\\20190210\\1c261a305a80e1b8461b9036cf4a9bd1.jpg', '75k'),
(140, '\\public\\uploads\\20190210\\fc3cafce2fb61cd79a3162091ddbd200.jpg', '75k'),
(141, '\\public\\uploads\\20190210\\adfb75b16a4ca06b7b805b77cd06504d.jpg', '75k'),
(142, '\\public\\uploads\\20190210\\427829495d6363f472754d2bc2270272.jpg', '75k'),
(143, '\\public\\uploads\\20190210\\05788500fa2e0c0bbd722bd8ae095351.jpg', '75k'),
(144, '\\public\\uploads\\20190210\\796c337e8852cb2e4eddcbe128ee5785.jpg', '75k'),
(145, '\\public\\uploads\\20190210\\d4d849c0146196f0db604b44ab849bfa.jpg', '65k'),
(146, '\\public\\uploads\\20190210\\47f8b614a2f4101b5aad0b9e75d369a0.jpg', '65k'),
(147, '\\public\\uploads\\20190210\\a3e11a0ca03f6520cb5e8583d86d41b3.jpg', '65k'),
(148, '\\public\\uploads\\20190210\\e043449e992d897d5be45147af56f989.jpg', '65k'),
(149, '\\public\\uploads\\20190210\\53fe259b8e803f57675797bd37298b9a.jpg', '65k'),
(150, '\\public\\uploads\\20190210\\b2dec980b405df96da84f4c360b5521e.jpg', '65k'),
(151, '\\public\\uploads\\20190210\\e16763f7895c4cdd70e42898dfc1a1e9.jpg', '75k'),
(152, '\\public\\uploads\\20190210\\97bc7762984600ab130960713924903f.jpg', '65k'),
(153, '\\public\\uploads\\20190210\\a9cd6e5b8c1f72dad26ef6f3032c029e.jpg', '75k'),
(156, '\\public\\uploads\\20190210\\116c05e58456299e8921db98ecbe7f0e.jpg', '65k'),
(157, '\\public\\uploads\\20190210\\98ea4bf81753f52f77eaca969bdd7617.jpg', '75k'),
(158, '\\public\\uploads\\20190210\\2cc12559b6a903dfd5d44c1051d918e8.jpg', '75k'),
(159, '\\public\\uploads\\20190210\\25fffc107d379e0669daf9bc007bebbb.jpg', '65k'),
(160, '\\public\\uploads\\20190210\\37a6abe013080d250886405c677ce51d.jpg', '65k'),
(161, '\\public\\uploads\\20190210\\26b128ef883f0bea0b3fd60f9c31118e.jpg', '75k'),
(162, '\\public\\uploads\\20190210\\4bcf905c67c978dda3e0317a7f0b797d.jpg', '71k'),
(163, '\\public\\uploads\\20190210\\eb57db8eaab960ad23d093e40fca32fa.jpg', '65k'),
(164, '\\public\\uploads\\20190210\\6ba2feb06face935636e66a331b8c941.jpg', '75k'),
(165, '\\public\\uploads\\20190210\\f237ae4e7ef8e0068617803531732587.jpg', '75k'),
(166, '\\public\\uploads\\20190210\\40cfd60b204e4681309f81b42e33308a.jpg', '65k'),
(167, '\\public\\uploads\\20190210\\c2ab3556109d5b8af1726225ed0e99de.jpg', '71k'),
(168, '\\public\\uploads\\20190210\\7c1b7afed538107707c5a6d53dea953f.jpg', '75k'),
(169, '\\public\\uploads\\20190210\\1452759ab71c43b5af4785f443498ba0.jpg', '65k'),
(170, '\\public\\uploads\\20190210\\26b20a53675794c55e8726ae317df817.jpg', '65k'),
(171, '\\public\\uploads\\20190210\\c4e6b95f335b87281a158251eb4ffea9.jpg', '75k'),
(172, '\\public\\uploads\\20190210\\bc1e0c3a8ab8209bd355434d021ba8ce.jpg', '71k'),
(173, '\\public\\uploads\\20190210\\6a371dbdc189b43d3b2f363af605021a.jpg', '75k'),
(174, '\\public\\uploads\\20190210\\cbf7917aa2b38da9a20c26a5b17a08d9.jpg', '75k'),
(175, '\\public\\uploads\\20190210\\b3728903e97bcb05bbf39798ae48b955.jpg', '75k'),
(176, '\\public\\uploads\\20190210\\622853a37f09446906b44395fe507243.jpg', '65k'),
(177, '\\public\\uploads\\20190210\\dcf7340c0f9d7e7298c3325b3264d94f.jpg', '75k'),
(178, '\\public\\uploads\\20190210\\75139e7d3abcd412da1e12ec7eebf311.jpg', '65k'),
(179, '\\public\\uploads\\20190210\\116c7a319b41cf8ce7e33862576c5de3.jpg', '75k'),
(180, '\\public\\uploads\\20190210\\9303ff5de92b4e40342cd664491bc9fe.jpg', '75k'),
(181, '\\public\\uploads\\20190210\\4d975f0d58b686fee45cc757aff89893.jpg', '65k'),
(182, '\\public\\uploads\\20190210\\b8cb46969594ae7dcb870f2abef6482c.jpg', '75k'),
(183, '\\public\\uploads\\20190210\\dea14d1ecfe0b14642b9f5fd22ec9d90.jpg', '65k'),
(184, '\\public\\uploads\\20190210\\0b90949a1e913be4df45f8a9016c2b25.jpg', '65k'),
(185, '\\public\\uploads\\20190210\\6d71cccf84b41d22fd6dfeacf39ae88b.jpg', '65k'),
(186, '\\public\\uploads\\20190210\\285452cece4379bbdba7efbaa4faee08.jpg', '71k'),
(187, '\\public\\uploads\\20190210\\4bc1b6117135a74db8925916ad05cf12.jpg', '75k'),
(188, '\\public\\uploads\\20190210\\1fecc6b61c039a9f8b9cb943d8e7cf98.jpg', '71k'),
(189, '\\public\\uploads\\20190210\\c8a0d0b3e841aa7a60ed781b3b55c5e5.jpg', '71k'),
(190, '\\public\\uploads\\20190210\\ed330129ec1d48b5f6c47f69fb1ace07.jpg', '75k'),
(191, '\\public\\uploads\\20190210\\77b397dd769dd71f7332d66c0db13eb4.jpg', '65k'),
(192, '\\public\\uploads\\20190210\\fe06eda79ccd0c0d841d03ad6cabee8f.jpg', '71k'),
(193, '\\public\\uploads\\20190211\\70b808b9ffcb143122fad1ab1b8f87fd.jpg', '65k'),
(194, '\\public\\uploads\\20190211\\6cfd1886d45e7fc4b60fcb1e34d82075.jpg', '344k'),
(200, '\\public\\uploads\\20190211\\6dced5c3a3d16ff3fac215c703694f89.jpg', '279k'),
(201, '\\public\\uploads\\20190212\\8f184b74cb7d780512b638abfa0354dd.jpg', '279k'),
(202, '\\public\\uploads\\20190212\\e5c23537dbc8aa64867363bcf3da6dc3.jpg', '279k'),
(203, '\\public\\uploads\\20190212\\a8e43af5a53c3f733408a96438542511.jpg', '344k'),
(204, '\\public\\uploads\\20190212\\8d345b040e793e8877ca833524201976.jpg', '279k'),
(205, '\\public\\uploads\\20190212\\2349676634461322d51135e57b3a7d9b.jpg', '279k'),
(206, '\\public\\uploads\\20190212\\e565a611efc72ab131e6ba70db0cc7ab.jpg', '279k'),
(207, '\\public\\uploads\\20190212\\f2e5ac61407effbaf474c37d362b759c.jpg', '344k'),
(208, '\\public\\uploads\\20190212\\205353998c97bd74203920f615c58597.jpg', '344k'),
(209, '\\public\\uploads\\20190212\\6301817d7e5e0c7168f9f9dde7c4b4d8.jpg', '279k'),
(210, '\\public\\uploads\\20190212\\675d053865527ecfb9138327380ac7f8.jpg', '344k'),
(211, '\\public\\uploads\\20190212\\696cec86b8608234d8089ab6c8a63a76.jpg', '279k'),
(212, '\\public\\uploads\\20190414\\3a533b8388a4b8a4d6656ea1b04ebc84.png', '5k'),
(213, '\\public\\uploads\\20190414\\95a5e8d325a87382e3094af5930f8391.jpg', '39k'),
(214, '\\public\\uploads\\20190414\\58cd776b7ca84379be96606c165308b8.jpg', '71k'),
(215, '\\public\\uploads\\20190414\\e907583c536d300b52e5a1df3c3f5109.png', '91k'),
(216, '\\public\\uploads\\20190416\\fbe7c80d6c7878bdb5fa6153a6e3361c.jpg', '41k'),
(217, '\\public\\uploads\\20190417\\0b8d950fd89b97804cca631784ee53c8.jpg', '113k'),
(218, '\\public\\uploads\\20190417\\f7b9fe80fdedd473383f19b3cab0d3aa.jpg', '113k'),
(219, '\\public\\uploads\\20190422\\db1d27ce4a8dec7582e9c1fba1cca223.jpg', '41k'),
(220, '\\public\\uploads\\20190423\\12b15bfedbf02513c57a32481501cba1.jpg', '80k'),
(221, '\\public\\uploads\\20190423\\1740ce424d10930e6f72cd58b8020921.jpg', '8k'),
(222, '\\public\\uploads\\20190423\\256f625c31cba12d140cdd327afee5e2.jpg', '54k'),
(223, '\\public\\uploads\\20190505\\48e999729d31726f761f0a6a0239e90f.jpg', '21k'),
(224, '\\public\\uploads\\20190505\\e2b8b779b0409ced32b26882ae6a20ba.jpg', '25k'),
(225, '\\public\\uploads\\20190505\\7400c1cb86ec8854d1d44770b47ef96a.jpg', '18k'),
(226, '\\public\\uploads\\20190508\\fb80c43f476f331a3de659c962970c6b.jpg', '110k'),
(227, '/public/uploads/20190513/caee9f9792b6af003a978860e34d044b.jpg', '23k'),
(228, '/public/uploads/20190513/ea094a0aa30338aba21bea93bb509b53.jpg', '23k'),
(229, '/public/uploads/20190513/82f350eaa5700993fd0059edab600630.jpg', '23k'),
(230, '/public/uploads/20190513/bc167039b46cabae9fa4aaadd2a91abe.jpg', '28k'),
(231, '/public/uploads/20190517/16bd99d4d8b911f48b7b9bea68b19760.jpg', '25k'),
(232, '/public/uploads/20190518/7925118599ee3c54d4c379242e20a3cb.jpg', '278k'),
(233, '/public/uploads/20190520/77840dc4bbc8d8fc641e226ffbe29a85.png', '263k'),
(234, '/public/uploads/20190520/4c7e3dbc2172c89d4e91e42eb0348362.png', '55k'),
(235, '/public/uploads/20190520/84a72470450292e8cba79017f21ba256.png', '84k'),
(236, '/public/uploads/20190520/999da239f32983ddbd4bbba795a95d92.jpg', '25k'),
(237, '/public/uploads/20190520/9404eba86a52a4331e7724031a07d4f4.jpg', '35k'),
(238, '/public/uploads/20190520/9d4f40389b241f85fa7731dfc63ed345.png', '60k'),
(239, '/public/uploads/20190520/8f5780257546620a7434dbd514e2f40d.png', '21k'),
(240, '/public/uploads/20190520/a3daa4b78db9024ef8633687fb337398.jpg', '23k'),
(241, '/public/uploads/20190520/4d905c7757417ce85daf23aa805fe27f.jpg', '28k'),
(242, '/public/uploads/20190520/a044cc808ae1face8fd5ff0e38bed306.jpg', '19k'),
(243, '/public/uploads/20190520/5048aeefa46c265207e227ad3475e013.jpg', '21k');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_links`
--

CREATE TABLE IF NOT EXISTS `lotus_links` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '链接名称',
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `image1` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 1 显示  2 隐藏',
  `myorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `noDelete` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

--
-- Dumping data for table `lotus_links`
--

INSERT INTO `lotus_links` (`id`, `title`, `link`, `image1`, `status`, `myorder`, `noDelete`) VALUES
(1, '1', 'products', '\\public\\uploads\\20190414\\e907583c536d300b52e5a1df3c3f5109.png', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_nav`
--

CREATE TABLE IF NOT EXISTS `lotus_nav` (
  `id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '导航名称',
  `alias` varchar(20) DEFAULT '' COMMENT '导航别称',
  `link` varchar(255) DEFAULT '' COMMENT '导航链接',
  `icon` varchar(255) DEFAULT '' COMMENT '导航图标',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  0 隐藏  1 显示',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航表';

-- --------------------------------------------------------

--
-- Table structure for table `lotus_news`
--

CREATE TABLE IF NOT EXISTS `lotus_news` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `title_en` varchar(250) DEFAULT NULL COMMENT '标题英文',
  `title_jp` varchar(255) DEFAULT NULL,
  `classid` int(5) DEFAULT NULL COMMENT '分類',
  `mytime` date DEFAULT NULL COMMENT '时间',
  `image1` varchar(250) DEFAULT NULL COMMENT '图片',
  `mycontent` text COMMENT '详细',
  `mycontent_en` text COMMENT '详细英文',
  `mycontent_jp` text,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `lotus_news`
--

INSERT INTO `lotus_news` (`id`, `title`, `title_en`, `title_jp`, `classid`, `mytime`, `image1`, `mycontent`, `mycontent_en`, `mycontent_jp`, `status`, `myorder`, `noDelete`) VALUES
(1, '春節休館時間公告，請美人不要忘記預約新課程', NULL, NULL, 7, '2019-04-14', '', '<p>公告：農曆108新年休假日&hellip;&hellip;</p>\n\n<p>說明：<br />\n一、2/1（五）~2/14（四）休14天。<br />\n二、週年慶活動護膚保養課程享優惠，下單截止日至12/31止，以刷卡匯款完帳<br />\n&nbsp; &nbsp; &nbsp; &nbsp;為有效訂單，遇期無法再享受優惠。<br />\n三、保健品訂單1/25後下單將於2/15上班，工作日依序安排出貨。<br />\n四、重要事聯絡+Sweaining&nbsp;<br />\n&nbsp; &nbsp; &nbsp; 【思薇蜜】網路客服0985586195</p>\n\n<p>邀請您到 Wechat 分享年假喜悅<br />\n+微信ID : g0985586195</p>\n\n<p>思薇蜜全體同仁祝福您<br />\n新年快樂 新春吉祥如意</p>\n\n<p>#思薇蜜<br />\n#果凍美人</p>\n', '', NULL, 0, 1, 0),
(2, '果凍美人館 S P A 護膚保養課程優惠', NULL, NULL, NULL, '2019-01-30', NULL, '<p>果凍美人館 S P A 護膚保養課程優惠</p>\n\n<p>果凍美人館 S P A 護膚保養課程優惠</p>\n', NULL, NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_news2`
--

CREATE TABLE IF NOT EXISTS `lotus_news2` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `title_en` varchar(250) DEFAULT NULL COMMENT '标题英文',
  `title_jp` varchar(255) DEFAULT NULL,
  `classid` int(5) DEFAULT NULL COMMENT '分類',
  `mytime` timestamp NULL DEFAULT NULL COMMENT '时间',
  `image1` varchar(250) DEFAULT NULL COMMENT '图片',
  `mycontent` text COMMENT '详细',
  `mycontent_en` text COMMENT '详细英文',
  `mycontent_jp` text,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `lotus_news2`
--

INSERT INTO `lotus_news2` (`id`, `title`, `title_en`, `title_jp`, `classid`, `mytime`, `image1`, `mycontent`, `mycontent_en`, `mycontent_jp`, `status`, `myorder`, `noDelete`) VALUES
(107, '444444', NULL, NULL, 1, '2019-02-12 01:23:52', '\\public\\uploads\\20190212\\696cec86b8608234d8089ab6c8a63a76.jpg', '<p><img alt="" src="/ckfinder/userfiles/images/veer-162028819.jpg" style="height:401px; width:600px" /><img alt="" src="/public/uploads/ckfinder/images/veer-162028819.jpg" style="height:401px; width:600px" /><img alt="" src="/ckfinder/userfiles/images/20180727104228_770.jpg" style="height:400px; width:600px" /></p>\n', '', NULL, 0, 2, 0),
(1, 'mynet1', NULL, NULL, 2, '2019-02-12 12:51:21', '\\public\\uploads\\20190212\\205353998c97bd74203920f615c58597.jpg', '<p>地方<img alt="" src="/public/uploads/ckfinder/images/veer-162028819.jpg" style="height:1068px; width:1600px" /></p>\n', '<p><img alt="" src="/public/uploads/ckfinder/images/veer-162028819(1).jpg" style="height:401px; width:600px" />11113333ddf发放<img alt="" src="/public/uploads/ckfinder/images/20180727104228_770.jpg" style="height:400px; width:600px" /></p>\n', NULL, 2, 1, 0),
(122, '地点2', NULL, NULL, 1, '2019-02-13 06:31:13', '\\public\\uploads\\20190213\\580721be8de7deb0d81016ed791c26ac.jpg', '<p>的22</p>\n', '<p>地点的的&nbsp; 问问22</p>\n', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_news_class`
--

CREATE TABLE IF NOT EXISTS `lotus_news_class` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `title_en` varchar(250) DEFAULT NULL COMMENT '标题英文',
  `image1` varchar(250) DEFAULT NULL COMMENT '图片',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `lotus_news_class`
--

INSERT INTO `lotus_news_class` (`id`, `title`, `title_en`, `image1`, `status`, `myorder`, `noDelete`) VALUES
(1, '公司新聞2', 'News', '\\public\\uploads\\20190212\\6301817d7e5e0c7168f9f9dde7c4b4d8.jpg', 1, 2, 0),
(2, '行業新聞', 'News', '\\public\\uploads\\20190212\\675d053865527ecfb9138327380ac7f8.jpg', 0, 1, 0),
(6, '測試', NULL, '', 0, 3, 0),
(7, 'cs333', NULL, '', 0, 13, 0),
(8, '公司新', NULL, '\\public\\uploads\\20190414\\3a533b8388a4b8a4d6656ea1b04ebc84.png', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_options`
--

CREATE TABLE IF NOT EXISTS `lotus_options` (
  `option_value` varchar(255) NOT NULL,
  `option_name` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lotus_products`
--

CREATE TABLE IF NOT EXISTS `lotus_products` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(250) DEFAULT NULL COMMENT '标题英文',
  `classid` int(5) DEFAULT NULL COMMENT '分類',
  `mytime` timestamp NULL DEFAULT NULL COMMENT '时间',
  `price` float DEFAULT NULL,
  `mome` text,
  `mome_en` text,
  `pro_text1` varchar(255) DEFAULT NULL,
  `pro_text2` varchar(255) DEFAULT NULL,
  `image1` varchar(250) DEFAULT NULL COMMENT '图片',
  `mycontent` text COMMENT '详细',
  `mycontent_en` text COMMENT '详细英文',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `lotus_products`
--

INSERT INTO `lotus_products` (`id`, `title`, `title_en`, `classid`, `mytime`, `price`, `mome`, `mome_en`, `pro_text1`, `pro_text2`, `image1`, `mycontent`, `mycontent_en`, `status`, `myorder`, `noDelete`) VALUES
(5, '冷氣保養清洗', 'ELASTIC MOISTURIZING', 12, '0000-00-00 00:00:00', 1299, '', NULL, '', 'cs', '\\public\\uploads\\20190505\\e2b8b779b0409ced32b26882ae6a20ba.jpg', '<table border="0" cellpadding="2" cellspacing="5" style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<p><span style="color:#27ae60"><span style="font-size:20px">冷氣保養清洗 專業到府服務! 讓冷氣有新鮮空氣且更冷更省電!</span></span></p>\n\n			<p><span style="font-size:18px"><span style="color:#e67e22">您享受的是冷氣還是細菌呢？</span></span><br />\n			<span style="font-size:18px">請注意！根據報導指出有90％的過敏原來自塵蟎，而冷氣機內更是塵蟎最大。</span></p>\n\n			<p><span style="font-size:18px">1. 拿出手電筒檢查冷氣出風口，是否已經被黴菌侵占的溫床。<br />\n			&nbsp; &nbsp; 讓小孩一夜好眠是美意，但是別再讓小孩暴露在過敏原底下了！<br />\n			2. 冷氣開啟時帶有霉味<br />\n			3. 一開冷氣就打噴嚏<br />\n			4. 冷氣出風量與冷冷氣不佳<br />\n			<br />\n			<span style="color:#e67e22">冷氣清洗步驟：</span></span></p>\n\n			<p><span style="font-size:18px"><strong>1.&nbsp;<span style="color:#3498db">冷氣清洗、消毒、除霉</span></strong>：讓空氣更清新，冷度更冷，擺脫<strong>過敏原<br />\n			2.&nbsp;<span style="color:#3498db">冷氣保養</span></strong>：讓冷氣更冷、更省電尤其是<strong>室外機</strong>更要保養清洗+有各項檢查。<br />\n			&nbsp; &nbsp;因為室外機 散熱不良、冷氣就會不夠冷<br />\n			<strong>3.&nbsp;<span style="color:#3498db">冷氣健診</span></strong>：讓冷氣效能更好.更耐用預防冷氣故障，讓冷氣壽命更長</span></p>\n			</td>\n			<td><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/mEuGfgVeqSE" width="100%"></iframe></td>\n		</tr>\n	</tbody>\n</table>\n\n<p><img alt="" src="/public/uploads/ckfinder/images/20180130180630145-original-banner4.jpg" style="height:100%; width:100%" /></p>\n\n<p>&nbsp;</p>\n\n<table border="1" cellpadding="1" cellspacing="1" style="width:100%">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td>&nbsp;</td>\n			<td>單洗室內機/台</td>\n			<td>單洗室外機/台</td>\n		</tr>\n		<tr>\n			<td>分離式</td>\n			<td><strong>清洗</strong><strong>+</strong><strong>消毒</strong><strong>&nbsp;+保養+健診</strong></td>\n			<td><em><strong>&nbsp;2500&nbsp;</strong></em><em>元</em><em>/</em><em>台</em></td>\n			<td><em><strong>1000</strong>&nbsp; 元</em><em>/</em><em>台</em></td>\n		</tr>\n		<tr>\n			<td><span style="color:#e74c3c"><strong>特惠價</strong></span></td>\n			<td><span style="color:#e74c3c"><strong>清洗</strong><strong>+</strong><strong>消毒</strong><strong>&nbsp;+保養+健診</strong></span></td>\n			<td><span style="color:#e74c3c"><strong><em><u>室內機+</u></em></strong></span><em><strong><span style="color:#e74c3c"><u>室外機</u>&nbsp; </span>&nbsp;=</strong></em><em><strong>&nbsp;&nbsp;</strong><strong>2500 &nbsp; &nbsp;</strong></em><strong><em>元</em></strong></td>\n			<td>室外機更要清洗.因為室外機散熱不良. 冷氣就會不夠冷</td>\n		</tr>\n		<tr>\n			<td>吊隱式</td>\n			<td colspan="3" rowspan="1" style="text-align:center">需要安排現場估價</td>\n		</tr>\n		<tr>\n			<td>其他</td>\n			<td colspan="3" rowspan="1" style="text-align:center">需要安排現場估價</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p><span style="font-size:16px"><strong>請往下看看我們的</strong><strong>服務項目，不只是清潔，</strong></span><strong><span style="font-size:16px">我們還有</span><span style="font-size:20px"><span style="color:#e74c3c">消毒+冷氣全機健診</span></span></strong></p>\n\n<p><span style="font-size:16px"><strong>冷氣清洗保養後，</strong><strong>貼心保固一年</strong>，<strong>另有</strong><strong>&nbsp;贈送</strong><strong>+</strong><strong>&nbsp;12 項冷氣健診</strong></span></p>\n\n<p><img alt="" src="/public/uploads/ckfinder/images/02-2.jpg" style="height:100%; width:100%" /></p>\n\n<p><img alt="" src="/public/uploads/ckfinder/images/02-3.jpg" style="height:100%; width:100%" /></p>\n\n<p><span style="font-size:16px">有些公寓大樓冷安裝地點.不宜清洗，技師當場會為您評估。若冷氣是在住家陽台或安全處，則可清洗。</span></p>\n\n<p><strong><em>免費</em></strong><strong><em>服務專線</em></strong>&nbsp;&nbsp;<span style="font-size:20px"><span style="color:#e74c3c"><u><em><strong>0800 200 938</strong></em></u></span></span></p>\n\n<p><u><em><strong><img alt="" src="/public/uploads/ckfinder/images/linecodejpg.jpg" style="height:230px; width:230px" /></strong></em></u></p>\n', NULL, 0, 9, 0),
(3, '冷氣空調維修', 'ELASTIC MOISTURIZING', 8, '0000-00-00 00:00:00', 1500, '', NULL, '', '任何肌膚適用。', '\\public\\uploads\\20190505\\7400c1cb86ec8854d1d44770b47ef96a.jpg', '<p><span style="font-size:20px"><strong><span style="color:#e74c3c">冷氣空調維修</span>&nbsp; &nbsp;<span style="color:#2ecc71">專業到府服務 !&nbsp;</span>&nbsp;&nbsp;</strong></span></p>\n\n<div class="html5-video-container"><iframe frameborder="0" height="600px" src="https://www.youtube.com/embed/vBmPLvam7As" width="100%"></iframe></div>\n\n<div class="row">\n<table border="0" cellpadding="1" cellspacing="10" style="width:100%">\n	<tbody>\n		<tr>\n			<td><span style="font-size:20px"><strong><span style="color:#e74c3c">冷氣空調維修</span>&nbsp; &nbsp;<span style="color:#2ecc71">專業到府服務 !&nbsp;</span> &nbsp;</strong></span></td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td><img alt="" src="/public/uploads/ckfinder/images/about1.jpg" style="width:90%" />\n			<p><span style="font-size:20px">優質品質來服務客戶，以提高顧客滿意度 ! </span></p>\n\n			<p><span style="font-size:20px">我們擁有多年專業經驗與技 術的團隊，堅強的服務陣容，專業知識、實用效能、</span></p>\n\n			<p><span style="font-size:20px">理論與實務兼備，從設計、施工、保養、維修，配合度高，品質有保障，廣受<br />\n			消費者及 機關學校好評，我們是以熱忱服務、提供各廠牌：冷氣空調，維修、<br />\n			保養清洗、安裝、移機、回收與諮詢等服務。</span></p>\n\n			<p><span style="font-size:20px"><a href="http://line.me/ti/p/zPS-pJbzta" target="_blank"><img alt="" src="/public/uploads/ckfinder/images/line.jpg" style="height:63px; width:230px" /></a>&nbsp;<a href="tel:0800-200-938"><img alt="" src="/public/uploads/ckfinder/images/tel.jpg" style="height:63px; width:230px" /></a></span></p>\n\n			<p>&nbsp;</p>\n\n			<p><span style="font-size:20px"><img alt="" src="/public/uploads/ckfinder/images/about-t1.jpg" style="height:67px; width:330px" /></span><br />\n			<br />\n			<span style="font-size:16px">1. 冷氣流之循環迴路中不可有高物阻擋(例如：屏風、高鐵櫃等)，以免氣溫不均勻。 </span></p>\n\n			<p><span style="font-size:16px">2. 開暖氣時，剛開始會有一點燒焦味，這是正常的且很快會消失。若持續不斷，<br />\n			必須立刻關閉機器，並連絡本服務站。 </span></p>\n\n			<p><span style="font-size:16px">3. 冷氣機外部可用雨棚遮護。但要儘量避免使用封套，會影響內部機件。濾網約兩週定期清洗一次。 </span></p>\n\n			<p><span style="font-size:16px">4. 冷氣需定期檢測，冷房專用的冷氣機，每二年需做一次檢測。如是冷暖兩用型，建議至少一年。 </span></p>\n\n			<p><span style="font-size:16px">5. 長期不使用時，先清洗乾淨後(可交給廠商維修服務中心)再用罩子蓋起來。 </span></p>\n\n			<p><span style="font-size:16px">6. 期間最好每個月試運轉一次，以維持機體內部正常。</span><br />\n			&nbsp;</p>\n			</td>\n			<td>&nbsp;\n			<p><span style="font-size:20px"><span style="color:#3498db"><img alt="" src="/public/uploads/ckfinder/images/about-t2.jpg" style="height:69px; width:350px" /></span></span><br />\n			&nbsp;</p>\n\n			<p><span style="font-size:20px"><span style="color:#3498db">冷氣不冷+不夠冷：</span></span><br />\n			<span style="font-size:18px">1. 空氣過濾網是否阻塞？<br />\n			2. 溫度調節開關所設之溫度是否適當？<br />\n			3. 冷氣機前是否有障礙物？<br />\n			4. 房間門窗是否關好？<br />\n			5. 操作開關是否在微冷的位置？<br />\n			6. 室內坪數太大，而冷氣噸數太小？<br />\n			7. 屋內人數是否很多？<br />\n			8. 屋內是否正在使用電熱器具或瓦斯器具等發熱體？<br />\n			9. 是否有強烈陽光直接照進來？</span></p>\n\n			<p><span style="font-size:18px"><span style="color:#3498db">冷氣漏水：</span><br />\n			1. 是否有清洗保養過？<br />\n			2. 冷氣機是否向後傾斜？<br />\n			3. 排水口阻塞？ </span></p>\n\n			<p><span style="font-size:18px"><span style="color:#3498db">冷氣不動：</span><br />\n			1. 是否停電了？<br />\n			2. 無熔絲是否掉至OFF？<br />\n			3. 溫度設定 是否比當時室溫低？<br />\n			4. 電源、電壓是否太低？</span></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n', NULL, 0, 10, 0),
(4, '冷氣安裝移機', 'ELASTIC MOISTURIZING', 12, NULL, 1299, '\n', NULL, '', 'cs', '/public/uploads/20190520/5048aeefa46c265207e227ad3475e013.jpg', '', NULL, 0, 8, 0),
(7, '烘衣機維修', NULL, NULL, NULL, NULL, '', NULL, '', '', '/public/uploads/20190520/84a72470450292e8cba79017f21ba256.png', '<p><strong><em>烘衣機</em></strong><strong><em>維修</em></strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong><strong><em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;專業到府服務 !</em></strong></strong></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>我們有超過&nbsp;25年的服務經驗有最<strong>專業</strong>的技師+並秉持一致良好<strong>熱忱</strong>服務態度</p>\n\n<p>我們給予每個客戶<strong>誠信</strong>、最<strong>創新</strong>的技術</p>\n\n<p>提供&nbsp;<strong>烘衣機</strong><strong>&nbsp;</strong>的相關服務</p>\n\n<p>&nbsp;</p>\n\n<p><strong>全機健診. 親切快速.</strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong>價格實在. 修後保固</strong></p>\n\n<p>&nbsp;</p>\n\n<p><strong><em>&nbsp;&nbsp;</em></strong><strong><em>免費</em></strong><strong><em>服務電話</em></strong><strong><em>&nbsp;&nbsp;</em></strong><strong><em><u>0800 200 938</u></em></strong></p>\n\n<p>&nbsp;</p>\n\n<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/f55BAOfQrhg" width="560"></iframe></p>\n', NULL, 0, 1, 0),
(8, '除濕機維修 ', NULL, NULL, NULL, NULL, '', NULL, '', '', '/public/uploads/20190520/4c7e3dbc2172c89d4e91e42eb0348362.png', '', NULL, 0, 2, 0),
(9, '冷凍藏櫃維修', NULL, NULL, NULL, NULL, '', NULL, '', '', '/public/uploads/20190520/a044cc808ae1face8fd5ff0e38bed306.jpg', '', NULL, 0, 3, 0),
(10, '製冰機維修', NULL, NULL, NULL, NULL, '\n', NULL, '\n', '', '/public/uploads/20190520/9404eba86a52a4331e7724031a07d4f4.jpg', '', NULL, 0, 4, 0),
(11, '洗衣機維修 ', NULL, NULL, NULL, NULL, '\n', NULL, '', '', '/public/uploads/20190520/9d4f40389b241f85fa7731dfc63ed345.png', '', NULL, 0, 5, 0),
(12, '冰箱維修', NULL, NULL, NULL, NULL, '', NULL, '', '', '/public/uploads/20190520/8f5780257546620a7434dbd514e2f40d.png', '', NULL, 0, 6, 0),
(13, '液晶電視維修', NULL, NULL, NULL, NULL, '', NULL, '', '', '/public/uploads/20190520/a3daa4b78db9024ef8633687fb337398.jpg', '', NULL, 0, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_products_class`
--

CREATE TABLE IF NOT EXISTS `lotus_products_class` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `title_en` varchar(250) DEFAULT NULL COMMENT '标题英文',
  `title_jp` varchar(250) DEFAULT NULL,
  `pid` int(5) NOT NULL DEFAULT '0',
  `image1` varchar(250) DEFAULT NULL COMMENT '图片',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `lotus_products_class`
--

INSERT INTO `lotus_products_class` (`id`, `title`, `title_en`, `title_jp`, `pid`, `image1`, `status`, `myorder`, `noDelete`) VALUES
(1, '嫩白系列', 'News', NULL, 0, '\\public\\uploads\\20190212\\6301817d7e5e0c7168f9f9dde7c4b4d8.jpg', 1, 2, 0),
(8, '收縮系列', 'News', NULL, 0, '\\public\\uploads\\20190212\\675d053865527ecfb9138327380ac7f8.jpg', 0, 3, 0),
(12, '果凍系列', NULL, NULL, 0, NULL, 0, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_seo`
--

CREATE TABLE IF NOT EXISTS `lotus_seo` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `free` text COMMENT '自由栏位',
  `title_en` varchar(100) DEFAULT NULL,
  `title_jp` varchar(100) DEFAULT NULL,
  `tel` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `manager` varchar(200) DEFAULT NULL,
  `qq` varchar(200) DEFAULT NULL,
  `skype` varchar(200) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `lineID` varchar(100) DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `IG` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lotus_seo`
--

INSERT INTO `lotus_seo` (`id`, `title`, `keywords`, `description`, `free`, `title_en`, `title_jp`, `tel`, `phone`, `email`, `manager`, `qq`, `skype`, `facebook`, `youtube`, `lineID`, `line`, `IG`, `copyright`) VALUES
(1, '快樂先生 冷凍冷氣空調維修', '快樂先生', '快樂先生 是你冷氣家電維修的好幫手', '', '', '', '0800 200 938', '0985586195', 'bodhi7808@gmail.com', '', '', '', '', '', '0979 279 908', 'http://line.me/ti/p/zPS-pJbzta', '', '2019 © Happy Service  All Rights Reserved. 免費服務專線：0800-200-938 ');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_slide`
--

CREATE TABLE IF NOT EXISTS `lotus_slide` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '轮播图名称',
  `description` varchar(255) DEFAULT '' COMMENT '说明',
  `link` varchar(255) DEFAULT '' COMMENT '链接',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) DEFAULT '' COMMENT '轮播图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1 显示  0  隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- --------------------------------------------------------

--
-- Table structure for table `lotus_slide_category`
--

CREATE TABLE IF NOT EXISTS `lotus_slide_category` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '轮播图分类'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播图分类表';

--
-- Dumping data for table `lotus_slide_category`
--

INSERT INTO `lotus_slide_category` (`id`, `name`) VALUES
(1, '首页轮播');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_status`
--

CREATE TABLE IF NOT EXISTS `lotus_status` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `lotus_status`
--

INSERT INTO `lotus_status` (`id`, `title`, `status`, `myorder`, `noDelete`) VALUES
(0, '顯示', 0, 3, 0),
(1, '推薦', 0, 2, 0),
(2, '隱藏', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_stores`
--

CREATE TABLE IF NOT EXISTS `lotus_stores` (
  `id` int(7) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tel` varchar(250) DEFAULT NULL COMMENT '标题英文',
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '分類',
  `mytime` varchar(255) DEFAULT NULL COMMENT '时间',
  `address` varchar(250) DEFAULT NULL COMMENT '图片',
  `myname` varchar(255) DEFAULT NULL COMMENT '详细',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0显示 1推荐 2不显示',
  `myorder` int(5) NOT NULL DEFAULT '1' COMMENT '排序 数字大靠前',
  `noDelete` int(1) NOT NULL DEFAULT '0' COMMENT '0可删 1不可删'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='表';

--
-- Dumping data for table `lotus_stores`
--

INSERT INTO `lotus_stores` (`id`, `title`, `tel`, `phone`, `email`, `mytime`, `address`, `myname`, `status`, `myorder`, `noDelete`) VALUES
(1, '基隆市服務站', '0800200938', '0932-006-195', 'sweaining@gmail.com', 'PM 12:00~PM 21:00 (週一及週四休館) ', '新北市中和區景新街34巷6號1樓(中和國小旁)', '永安館', 0, 12, 0),
(3, '新北市服務站', '0800200938', '0932-006-195', 'sweaining@gmail.com', 'PM 12:00~PM 21:00 (週一及週四休館) ', '新北市中和區景新街34巷6號1樓(中和國小旁)', '南山館', 0, 10, 0),
(4, '台北市服務站', '0800200938', '', '', '', '桃園市大園區航翔路107號2047A室', '南山館', 0, 11, 0),
(5, '桃園市服務站', '0800200938', '', '', '', '', '', 0, 9, 0),
(6, '新竹市服務站', '0800200938', '', '', '', '', '', 0, 8, 0),
(7, '高雄市服務站', '0800200938', '', '', '', '', '', 0, 1, 0),
(8, '台南市服務站', '0800200938', '', '', '', '', '', 0, 2, 0),
(9, '嘉義縣服務站', '0800200938', '', '', '', '', '', 0, 3, 0),
(10, '雲林縣服務站', '0800200938', '', '', '', '', '', 0, 4, 0),
(11, '南投縣服務站', '0800200938', '', '', '', '', '', 0, 5, 0),
(12, '彰化縣服務站', '0800200938', '', '', '', '', '', 0, 6, 0),
(13, '台中市服務站', '0800200938', '', '', '', '', '', 0, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lotus_system`
--

CREATE TABLE IF NOT EXISTS `lotus_system` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '配置项名称',
  `value` text NOT NULL COMMENT '配置项值'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

--
-- Dumping data for table `lotus_system`
--

INSERT INTO `lotus_system` (`id`, `name`, `value`) VALUES
(1, 'site_config', 'a:7:{s:10:"site_title";s:30:"Think Admin 后台管理系统";s:9:"seo_title";s:0:"";s:11:"seo_keyword";s:0:"";s:15:"seo_description";s:0:"";s:14:"site_copyright";s:0:"";s:8:"site_icp";s:0:"";s:11:"site_tongji";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `lotus_user`
--

CREATE TABLE IF NOT EXISTS `lotus_user` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态  1 正常  2 禁止',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `last_login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP'
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `lotus_user`
--

INSERT INTO `lotus_user` (`id`, `username`, `password`, `mobile`, `email`, `status`, `create_time`, `last_login_time`, `last_login_ip`) VALUES
(1, 'mynet', '318c6f5a8501efcfb39a519c8b88d3fc', '', 'admin@gmail.com', 1, '2019-01-01 01:01:01', '2019-05-25 09:15:43', '162.158.58.49'),
(116, '安普黃先生', '674148e84a42edcfd2c7d2a7064e3876', '', 'bodhi7808@gmail.com', 1, '2019-05-13 01:30:38', NULL, '0.0.0.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lotus_about`
--
ALTER TABLE `lotus_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_api`
--
ALTER TABLE `lotus_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_app`
--
ALTER TABLE `lotus_app`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `lotus_article`
--
ALTER TABLE `lotus_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_auth_group`
--
ALTER TABLE `lotus_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_auth_group_access`
--
ALTER TABLE `lotus_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `lotus_auth_rule`
--
ALTER TABLE `lotus_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `lotus_banner`
--
ALTER TABLE `lotus_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_category`
--
ALTER TABLE `lotus_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_contact`
--
ALTER TABLE `lotus_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_events`
--
ALTER TABLE `lotus_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_file`
--
ALTER TABLE `lotus_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_links`
--
ALTER TABLE `lotus_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_nav`
--
ALTER TABLE `lotus_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_news`
--
ALTER TABLE `lotus_news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`title`);

--
-- Indexes for table `lotus_news2`
--
ALTER TABLE `lotus_news2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`title`);

--
-- Indexes for table `lotus_news_class`
--
ALTER TABLE `lotus_news_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`title`);

--
-- Indexes for table `lotus_options`
--
ALTER TABLE `lotus_options`
  ADD PRIMARY KEY (`option_value`);

--
-- Indexes for table `lotus_products`
--
ALTER TABLE `lotus_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_products_class`
--
ALTER TABLE `lotus_products_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`title`);

--
-- Indexes for table `lotus_seo`
--
ALTER TABLE `lotus_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_slide`
--
ALTER TABLE `lotus_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_slide_category`
--
ALTER TABLE `lotus_slide_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_status`
--
ALTER TABLE `lotus_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`title`);

--
-- Indexes for table `lotus_stores`
--
ALTER TABLE `lotus_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_system`
--
ALTER TABLE `lotus_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_user`
--
ALTER TABLE `lotus_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lotus_about`
--
ALTER TABLE `lotus_about`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lotus_api`
--
ALTER TABLE `lotus_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `lotus_app`
--
ALTER TABLE `lotus_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `lotus_article`
--
ALTER TABLE `lotus_article`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_auth_group`
--
ALTER TABLE `lotus_auth_group`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `lotus_auth_rule`
--
ALTER TABLE `lotus_auth_rule`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `lotus_banner`
--
ALTER TABLE `lotus_banner`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lotus_category`
--
ALTER TABLE `lotus_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_contact`
--
ALTER TABLE `lotus_contact`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `lotus_events`
--
ALTER TABLE `lotus_events`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lotus_file`
--
ALTER TABLE `lotus_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `lotus_links`
--
ALTER TABLE `lotus_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_nav`
--
ALTER TABLE `lotus_nav`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lotus_news`
--
ALTER TABLE `lotus_news`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lotus_news2`
--
ALTER TABLE `lotus_news2`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `lotus_news_class`
--
ALTER TABLE `lotus_news_class`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lotus_products`
--
ALTER TABLE `lotus_products`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `lotus_products_class`
--
ALTER TABLE `lotus_products_class`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lotus_seo`
--
ALTER TABLE `lotus_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_slide`
--
ALTER TABLE `lotus_slide`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lotus_slide_category`
--
ALTER TABLE `lotus_slide_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_status`
--
ALTER TABLE `lotus_status`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lotus_stores`
--
ALTER TABLE `lotus_stores`
  MODIFY `id` int(7) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `lotus_system`
--
ALTER TABLE `lotus_system`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_user`
--
ALTER TABLE `lotus_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
