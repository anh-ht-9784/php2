-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 21, 2021 lúc 01:47 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kaopiz`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_menu` int(1) DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `slug`, `show_menu`, `desc`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 'Skinny Jean2', NULL, 1, 'ádasdasd', NULL, '2021-02-21 06:41:23', -1),
(3, 'pleated skirt', NULL, 1, NULL, NULL, NULL, -1),
(4, 'blazer', NULL, 1, NULL, NULL, NULL, -1),
(5, 'sweatshirt', NULL, NULL, NULL, NULL, NULL, -1),
(6, 'Dress', NULL, 1, NULL, NULL, NULL, -1),
(7, 'backpack', NULL, NULL, NULL, NULL, NULL, -1),
(8, 'thienth dep trai', NULL, 0, 'something', '2020-10-08 18:23:17', '2020-10-08 18:59:30', -1),
(12, 'ádasd', NULL, 1, 'ádas', '2021-02-21 06:20:49', '2021-02-21 06:20:49', -1),
(14, 'ádasdaa', NULL, 1, 'aaaa', '2021-02-21 06:21:06', '2021-02-21 06:21:06', -1),
(15, 'cần cảuaaaa', NULL, 1, 'aaaaaaa', '2021-02-21 06:35:23', '2021-02-21 06:42:19', -1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `payment_method` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `customer_phone_number`, `customer_email`, `customer_address`, `total_price`, `payment_method`, `created_at`, `updated_at`) VALUES
(5, 'tieu cuong', '089987789', 'cuongtieu@gmail.com', '15 dong quan', 42410, 2, NULL, NULL),
(6, 'trần hữu thiện', '0987654321', 'thiendepzai@gmail.com', 'hàm nghi, nam từ liêm, hà nội', 177063, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_detail`
--

INSERT INTO `invoice_detail` (`invoice_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(5, 96, 1, 39837, NULL, NULL),
(5, 97, 1, 2573, NULL, NULL),
(6, 89, 2, 68613, NULL, NULL),
(6, 96, 1, 39837, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_05_070735_create_categories_table', 2),
(5, '2019_01_05_072544_alter_table_categories_update_column', 3),
(6, '2019_01_05_074643_create_products_table', 3),
(7, '2019_01_05_075227_create_invoices_table', 4),
(8, '2019_01_05_075449_create_invoice_detail_table', 4),
(9, '2019_01_12_014833_alter_table_products_add_views_column', 5),
(10, '2019_01_12_021523_create_table_product_galleries', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `cate_id`, `price`, `short_desc`, `detail`, `star`, `created_at`, `updated_at`, `views`) VALUES
(39, 'Unique Trompwww', '109616044_2754830224844435_5421817796139200187_n.jpg', 4, 59885, 'Hearts, who was going back to find herself what they arrived, with the roof. There was her face, with a little bit of use now,\' she went on, then,\' the moral of the two feet as they WILL be no such.', 'Queen said to herself, \'to be going messages for a conversation. \'You don\'t know what to do, so Alice went on again:-- \'I didn\'t write it, and very soon had to be a footman in livery, with a round.', 4.00, NULL, '2021-02-21 01:00:21', 2),
(40, 'Vaughn McLaughlin', 'AAE8H6H.jpg', 5, 54407, 'I don\'t FIT you,\' she was, that in my dear, YOU manage?\' Alice began singing a body tucked away, even introduced to be a commotion in a blow with them,\' the hearth and sometimes, \'Do you may not.', 'Alice, she went slowly after it: \'I never could abide figures!\' And with that she still held the pieces of mushroom in her pocket) till she got into it), and sometimes she scolded herself so.', 3.00, NULL, '2021-02-20 22:57:37', 1),
(42, 'Dixie Larkin', 'sunaaaaaa.jpg', 7, 99480, 'Hatter. \'You ought to keep back to see me to happen any advantage from being arches are gone, and saw one, or more; They were live at once considering how the judge,\' she was lying under the White.', 'Mock Turtle: \'nine the next, and so on.\' \'What a curious dream, dear, certainly: but now run in to your places!\' shouted the Gryphon, \'that they WOULD put their heads off?\' shouted the Queen.', 2.00, NULL, NULL, 1),
(45, 'Niko Weissnat', 'sunaaaaaa.jpg', 5, 36874, 'As soon made Alice heard it seemed to hold of THIS!\' (Sounds of the meaning in questions of yourself,\' said Alice. \'I\'ve had just at the Queen, pointing to say \'Drink me,\' said the King hastily.', 'When the pie was all dark overhead; before her was another long passage, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took her.', 5.00, NULL, NULL, 1),
(46, 'Xavier Hoppe DDS', 'sunaaaaaa.jpg', 4, 11746, 'If they hit her to learn! Oh, my poor animal\'s feelings. \'I keep them into a thing. After a good English); \'now I\'m talking!\' Just at the March Hare. \'Exactly so,\' said the Mock Turtle persisted.', 'Last came a little before she made out the answer to shillings and pence. \'Take off your hat,\' the King eagerly, and he went on in a wondering tone. \'Why, what a wonderful dream it had struck her.', 5.00, NULL, NULL, 1),
(47, 'Adrianna Renner', 'sunaaaaaa.jpg', 4, 47895, 'IS the house, quite forgot you weren\'t to begin with,\' said the Gryphon remarked: \'because I\'m Mabel, for really dreadful,\' she kept her sharp little nervous about two were taken advantage from.', 'I will prosecute YOU.--Come, I\'ll take no denial; We must have a prize herself, you know,\' said the Pigeon; \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes people.', 2.00, NULL, NULL, 1),
(48, 'Isabell Cole', 'sunaaaaaa.jpg', 4, 98107, 'March Hare will you, won\'t you, won\'t you, won\'t stand beating. Now, if it grunted again, so Alice knew that \"I eat or not.\' \'We had been looking anxiously at him when she knows it doesn\'t suit my.', 'Dormouse: \'not in that poky little house, and have next to her. \'I wish I hadn\'t quite finished my tea when I find a pleasure in all directions, tumbling up against each other; however, they got.', 2.00, NULL, NULL, 1),
(51, 'Prof. Jedediah Cole MD', 'sunaaaaaa.jpg', 5, 41669, 'And the boots every now only makes my throat!\' and then a trial: For some of the BEST butter, you know,\' said the fact. \'I suppose I don\'t like changing the Queen had been that,\' she jumped up and.', 'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go near the right size to do anything but sit with its mouth and began to tremble. Alice looked round, eager to see anything; then she had never.', 3.00, NULL, NULL, 1),
(52, 'Dr. Rudy Vandervort', 'sunaaaaaa.jpg', 3, 78633, 'I\'m doubtful about it,\' said the Queen of great curiosity, and sighing. \'It IS a curious today. I to get me out of it: \'No room! No accounting for the Cat, as it myself to do such a long as it had.', 'And beat him when he finds out who was peeping anxiously into its face to see it trying in a trembling voice:-- \'I passed by his face only, she would catch a bat, and that\'s very like a.', 4.00, NULL, NULL, 1),
(53, 'Kevon Corkery', 'sunaaaaaa.jpg', 4, 1582, 'Duchess?\' \'Hush! Hush!\' said the first thought Alice recognised the Gryphon, with an extraordinary ways of the Caterpillar was sitting between us. For anything to say.\' This time as a great or.', 'Caterpillar took the regular course.\' \'What was THAT like?\' said Alice. \'Why, SHE,\' said the Mouse was swimming away from him, and said anxiously to herself, \'because of his head. But at any rate a.', 3.00, NULL, NULL, 1),
(55, 'Clementina Bruen', 'sunaaaaaa.jpg', 6, 69990, 'At this must have ordered\'; and the dance. Would not, could bear: she felt a wondering what Latitude was, how did they lessen from a box her hands, and finish his nose, and Pepper For he seems to.', 'Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Gryphon: and Alice guessed who it was, even before she gave a look askance-- Said he thanked the.', 1.00, NULL, NULL, 1),
(56, 'Samir Nader', 'sunaaaaaa.jpg', 2, 14289, 'The cook till his Normans--\" How she did you know. Please, Ma\'am, is Bill,\' thought Alice. \'I\'m afraid that curious croquet-ground in a crash of them at this, so grave voice, but she began, in.', 'I\'d only been the right word) \'--but I shall ever see such a neck as that! No, no! You\'re a serpent; and there\'s no name signed at the top of his Normans--\" How are you getting on?\' said the Cat.', 3.00, NULL, NULL, 1),
(57, 'Elmo Cremin V', 'sunaaaaaa.jpg', 2, 82778, 'THE.', 'March Hare said to live. \'I\'ve seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good deal until she made out the proper way of speaking to it,\' she said to herself \'It\'s.', 3.00, NULL, NULL, 1),
(58, 'Mrs. Vanessa Legros', 'sunaaaaaa.jpg', 3, 77262, 'The Mouse was sneezing by mice in a little dears came near the bread-and-butter. Just then said the words: \'Yes, that\'s why. Pig!\' She did not come the others looked down and then keep herself at.', 'Duchess; \'and that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen had never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Mock Turtle, who looked at her for.', 3.00, NULL, NULL, 1),
(59, 'Ignatius Watsica', 'sunaaaaaa.jpg', 4, 2852, 'Alice, \'because they had to taste theirs, and doesn\'t believe I tell me,\' but in a minute or two, looking down on my shoulders got a really clever thing that it just in his way out. \'I beg pardon.', 'As she said to the voice of the evening, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not open any of them. \'I\'m sure I\'m not myself, you see.\' \'I don\'t.', 5.00, NULL, NULL, 1),
(62, 'Dolly Moen I', 'sunaaaaaa.jpg', 2, 58025, 'Turtle--we used to the Gryphon. \'Then, you have a real nose; also its mouth again, sitting on a fancy what would feel very politely; but it can EVEN finish, if it was sitting on his note-book.', 'The Dormouse shook its head impatiently, and said, very gravely, \'I think, you ought to have changed since her swim in the way down one side and then quietly marched off after the candle is like.', 4.00, NULL, NULL, 1),
(63, 'Corrine Beier', 'sunaaaaaa.jpg', 2, 80361, 'When the birds! Why, I used to kill it a Little Bill had looked all directions, \'just like to fly; and waited. When the Rabbit blew three dates on talking: \'Dear, dear! I suppose?\' said the truth.', 'This was not quite like the wind, and was in managing her flamingo: she succeeded in curving it down \'important,\' and some \'unimportant.\' Alice could think of anything to put his mouth close to the.', 3.00, NULL, NULL, 1),
(64, 'Clair Mraz', 'sunaaaaaa.jpg', 3, 53505, 'It did not sneeze, were any that the wood. \'The game\'s going on the corner, \'Oh dear! I should push the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' which seemed to itself \'The.', 'I wish I hadn\'t drunk quite so much!\' Alas! it was a body to cut it off from: that he shook both his shoes off. \'Give your evidence,\' the King said to herself, in a sort of idea that they had a door.', 4.00, NULL, NULL, 1),
(65, 'Sanford O\'Kon', 'sunaaaaaa.jpg', 3, 22165, 'Mock Turtle interrupted, yawning. \'I\'m glad there were Elsie, Lacie, and yet you were saying to be lost: away under it, yer honour: but there was looking for it,\' said to the pool, and sometimes.', 'She was walking hand in her head, and she drew herself up closer to Alice\'s side as she could. \'The game\'s going on shrinking rapidly: she soon found herself in a hurry that she let the jury--\' \'If.', 2.00, NULL, NULL, 1),
(66, 'Delbert Grant', 'sunaaaaaa.jpg', 6, 41699, 'King said Alice; \'but if I do!\' but I shan\'t! YOU sing,\' said Alice did not talk!\' said the bottle that her going, though this time). \'Don\'t talk about two or two feet in livery, with one of lamps.', 'It means much the most interesting, and perhaps after all it might tell her something about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that.', 3.00, NULL, NULL, 1),
(67, 'Estella Murray Sr.', 'sunaaaaaa.jpg', 6, 20242, 'Alice thought at the March Hare. \'Exactly so,\' said the locks were nine feet in bringing the Duchess; \'and she went on to begin lessons: you\'d only difficulty was, what? Alice thought poor man,\' the.', 'When they take us up and down, and was gone in a tone of great surprise. \'Of course not,\' Alice cautiously replied: \'but I must be Mabel after all, and I could not remember the simple and loving.', 4.00, NULL, NULL, 1),
(68, 'Noemi Shields', 'sunaaaaaa.jpg', 7, 53468, 'WHAT? The baby grunted again, sitting on the Mock Turtle a wretched Hatter replied. \"There was in without knowing how to the way--\' \'THAT generally a day is such stuff? Be off, and I\'m sure I vote.', 'King had said that day. \'A likely story indeed!\' said Alice, a little quicker. \'What a curious dream!\' said Alice, as she had never forgotten that, if you like,\' said the Gryphon. \'Of course,\' the.', 2.00, NULL, NULL, 1),
(69, 'Javonte Fahey DDS', 'sunaaaaaa.jpg', 5, 39834, 'Alice very like the hookah into a child,\' said the immediate adoption of saucepans, plates, and said Alice, who were all she caught the Hatter were nowhere to look so that she was terribly.', 'Dormouse crossed the court, arm-in-arm with the Gryphon. \'It\'s all her knowledge of history, Alice had never forgotten that, if you please! \"William the Conqueror, whose cause was favoured by the.', 2.00, NULL, NULL, 1),
(70, 'Vergie McCullough', 'sunaaaaaa.jpg', 2, 18459, 'CHAPTER XI. Who ever getting so rich and told you tell him--it was immediately met those cool fountains, but it just beginning very provoking to make you know,\' the race is of WHAT?\' said this, and.', 'I did: there\'s no use going back to my jaw, Has lasted the rest of the moment she appeared; but she had made her look up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS.', 4.00, NULL, NULL, 1),
(71, 'Orval Ruecker', 'sunaaaaaa.jpg', 4, 74859, 'White Rabbit whispered to sing this:-- \'Fury said the air! Do come upon Bill! the Cat in a pleasant temper, and a sigh: \'it\'s generally gave a treacle-well--eh, stupid?\' \'But you\'re falling through.', 'Soup! \'Beautiful Soup! Who cares for you?\' said the Caterpillar. Alice said to herself; \'the March Hare said to Alice. \'What sort of use in knocking,\' said the Caterpillar. \'Not QUITE right, I\'m.', 4.00, NULL, NULL, 1),
(72, 'Estel Hoppe', 'sunaaaaaa.jpg', 3, 43816, 'Alice. \'I\'m too stiff. And he did not mad. You\'re mad.\' \'But why do next! If I give you know--\' (pointing with you,\' (she couldn\'t afford to laugh; and, as he found she said the Queen will be quite.', 'For some minutes the whole pack rose up into a chrysalis--you will some day, you know--and then after that into a large plate came skimming out, straight at the bottom of a well?\' The Dormouse.', 4.00, NULL, NULL, 1),
(73, 'Luna Simonis III', 'sunaaaaaa.jpg', 4, 66992, 'Queen, turning into a subject! Our family always pepper in at the Footman\'s head: it was her promise. \'Treacle,\' said the Queen, who was looking for her sister was swimming away without my dear, I.', 'William the Conqueror.\' (For, with all speed back to the door, and the small ones choked and had just succeeded in curving it down into a small passage, not much larger than a rat-hole: she knelt.', 1.00, NULL, NULL, 1),
(74, 'Mrs. Gertrude Bogan', 'sunaaaaaa.jpg', 3, 67067, 'The King repeated in reply. \'That\'s the earth. Let me very confusing.\' \'It is to work shaking it might like herself. \'I kept doubling itself up and she tried to do let Dinah here, lad!--Here, put.', 'Gryphon, \'she wants for to know when the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at Alice. \'I\'M not a VERY turn-up nose, much more like a candle. I wonder if I only wish.', 5.00, NULL, NULL, 1),
(75, 'Ima Kuhn', 'sunaaaaaa.jpg', 7, 99663, 'The Gryphon went on, \'\"--found it was as if I\'ve got behind a long that the trees as it\'s pleased. Now you were white, but they came rather impatiently: \'any shrimp could not quite forgot how to.', 'Dodo said, \'EVERYBODY has won, and all that,\' he said in a coaxing tone, and she went on, yawning and rubbing its eyes, for it flashed across her mind that she had nibbled some more.', 1.00, NULL, NULL, 1),
(76, 'Jadyn Macejkovic', 'sunaaaaaa.jpg', 7, 29269, 'Queen\'s ears--\' the Queen,\' and ran till the pack, she said the fan and perhaps after her. There was a most confusing it in her choice, and raised himself suddenly: you see, because he kept all the.', 'Hatter: and in THAT direction,\' the Cat in a confused way, \'Prizes! Prizes!\' Alice had no pictures or conversations in it, and finding it very nice, (it had, in fact, a sort of idea that they.', 5.00, NULL, NULL, 1),
(77, 'Mr. Mohammad Koepp IV', 'sunaaaaaa.jpg', 3, 33893, 'Alice could not open place, and was silence instantly, and the Queen. \'You are you?\' She went on being ordered about for a game was the back and the Dormouse shall!\' they all at Alice didn\'t like a.', 'Hatter went on, half to itself, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a pig, my dear,\' said Alice, \'and if it makes rather a hard word, I will just explain.', 2.00, NULL, NULL, 1),
(78, 'Kailyn Wiegand', 'sunaaaaaa.jpg', 4, 24270, 'I don\'t be jury,\" Said the great curiosity, and growing small she did the trial\'s begun.\' \'They\'re done that, if she is of this moment, I fancy--Who\'s to invent something!\' \'I--I\'m a very little.', 'VERY unpleasant state of mind, she turned the corner, but the Hatter went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was beginning very angrily, but the.', 4.00, NULL, NULL, 1),
(79, 'Emmie Murazik I', 'sunaaaaaa.jpg', 7, 73416, 'I can you?\' \'I\'m a--I\'m a--\' \'Well! I\'ve got any of tears which the chimney, has he?\' said to find quite enough--I hope it\'ll seem, sending presents to herself, and washing her too much what it.', 'King: \'leave out that one of them were animals, and some were birds,) \'I suppose they are the jurors.\' She said it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched Hatter.', 3.00, NULL, NULL, 1),
(80, 'Leda Turner', 'sunaaaaaa.jpg', 5, 18120, 'Alice severely. \'What HAVE tasted an old fellow! Don\'t let him declare, \"You have come, or so, and decidedly, and no wonder who instantly jumped into alarm in a good many miles down, down. Would.', 'It sounded an excellent opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, turning to the Dormouse, who seemed ready to sink into the sky. Twinkle, twinkle--\"\' Here.', 3.00, NULL, NULL, 1),
(81, 'Mrs. Myah Kihn', 'sunaaaaaa.jpg', 4, 55757, 'SOMEBODY ought to herself. At last the order of one repeat it, and he thought was a long that what work throwing an anxious to see you?\' he said, \'EVERYBODY has just in a neat little voice, \'Let us.', 'MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice. \'It must have been was not here before,\' said Alice,) and round the thistle again; then the Mock Turtle, and to hear it say, as.', 1.00, NULL, NULL, 1),
(82, 'trung trau', 'sunaaaaaa.jpg', 6, 20436, 'Gryphon: \'I wonder what they drew all that.\' \'Well, be some tea and both its voice. Nobody moved. \'Who are too flustered to herself. At this grand words \'DRINK ME\' beautifully marked \'poison,\' it in.', 'And the Gryphon only answered \'Come on!\' cried the Mock Turtle\'s Story \'You can\'t think how glad I am in the air, mixed up with the distant green leaves. As there seemed to be full of smoke from one.', 1.00, NULL, NULL, 1),
(83, 'Willa Sanford', 'sunaaaaaa.jpg', 3, 45428, 'I shall have this cat grins like it is twelve, and I\'m not do to herself. At this time for the right size for a sort of her arm, and the door and said the March Hare,) \'--it was not a.', 'She was a general chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' said Alice. \'Come on, then,\'.', 2.00, NULL, NULL, 1),
(84, 'con trau', 'sunaaaaaa.jpg', 6, 65523, 'Who Stole the Hatter. \'He won\'t you, and all the lobsters again!\' yelled the King in a pig, my time, while the most important air, and, as well was the Gryphon replied very earnestly. \'I\'ve so.', 'They had not long to doubt, for the next thing is, to get hold of its little eyes, but it puzzled her very much confused, \'I don\'t know of any good reason, and as it lasted.) \'Then the Dormouse into.', 2.00, NULL, NULL, 1),
(85, 'Prof. William Maggio V', 'sunaaaaaa.jpg', 5, 45682, 'He looked at once, with the way out into its eyelids, so like a rabbit with a whiting kindly, but she went on, \'I do,\' said nothing: she could. The King sharply. \'Do bats eat the Hatter, \'you see.', 'Take your choice!\' The Duchess took no notice of her hedgehog. The hedgehog was engaged in a coaxing tone, and added \'It isn\'t directed at all,\' said the King added in an encouraging opening for a.', 5.00, NULL, NULL, 1),
(86, 'Ilene Franecki', 'sunaaaaaa.jpg', 2, 23361, 'Christmas.\' And took down in a pity. I should like that must be said. \'Fifteenth,\' said the animals that the e--e--evening, Beautiful, beautiful Soup! Who ever so rich and eaten up again! Let me out.', 'Alice, jumping up in her haste, she had looked under it, and found that her flamingo was gone in a melancholy tone. \'Nobody seems to suit them!\' \'I haven\'t opened it yet,\' said the last words out.', 1.00, NULL, NULL, 1),
(87, 'Lesly Walsh', 'sunaaaaaa.jpg', 6, 20538, 'I used to look at first, \'why your name, child?\' \'My dear! Do come and the young lady,\' said the Dormouse again, but she put them can find them.\' In a prize herself, \'I don\'t know what o\'clock it.', 'Caterpillar. \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said Alice, in a melancholy way, being quite unable to move. She soon got it out to the part about her pet: \'Dinah\'s our cat.', 1.00, NULL, NULL, 1),
(88, 'Mr. Anastacio Stamm II', 'sunaaaaaa.jpg', 5, 1509, 'Beautiful, beautiful garden--how IS his scaly friend of a procession,\' thought decidedly uncivil. \'But what was going to begin.\' For, you were looking at the whole place where Dinn may be the.', 'Duchess, as she could. \'The game\'s going on between the executioner, the King, \'that saves a world of trouble, you know, this sort in her face, and was gone in a hoarse, feeble voice: \'I heard the.', 2.00, NULL, NULL, 1),
(89, 'Nestor Morissette DDS', 'sunaaaaaa.jpg', 3, 68613, 'Yet you are you like the earth! How are so easily offended, you to her foot up into little recovered from a shrill, loud voice, and vanished. Alice desperately: \'he\'s perfectly sure I have to.', 'March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t keep the same thing with you,\' said Alice, always ready to sink into the sky all the first minute or two, and the great hall, with.', 1.00, NULL, NULL, 1),
(91, 'Dr. Carter Brakus Jr.', 'sunaaaaaa.jpg', 3, 15105, 'HER ONE, THEY GAVE HIM TWO--\" why, that accounts for the looking-glass. There ought to Alice, \'we were all that.\' \'With extras?\' asked triumphantly. Alice in sight, he found out like to Alice. \'I.', 'Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Mock Turtle. \'She can\'t explain.', 4.00, NULL, NULL, 1),
(92, 'Oren Kilback', 'sunaaaaaa.jpg', 2, 75821, 'Soup,\" will do, lying round it: for the Hatter. \'You may as large letters. It was, no time she was so useful, and added with the whole pack of nursing it, yer honour!\' (He pronounced it to get out.\".', 'I will tell you my history, and you\'ll understand why it is you hate--C and D,\' she added aloud. \'Do you know what it meant till now.\' \'If that\'s all I can reach the key; and if it had fallen into.', 3.00, NULL, NULL, 1),
(93, 'Carolanne Metz IV', 'sunaaaaaa.jpg', 5, 2814, 'I don\'t know what he went on, \'if people near the same thing sat still and a smile. There was such dainties would be the same little glass table and gloves. \'How do something or later. However.', 'Caterpillar decidedly, and there was hardly room for this, and she tried to curtsey as she came up to the little golden key and hurried off to the Queen, and Alice was beginning to get very tired of.', 4.00, NULL, NULL, 1),
(94, 'Prof. Adrien Friesen', 'sunaaaaaa.jpg', 3, 91459, 'King, and the Queen\'s ears--\' the Rabbit as she be QUITE right, Five! Always lay the Eaglet bent down again, the Gryphon, and the Owl had put it was Mystery,\' the air. She was indeed: she grew no.', 'YOU,\"\' said Alice. \'Off with his head!\' or \'Off with their heads!\' and the turtles all advance! They are waiting on the door opened inwards, and Alice\'s elbow was pressed hard against it, that.', 1.00, NULL, NULL, 1),
(95, 'Kirstin Bauch', 'sunaaaaaa.jpg', 2, 41524, 'Drawling--the Drawling-master was now about the one only a song?\' \'Oh, I\'m NOT SWIM--\" you fond--of--of dogs?\' The first question was more puzzled, but she had got up my dear Sir, With gently.', 'Gryphon: \'I went to school in the house before she gave her one, they gave him two, You gave us three or more; They all sat down with wonder at the top of the evening, beautiful Soup! \'Beautiful.', 5.00, NULL, NULL, 1),
(96, 'Alessandra Metz', 'sunaaaaaa.jpg', 7, 39837, 'Queen, and said, turning to her repeating all that beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of speaking to nine feet high, and a hoarse and whiskers, how she went by.', 'Alice thought she might find another key on it, or at any rate a book written about me, that there ought! And when I breathe\"!\' \'It IS the use of a muchness\"--did you ever saw. How she longed to get.', 4.00, NULL, NULL, 1),
(97, 'something', 'sunaaaaaa.jpg', 7, 2573, 'Lizard, who is May it would feel very important,\' the same thing,\' Alice aloud, addressing nobody in a shriek, and found it yet,\' said the opportunity of half of Hearts were learning to think that.', 'England the nearer is to find that the way of nursing it, (which was to find her in the morning, just time to go, for the hot day made her feel very queer indeed:-- \'\'Tis the voice of the bill.', 1.00, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `img_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `img_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://lorempixel.com/640/480/cats/?10546', NULL, NULL),
(2, 1, 'https://lorempixel.com/640/480/cats/?23905', NULL, NULL),
(3, 1, 'https://lorempixel.com/640/480/cats/?66813', NULL, NULL),
(4, 2, 'https://lorempixel.com/640/480/cats/?67185', NULL, NULL),
(5, 2, 'https://lorempixel.com/640/480/cats/?24575', NULL, NULL),
(6, 2, 'https://lorempixel.com/640/480/cats/?15621', NULL, NULL),
(7, 2, 'https://lorempixel.com/640/480/cats/?69292', NULL, NULL),
(8, 3, 'https://lorempixel.com/640/480/cats/?25547', NULL, NULL),
(9, 3, 'https://lorempixel.com/640/480/cats/?71965', NULL, NULL),
(10, 3, 'https://lorempixel.com/640/480/cats/?31612', NULL, NULL),
(11, 4, 'https://lorempixel.com/640/480/cats/?10227', NULL, NULL),
(12, 4, 'https://lorempixel.com/640/480/cats/?87389', NULL, NULL),
(13, 4, 'https://lorempixel.com/640/480/cats/?33849', NULL, NULL),
(14, 4, 'https://lorempixel.com/640/480/cats/?98511', NULL, NULL),
(15, 5, 'https://lorempixel.com/640/480/cats/?44170', NULL, NULL),
(16, 5, 'https://lorempixel.com/640/480/cats/?26460', NULL, NULL),
(17, 5, 'https://lorempixel.com/640/480/cats/?41734', NULL, NULL),
(18, 6, 'https://lorempixel.com/640/480/cats/?86850', NULL, NULL),
(19, 6, 'https://lorempixel.com/640/480/cats/?29948', NULL, NULL),
(20, 6, 'https://lorempixel.com/640/480/cats/?52631', NULL, NULL),
(21, 7, 'https://lorempixel.com/640/480/cats/?16016', NULL, NULL),
(22, 7, 'https://lorempixel.com/640/480/cats/?80666', NULL, NULL),
(23, 7, 'https://lorempixel.com/640/480/cats/?71484', NULL, NULL),
(24, 7, 'https://lorempixel.com/640/480/cats/?37459', NULL, NULL),
(25, 7, 'https://lorempixel.com/640/480/cats/?25810', NULL, NULL),
(26, 8, 'https://lorempixel.com/640/480/cats/?63687', NULL, NULL),
(27, 8, 'https://lorempixel.com/640/480/cats/?41774', NULL, NULL),
(28, 8, 'https://lorempixel.com/640/480/cats/?53737', NULL, NULL),
(29, 8, 'https://lorempixel.com/640/480/cats/?19013', NULL, NULL),
(30, 8, 'https://lorempixel.com/640/480/cats/?77785', NULL, NULL),
(31, 9, 'https://lorempixel.com/640/480/cats/?44243', NULL, NULL),
(32, 9, 'https://lorempixel.com/640/480/cats/?47469', NULL, NULL),
(33, 9, 'https://lorempixel.com/640/480/cats/?47198', NULL, NULL),
(34, 9, 'https://lorempixel.com/640/480/cats/?51295', NULL, NULL),
(35, 9, 'https://lorempixel.com/640/480/cats/?15267', NULL, NULL),
(36, 10, 'https://lorempixel.com/640/480/cats/?55076', NULL, NULL),
(37, 10, 'https://lorempixel.com/640/480/cats/?56526', NULL, NULL),
(38, 10, 'https://lorempixel.com/640/480/cats/?47395', NULL, NULL),
(39, 10, 'https://lorempixel.com/640/480/cats/?28764', NULL, NULL),
(40, 11, 'https://lorempixel.com/640/480/cats/?37310', NULL, NULL),
(41, 11, 'https://lorempixel.com/640/480/cats/?30736', NULL, NULL),
(42, 11, 'https://lorempixel.com/640/480/cats/?25207', NULL, NULL),
(43, 11, 'https://lorempixel.com/640/480/cats/?51950', NULL, NULL),
(44, 11, 'https://lorempixel.com/640/480/cats/?12853', NULL, NULL),
(45, 12, 'https://lorempixel.com/640/480/cats/?30453', NULL, NULL),
(46, 12, 'https://lorempixel.com/640/480/cats/?58005', NULL, NULL),
(47, 12, 'https://lorempixel.com/640/480/cats/?56907', NULL, NULL),
(48, 13, 'https://lorempixel.com/640/480/cats/?75762', NULL, NULL),
(49, 13, 'https://lorempixel.com/640/480/cats/?18853', NULL, NULL),
(50, 13, 'https://lorempixel.com/640/480/cats/?46606', NULL, NULL),
(51, 14, 'https://lorempixel.com/640/480/cats/?28151', NULL, NULL),
(52, 14, 'https://lorempixel.com/640/480/cats/?12919', NULL, NULL),
(53, 14, 'https://lorempixel.com/640/480/cats/?46318', NULL, NULL),
(54, 15, 'https://lorempixel.com/640/480/cats/?96128', NULL, NULL),
(55, 15, 'https://lorempixel.com/640/480/cats/?29842', NULL, NULL),
(56, 15, 'https://lorempixel.com/640/480/cats/?17676', NULL, NULL),
(57, 15, 'https://lorempixel.com/640/480/cats/?41467', NULL, NULL),
(58, 16, 'https://lorempixel.com/640/480/cats/?23140', NULL, NULL),
(59, 16, 'https://lorempixel.com/640/480/cats/?84316', NULL, NULL),
(60, 16, 'https://lorempixel.com/640/480/cats/?55984', NULL, NULL),
(61, 17, 'https://lorempixel.com/640/480/cats/?46900', NULL, NULL),
(62, 17, 'https://lorempixel.com/640/480/cats/?49131', NULL, NULL),
(63, 17, 'https://lorempixel.com/640/480/cats/?57927', NULL, NULL),
(64, 18, 'https://lorempixel.com/640/480/cats/?16479', NULL, NULL),
(65, 18, 'https://lorempixel.com/640/480/cats/?32847', NULL, NULL),
(66, 18, 'https://lorempixel.com/640/480/cats/?57846', NULL, NULL),
(67, 18, 'https://lorempixel.com/640/480/cats/?77881', NULL, NULL),
(68, 19, 'https://lorempixel.com/640/480/cats/?10022', NULL, NULL),
(69, 19, 'https://lorempixel.com/640/480/cats/?43867', NULL, NULL),
(70, 19, 'https://lorempixel.com/640/480/cats/?38764', NULL, NULL),
(71, 19, 'https://lorempixel.com/640/480/cats/?39340', NULL, NULL),
(72, 19, 'https://lorempixel.com/640/480/cats/?18785', NULL, NULL),
(73, 20, 'https://lorempixel.com/640/480/cats/?32524', NULL, NULL),
(74, 20, 'https://lorempixel.com/640/480/cats/?72784', NULL, NULL),
(75, 20, 'https://lorempixel.com/640/480/cats/?88463', NULL, NULL),
(76, 20, 'https://lorempixel.com/640/480/cats/?96818', NULL, NULL),
(77, 21, 'https://lorempixel.com/640/480/cats/?82362', NULL, NULL),
(78, 21, 'https://lorempixel.com/640/480/cats/?36685', NULL, NULL),
(79, 21, 'https://lorempixel.com/640/480/cats/?31232', NULL, NULL),
(80, 21, 'https://lorempixel.com/640/480/cats/?67896', NULL, NULL),
(81, 22, 'https://lorempixel.com/640/480/cats/?96932', NULL, NULL),
(82, 22, 'https://lorempixel.com/640/480/cats/?57154', NULL, NULL),
(83, 22, 'https://lorempixel.com/640/480/cats/?97056', NULL, NULL),
(84, 22, 'https://lorempixel.com/640/480/cats/?41302', NULL, NULL),
(85, 22, 'https://lorempixel.com/640/480/cats/?37458', NULL, NULL),
(86, 23, 'https://lorempixel.com/640/480/cats/?85766', NULL, NULL),
(87, 23, 'https://lorempixel.com/640/480/cats/?58748', NULL, NULL),
(88, 23, 'https://lorempixel.com/640/480/cats/?35805', NULL, NULL),
(89, 24, 'https://lorempixel.com/640/480/cats/?53471', NULL, NULL),
(90, 24, 'https://lorempixel.com/640/480/cats/?23126', NULL, NULL),
(91, 24, 'https://lorempixel.com/640/480/cats/?11787', NULL, NULL),
(92, 24, 'https://lorempixel.com/640/480/cats/?60390', NULL, NULL),
(93, 24, 'https://lorempixel.com/640/480/cats/?19663', NULL, NULL),
(94, 25, 'https://lorempixel.com/640/480/cats/?33367', NULL, NULL),
(95, 25, 'https://lorempixel.com/640/480/cats/?98762', NULL, NULL),
(96, 25, 'https://lorempixel.com/640/480/cats/?87512', NULL, NULL),
(97, 25, 'https://lorempixel.com/640/480/cats/?61615', NULL, NULL),
(98, 26, 'https://lorempixel.com/640/480/cats/?11866', NULL, NULL),
(99, 26, 'https://lorempixel.com/640/480/cats/?53197', NULL, NULL),
(100, 26, 'https://lorempixel.com/640/480/cats/?28940', NULL, NULL),
(101, 26, 'https://lorempixel.com/640/480/cats/?24319', NULL, NULL),
(102, 26, 'https://lorempixel.com/640/480/cats/?96222', NULL, NULL),
(103, 27, 'https://lorempixel.com/640/480/cats/?51850', NULL, NULL),
(104, 27, 'https://lorempixel.com/640/480/cats/?76288', NULL, NULL),
(105, 27, 'https://lorempixel.com/640/480/cats/?61211', NULL, NULL),
(106, 27, 'https://lorempixel.com/640/480/cats/?27911', NULL, NULL),
(107, 28, 'https://lorempixel.com/640/480/cats/?20731', NULL, NULL),
(108, 28, 'https://lorempixel.com/640/480/cats/?51063', NULL, NULL),
(109, 28, 'https://lorempixel.com/640/480/cats/?82564', NULL, NULL),
(110, 29, 'https://lorempixel.com/640/480/cats/?89182', NULL, NULL),
(111, 29, 'https://lorempixel.com/640/480/cats/?59597', NULL, NULL),
(112, 29, 'https://lorempixel.com/640/480/cats/?97357', NULL, NULL),
(113, 30, 'https://lorempixel.com/640/480/cats/?23119', NULL, NULL),
(114, 30, 'https://lorempixel.com/640/480/cats/?47740', NULL, NULL),
(115, 30, 'https://lorempixel.com/640/480/cats/?35375', NULL, NULL),
(116, 31, 'https://lorempixel.com/640/480/cats/?85442', NULL, NULL),
(117, 31, 'https://lorempixel.com/640/480/cats/?75400', NULL, NULL),
(118, 31, 'https://lorempixel.com/640/480/cats/?92437', NULL, NULL),
(119, 32, 'https://cf.shopee.vn/file/4638eac3195681c4b3b96f00aeca0937', NULL, NULL),
(120, 32, 'https://img.mayflower.vn/2018/09/bo-hoa-ve-dep-dac-biet-89.jpg', NULL, NULL),
(121, 32, 'https://hoatuoihoamy.com/wp-content/uploads/2019/03/hoa-hong-trai-tim-dep-2.jpg', NULL, NULL),
(122, 33, 'https://lorempixel.com/640/480/cats/?66297', NULL, NULL),
(123, 33, 'https://lorempixel.com/640/480/cats/?76125', NULL, NULL),
(124, 33, 'https://lorempixel.com/640/480/cats/?48280', NULL, NULL),
(125, 34, 'https://lorempixel.com/640/480/cats/?10008', NULL, NULL),
(126, 34, 'https://lorempixel.com/640/480/cats/?56069', NULL, NULL),
(127, 34, 'https://lorempixel.com/640/480/cats/?33208', NULL, NULL),
(128, 34, 'https://lorempixel.com/640/480/cats/?50674', NULL, NULL),
(129, 35, 'https://lorempixel.com/640/480/cats/?30989', NULL, NULL),
(130, 35, 'https://lorempixel.com/640/480/cats/?67180', NULL, NULL),
(131, 35, 'https://lorempixel.com/640/480/cats/?62204', NULL, NULL),
(132, 35, 'https://lorempixel.com/640/480/cats/?94888', NULL, NULL),
(133, 35, 'https://lorempixel.com/640/480/cats/?40690', NULL, NULL),
(134, 36, 'https://lorempixel.com/640/480/cats/?72384', NULL, NULL),
(135, 36, 'https://lorempixel.com/640/480/cats/?47333', NULL, NULL),
(136, 36, 'https://lorempixel.com/640/480/cats/?34049', NULL, NULL),
(137, 36, 'https://lorempixel.com/640/480/cats/?23086', NULL, NULL),
(138, 36, 'https://lorempixel.com/640/480/cats/?53368', NULL, NULL),
(139, 37, 'https://lorempixel.com/640/480/cats/?97320', NULL, NULL),
(140, 37, 'https://lorempixel.com/640/480/cats/?15688', NULL, NULL),
(141, 37, 'https://lorempixel.com/640/480/cats/?19290', NULL, NULL),
(142, 37, 'https://lorempixel.com/640/480/cats/?14295', NULL, NULL),
(143, 37, 'https://lorempixel.com/640/480/cats/?90872', NULL, NULL),
(144, 38, 'https://lorempixel.com/640/480/cats/?96203', NULL, NULL),
(145, 38, 'https://lorempixel.com/640/480/cats/?59453', NULL, NULL),
(146, 38, 'https://lorempixel.com/640/480/cats/?66525', NULL, NULL),
(147, 38, 'https://lorempixel.com/640/480/cats/?77968', NULL, NULL),
(148, 39, 'https://lorempixel.com/640/480/cats/?42720', NULL, NULL),
(149, 39, 'https://lorempixel.com/640/480/cats/?61860', NULL, NULL),
(150, 39, 'https://lorempixel.com/640/480/cats/?56031', NULL, NULL),
(151, 40, 'https://lorempixel.com/640/480/cats/?43305', NULL, NULL),
(152, 40, 'https://lorempixel.com/640/480/cats/?77715', NULL, NULL),
(153, 40, 'https://lorempixel.com/640/480/cats/?96875', NULL, NULL),
(154, 40, 'https://lorempixel.com/640/480/cats/?79975', NULL, NULL),
(155, 41, 'https://lorempixel.com/640/480/cats/?65481', NULL, NULL),
(156, 41, 'https://lorempixel.com/640/480/cats/?77041', NULL, NULL),
(157, 41, 'https://lorempixel.com/640/480/cats/?79734', NULL, NULL),
(158, 42, 'https://lorempixel.com/640/480/cats/?42028', NULL, NULL),
(159, 42, 'https://lorempixel.com/640/480/cats/?97900', NULL, NULL),
(160, 42, 'https://lorempixel.com/640/480/cats/?32792', NULL, NULL),
(161, 42, 'https://lorempixel.com/640/480/cats/?96427', NULL, NULL),
(162, 43, 'https://lorempixel.com/640/480/cats/?18404', NULL, NULL),
(163, 43, 'https://lorempixel.com/640/480/cats/?30561', NULL, NULL),
(164, 43, 'https://lorempixel.com/640/480/cats/?82719', NULL, NULL),
(165, 43, 'https://lorempixel.com/640/480/cats/?54915', NULL, NULL),
(166, 43, 'https://lorempixel.com/640/480/cats/?59557', NULL, NULL),
(167, 44, 'https://lorempixel.com/640/480/cats/?13149', NULL, NULL),
(168, 44, 'https://lorempixel.com/640/480/cats/?62382', NULL, NULL),
(169, 44, 'https://lorempixel.com/640/480/cats/?65684', NULL, NULL),
(170, 44, 'https://lorempixel.com/640/480/cats/?63440', NULL, NULL),
(171, 45, 'https://lorempixel.com/640/480/cats/?70977', NULL, NULL),
(172, 45, 'https://lorempixel.com/640/480/cats/?64695', NULL, NULL),
(173, 45, 'https://lorempixel.com/640/480/cats/?98096', NULL, NULL),
(174, 45, 'https://lorempixel.com/640/480/cats/?99658', NULL, NULL),
(175, 45, 'https://lorempixel.com/640/480/cats/?28580', NULL, NULL),
(176, 46, 'https://lorempixel.com/640/480/cats/?41240', NULL, NULL),
(177, 46, 'https://lorempixel.com/640/480/cats/?26337', NULL, NULL),
(178, 46, 'https://lorempixel.com/640/480/cats/?93630', NULL, NULL),
(179, 46, 'https://lorempixel.com/640/480/cats/?84024', NULL, NULL),
(180, 47, 'https://lorempixel.com/640/480/cats/?99428', NULL, NULL),
(181, 47, 'https://lorempixel.com/640/480/cats/?26891', NULL, NULL),
(182, 47, 'https://lorempixel.com/640/480/cats/?81523', NULL, NULL),
(183, 47, 'https://lorempixel.com/640/480/cats/?85579', NULL, NULL),
(184, 47, 'https://lorempixel.com/640/480/cats/?91038', NULL, NULL),
(185, 48, 'https://lorempixel.com/640/480/cats/?82464', NULL, NULL),
(186, 48, 'https://lorempixel.com/640/480/cats/?89880', NULL, NULL),
(187, 48, 'https://lorempixel.com/640/480/cats/?96576', NULL, NULL),
(188, 49, 'https://lorempixel.com/640/480/cats/?57634', NULL, NULL),
(189, 49, 'https://lorempixel.com/640/480/cats/?56556', NULL, NULL),
(190, 49, 'https://lorempixel.com/640/480/cats/?93115', NULL, NULL),
(191, 49, 'https://lorempixel.com/640/480/cats/?13609', NULL, NULL),
(192, 50, 'https://lorempixel.com/640/480/cats/?98587', NULL, NULL),
(193, 50, 'https://lorempixel.com/640/480/cats/?52770', NULL, NULL),
(194, 50, 'https://lorempixel.com/640/480/cats/?66402', NULL, NULL),
(195, 51, 'https://lorempixel.com/640/480/cats/?85831', NULL, NULL),
(196, 51, 'https://lorempixel.com/640/480/cats/?76195', NULL, NULL),
(197, 51, 'https://lorempixel.com/640/480/cats/?72317', NULL, NULL),
(198, 52, 'https://lorempixel.com/640/480/cats/?19033', NULL, NULL),
(199, 52, 'https://lorempixel.com/640/480/cats/?87591', NULL, NULL),
(200, 52, 'https://lorempixel.com/640/480/cats/?60897', NULL, NULL),
(201, 52, 'https://lorempixel.com/640/480/cats/?54972', NULL, NULL),
(202, 53, 'https://lorempixel.com/640/480/cats/?69178', NULL, NULL),
(203, 53, 'https://lorempixel.com/640/480/cats/?29671', NULL, NULL),
(204, 53, 'https://lorempixel.com/640/480/cats/?91658', NULL, NULL),
(205, 54, 'https://lorempixel.com/640/480/cats/?76412', NULL, NULL),
(206, 54, 'https://lorempixel.com/640/480/cats/?24867', NULL, NULL),
(207, 54, 'https://lorempixel.com/640/480/cats/?54658', NULL, NULL),
(208, 55, 'https://lorempixel.com/640/480/cats/?54009', NULL, NULL),
(209, 55, 'https://lorempixel.com/640/480/cats/?41465', NULL, NULL),
(210, 55, 'https://lorempixel.com/640/480/cats/?51223', NULL, NULL),
(211, 55, 'https://lorempixel.com/640/480/cats/?90484', NULL, NULL),
(212, 56, 'https://lorempixel.com/640/480/cats/?67326', NULL, NULL),
(213, 56, 'https://lorempixel.com/640/480/cats/?61444', NULL, NULL),
(214, 56, 'https://lorempixel.com/640/480/cats/?69381', NULL, NULL),
(215, 57, 'https://lorempixel.com/640/480/cats/?59653', NULL, NULL),
(216, 57, 'https://lorempixel.com/640/480/cats/?77492', NULL, NULL),
(217, 57, 'https://lorempixel.com/640/480/cats/?29601', NULL, NULL),
(218, 57, 'https://lorempixel.com/640/480/cats/?33522', NULL, NULL),
(219, 57, 'https://lorempixel.com/640/480/cats/?96833', NULL, NULL),
(220, 58, 'https://lorempixel.com/640/480/cats/?31175', NULL, NULL),
(221, 58, 'https://lorempixel.com/640/480/cats/?87020', NULL, NULL),
(222, 58, 'https://lorempixel.com/640/480/cats/?29338', NULL, NULL),
(223, 58, 'https://lorempixel.com/640/480/cats/?97502', NULL, NULL),
(224, 58, 'https://lorempixel.com/640/480/cats/?17065', NULL, NULL),
(225, 59, 'https://lorempixel.com/640/480/cats/?36711', NULL, NULL),
(226, 59, 'https://lorempixel.com/640/480/cats/?23487', NULL, NULL),
(227, 59, 'https://lorempixel.com/640/480/cats/?52090', NULL, NULL),
(228, 59, 'https://lorempixel.com/640/480/cats/?25114', NULL, NULL),
(229, 60, 'https://lorempixel.com/640/480/cats/?94806', NULL, NULL),
(230, 60, 'https://lorempixel.com/640/480/cats/?65979', NULL, NULL),
(231, 60, 'https://lorempixel.com/640/480/cats/?16462', NULL, NULL),
(232, 60, 'https://lorempixel.com/640/480/cats/?58719', NULL, NULL),
(233, 60, 'https://lorempixel.com/640/480/cats/?38888', NULL, NULL),
(234, 61, 'https://lorempixel.com/640/480/cats/?43706', NULL, NULL),
(235, 61, 'https://lorempixel.com/640/480/cats/?49139', NULL, NULL),
(236, 61, 'https://lorempixel.com/640/480/cats/?72622', NULL, NULL),
(237, 62, 'https://lorempixel.com/640/480/cats/?91536', NULL, NULL),
(238, 62, 'https://lorempixel.com/640/480/cats/?27182', NULL, NULL),
(239, 62, 'https://lorempixel.com/640/480/cats/?39972', NULL, NULL),
(240, 62, 'https://lorempixel.com/640/480/cats/?97179', NULL, NULL),
(241, 63, 'https://lorempixel.com/640/480/cats/?95300', NULL, NULL),
(242, 63, 'https://lorempixel.com/640/480/cats/?73870', NULL, NULL),
(243, 63, 'https://lorempixel.com/640/480/cats/?76734', NULL, NULL),
(244, 63, 'https://lorempixel.com/640/480/cats/?52520', NULL, NULL),
(245, 63, 'https://lorempixel.com/640/480/cats/?71973', NULL, NULL),
(246, 64, 'https://lorempixel.com/640/480/cats/?71530', NULL, NULL),
(247, 64, 'https://lorempixel.com/640/480/cats/?64561', NULL, NULL),
(248, 64, 'https://lorempixel.com/640/480/cats/?13452', NULL, NULL),
(249, 65, 'https://lorempixel.com/640/480/cats/?15601', NULL, NULL),
(250, 65, 'https://lorempixel.com/640/480/cats/?87968', NULL, NULL),
(251, 65, 'https://lorempixel.com/640/480/cats/?88828', NULL, NULL),
(252, 65, 'https://lorempixel.com/640/480/cats/?89200', NULL, NULL),
(253, 66, 'https://lorempixel.com/640/480/cats/?51062', NULL, NULL),
(254, 66, 'https://lorempixel.com/640/480/cats/?92177', NULL, NULL),
(255, 66, 'https://lorempixel.com/640/480/cats/?48145', NULL, NULL),
(256, 67, 'https://lorempixel.com/640/480/cats/?29025', NULL, NULL),
(257, 67, 'https://lorempixel.com/640/480/cats/?37588', NULL, NULL),
(258, 67, 'https://lorempixel.com/640/480/cats/?47573', NULL, NULL),
(259, 68, 'https://lorempixel.com/640/480/cats/?62921', NULL, NULL),
(260, 68, 'https://lorempixel.com/640/480/cats/?42596', NULL, NULL),
(261, 68, 'https://lorempixel.com/640/480/cats/?24186', NULL, NULL),
(262, 68, 'https://lorempixel.com/640/480/cats/?15940', NULL, NULL),
(263, 69, 'https://lorempixel.com/640/480/cats/?17788', NULL, NULL),
(264, 69, 'https://lorempixel.com/640/480/cats/?10763', NULL, NULL),
(265, 69, 'https://lorempixel.com/640/480/cats/?83058', NULL, NULL),
(266, 69, 'https://lorempixel.com/640/480/cats/?95174', NULL, NULL),
(267, 69, 'https://lorempixel.com/640/480/cats/?86660', NULL, NULL),
(268, 70, 'https://lorempixel.com/640/480/cats/?91763', NULL, NULL),
(269, 70, 'https://lorempixel.com/640/480/cats/?94007', NULL, NULL),
(270, 70, 'https://lorempixel.com/640/480/cats/?28914', NULL, NULL),
(271, 71, 'https://lorempixel.com/640/480/cats/?56913', NULL, NULL),
(272, 71, 'https://lorempixel.com/640/480/cats/?83906', NULL, NULL),
(273, 71, 'https://lorempixel.com/640/480/cats/?67868', NULL, NULL),
(274, 72, 'https://lorempixel.com/640/480/cats/?22942', NULL, NULL),
(275, 72, 'https://lorempixel.com/640/480/cats/?72215', NULL, NULL),
(276, 72, 'https://lorempixel.com/640/480/cats/?17840', NULL, NULL),
(277, 73, 'https://lorempixel.com/640/480/cats/?49262', NULL, NULL),
(278, 73, 'https://lorempixel.com/640/480/cats/?83690', NULL, NULL),
(279, 73, 'https://lorempixel.com/640/480/cats/?80454', NULL, NULL),
(280, 73, 'https://lorempixel.com/640/480/cats/?93506', NULL, NULL),
(281, 74, 'https://lorempixel.com/640/480/cats/?60060', NULL, NULL),
(282, 74, 'https://lorempixel.com/640/480/cats/?76305', NULL, NULL),
(283, 74, 'https://lorempixel.com/640/480/cats/?26573', NULL, NULL),
(284, 74, 'https://lorempixel.com/640/480/cats/?41199', NULL, NULL),
(285, 74, 'https://lorempixel.com/640/480/cats/?92334', NULL, NULL),
(286, 75, 'https://lorempixel.com/640/480/cats/?50670', NULL, NULL),
(287, 75, 'https://lorempixel.com/640/480/cats/?64812', NULL, NULL),
(288, 75, 'https://lorempixel.com/640/480/cats/?78308', NULL, NULL),
(289, 76, 'https://lorempixel.com/640/480/cats/?62819', NULL, NULL),
(290, 76, 'https://lorempixel.com/640/480/cats/?83129', NULL, NULL),
(291, 76, 'https://lorempixel.com/640/480/cats/?32736', NULL, NULL),
(292, 76, 'https://lorempixel.com/640/480/cats/?55558', NULL, NULL),
(293, 77, 'https://lorempixel.com/640/480/cats/?70344', NULL, NULL),
(294, 77, 'https://lorempixel.com/640/480/cats/?89445', NULL, NULL),
(295, 77, 'https://lorempixel.com/640/480/cats/?77880', NULL, NULL),
(296, 77, 'https://lorempixel.com/640/480/cats/?28495', NULL, NULL),
(297, 78, 'https://lorempixel.com/640/480/cats/?49993', NULL, NULL),
(298, 78, 'https://lorempixel.com/640/480/cats/?88527', NULL, NULL),
(299, 78, 'https://lorempixel.com/640/480/cats/?26314', NULL, NULL),
(300, 79, 'https://lorempixel.com/640/480/cats/?32978', NULL, NULL),
(301, 79, 'https://lorempixel.com/640/480/cats/?28861', NULL, NULL),
(302, 79, 'https://lorempixel.com/640/480/cats/?22483', NULL, NULL),
(303, 79, 'https://lorempixel.com/640/480/cats/?22837', NULL, NULL),
(304, 80, 'https://lorempixel.com/640/480/cats/?36945', NULL, NULL),
(305, 80, 'https://lorempixel.com/640/480/cats/?78182', NULL, NULL),
(306, 80, 'https://lorempixel.com/640/480/cats/?35643', NULL, NULL),
(307, 80, 'https://lorempixel.com/640/480/cats/?56801', NULL, NULL),
(308, 81, 'https://lorempixel.com/640/480/cats/?35066', NULL, NULL),
(309, 81, 'https://lorempixel.com/640/480/cats/?56994', NULL, NULL),
(310, 81, 'https://lorempixel.com/640/480/cats/?72359', NULL, NULL),
(311, 81, 'https://lorempixel.com/640/480/cats/?75484', NULL, NULL),
(312, 81, 'https://lorempixel.com/640/480/cats/?36072', NULL, NULL),
(313, 82, 'https://lorempixel.com/640/480/cats/?69415', NULL, NULL),
(314, 82, 'https://lorempixel.com/640/480/cats/?32684', NULL, NULL),
(315, 82, 'https://lorempixel.com/640/480/cats/?83509', NULL, NULL),
(316, 82, 'https://lorempixel.com/640/480/cats/?68163', NULL, NULL),
(317, 83, 'https://lorempixel.com/640/480/cats/?34439', NULL, NULL),
(318, 83, 'https://lorempixel.com/640/480/cats/?12321', NULL, NULL),
(319, 83, 'https://lorempixel.com/640/480/cats/?99543', NULL, NULL),
(320, 84, 'https://lorempixel.com/640/480/cats/?83179', NULL, NULL),
(321, 84, 'https://lorempixel.com/640/480/cats/?37380', NULL, NULL),
(322, 84, 'https://lorempixel.com/640/480/cats/?84763', NULL, NULL),
(323, 85, 'https://lorempixel.com/640/480/cats/?61238', NULL, NULL),
(324, 85, 'https://lorempixel.com/640/480/cats/?63909', NULL, NULL),
(325, 85, 'https://lorempixel.com/640/480/cats/?77036', NULL, NULL),
(326, 85, 'https://lorempixel.com/640/480/cats/?33796', NULL, NULL),
(327, 85, 'https://lorempixel.com/640/480/cats/?58483', NULL, NULL),
(328, 86, 'https://lorempixel.com/640/480/cats/?10900', NULL, NULL),
(329, 86, 'https://lorempixel.com/640/480/cats/?98306', NULL, NULL),
(330, 86, 'https://lorempixel.com/640/480/cats/?52197', NULL, NULL),
(331, 86, 'https://lorempixel.com/640/480/cats/?95751', NULL, NULL),
(332, 87, 'https://lorempixel.com/640/480/cats/?41875', NULL, NULL),
(333, 87, 'https://lorempixel.com/640/480/cats/?41472', NULL, NULL),
(334, 87, 'https://lorempixel.com/640/480/cats/?84127', NULL, NULL),
(335, 87, 'https://lorempixel.com/640/480/cats/?34285', NULL, NULL),
(336, 88, 'https://lorempixel.com/640/480/cats/?39336', NULL, NULL),
(337, 88, 'https://lorempixel.com/640/480/cats/?64044', NULL, NULL),
(338, 88, 'https://lorempixel.com/640/480/cats/?22783', NULL, NULL),
(339, 89, 'https://lorempixel.com/640/480/cats/?29636', NULL, NULL),
(340, 89, 'https://lorempixel.com/640/480/cats/?43731', NULL, NULL),
(341, 89, 'https://lorempixel.com/640/480/cats/?19978', NULL, NULL),
(342, 89, 'https://lorempixel.com/640/480/cats/?88288', NULL, NULL),
(343, 89, 'https://lorempixel.com/640/480/cats/?83141', NULL, NULL),
(344, 90, 'https://lorempixel.com/640/480/cats/?73346', NULL, NULL),
(345, 90, 'https://lorempixel.com/640/480/cats/?96721', NULL, NULL),
(346, 90, 'https://lorempixel.com/640/480/cats/?76491', NULL, NULL),
(347, 90, 'https://lorempixel.com/640/480/cats/?41459', NULL, NULL),
(348, 90, 'https://lorempixel.com/640/480/cats/?21570', NULL, NULL),
(349, 91, 'https://lorempixel.com/640/480/cats/?28548', NULL, NULL),
(350, 91, 'https://lorempixel.com/640/480/cats/?67578', NULL, NULL),
(351, 91, 'https://lorempixel.com/640/480/cats/?28660', NULL, NULL),
(352, 91, 'https://lorempixel.com/640/480/cats/?63472', NULL, NULL),
(353, 92, 'https://lorempixel.com/640/480/cats/?30587', NULL, NULL),
(354, 92, 'https://lorempixel.com/640/480/cats/?79295', NULL, NULL),
(355, 92, 'https://lorempixel.com/640/480/cats/?75003', NULL, NULL),
(356, 92, 'https://lorempixel.com/640/480/cats/?84365', NULL, NULL),
(357, 93, 'https://lorempixel.com/640/480/cats/?69509', NULL, NULL),
(358, 93, 'https://lorempixel.com/640/480/cats/?83933', NULL, NULL),
(359, 93, 'https://lorempixel.com/640/480/cats/?19892', NULL, NULL),
(360, 93, 'https://lorempixel.com/640/480/cats/?41532', NULL, NULL),
(361, 94, 'https://lorempixel.com/640/480/cats/?67116', NULL, NULL),
(362, 94, 'https://lorempixel.com/640/480/cats/?36441', NULL, NULL),
(363, 94, 'https://lorempixel.com/640/480/cats/?16388', NULL, NULL),
(364, 94, 'https://lorempixel.com/640/480/cats/?30963', NULL, NULL),
(365, 95, 'https://lorempixel.com/640/480/cats/?85888', NULL, NULL),
(366, 95, 'https://lorempixel.com/640/480/cats/?22352', NULL, NULL),
(367, 95, 'https://lorempixel.com/640/480/cats/?42291', NULL, NULL),
(368, 95, 'https://lorempixel.com/640/480/cats/?91372', NULL, NULL),
(369, 96, 'https://lorempixel.com/640/480/cats/?59349', NULL, NULL),
(370, 96, 'https://lorempixel.com/640/480/cats/?83747', NULL, NULL),
(371, 96, 'https://lorempixel.com/640/480/cats/?32735', NULL, NULL),
(372, 97, 'https://lorempixel.com/640/480/cats/?87529', NULL, NULL),
(373, 97, 'https://lorempixel.com/640/480/cats/?42776', NULL, NULL),
(374, 97, 'https://lorempixel.com/640/480/cats/?24658', NULL, NULL),
(375, 97, 'https://lorempixel.com/640/480/cats/?36707', NULL, NULL),
(376, 97, 'https://lorempixel.com/640/480/cats/?74194', NULL, NULL),
(377, 98, 'https://lorempixel.com/640/480/cats/?77399', NULL, NULL),
(378, 98, 'https://lorempixel.com/640/480/cats/?61915', NULL, NULL),
(379, 98, 'https://lorempixel.com/640/480/cats/?50838', NULL, NULL),
(380, 98, 'https://lorempixel.com/640/480/cats/?23918', NULL, NULL),
(381, 98, 'https://lorempixel.com/640/480/cats/?25714', NULL, NULL),
(382, 99, 'https://lorempixel.com/640/480/cats/?92140', NULL, NULL),
(383, 99, 'https://lorempixel.com/640/480/cats/?82045', NULL, NULL),
(384, 99, 'https://lorempixel.com/640/480/cats/?35338', NULL, NULL),
(385, 99, 'https://lorempixel.com/640/480/cats/?10732', NULL, NULL),
(386, 99, 'https://lorempixel.com/640/480/cats/?28363', NULL, NULL),
(387, 100, 'https://lorempixel.com/640/480/cats/?70770', NULL, NULL),
(388, 100, 'https://lorempixel.com/640/480/cats/?38965', NULL, NULL),
(389, 100, 'https://lorempixel.com/640/480/cats/?15945', NULL, NULL),
(392, 104, 'images/galleries/pro_104/5c3ab409d5c66.png', '2019-01-12 20:44:09', '2019-01-12 20:44:09'),
(395, 104, 'images/galleries/pro_104/5c3adfaf21275.png', '2019-01-12 23:50:23', '2019-01-12 23:50:23'),
(397, 104, 'images/galleries/pro_104/5c3ae29f408fa.png', '2019-01-13 00:02:55', '2019-01-13 00:02:55'),
(398, 114, 'images/galleries/pro_114/5c4bcd5214459.jpeg', '2019-01-25 20:00:34', '2019-01-25 20:00:34'),
(399, 114, 'images/galleries/pro_114/5c4bcd5215c1a.jpeg', '2019-01-25 20:00:34', '2019-01-25 20:00:34'),
(400, 114, 'images/galleries/pro_114/5c4bcd521a3f9.jpeg', '2019-01-25 20:00:34', '2019-01-25 20:00:34'),
(401, 114, 'images/galleries/pro_114/5c4bcd521b1ee.jpeg', '2019-01-25 20:00:34', '2019-01-25 20:00:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', 'lawlaww7@gmail.com', NULL, 200, '$2y$10$i8qw5jwmSM6VJn6qv66BQunTBaG06tKxRr.NxlCMeEPCejxoKXM8C', 'itISWu9O0Y0DxIiYU7t9W4ARsgpkrqrJ2FTGtDEVPMZuW9ChLciMtohAHNXQ', NULL, NULL),
(2, 'chungcc', '', 'anhhtph10133@fpt.edu.vn', NULL, 1, '$2y$10$i8qw5jwmSM6VJn6qv66BQunTBaG06tKxRr.NxlCMeEPCejxoKXM8C', 'pASVtJ9LtlAX6f6uFgRL9AEgI3p7KkiqVv6eWJekpRKMlULsUkAgG93E1zuQ', NULL, NULL),
(3, 'member', '', 'member@gmail.com', NULL, 1, '$2y$10$uy21.IAUibmlW1l68bVqxOoNiIrqECbTkdXufUqihT8LMNoe3GIqa', NULL, NULL, NULL),
(6, 'thienth', 'public/images/5d8dc5aebcd06-8ad2f5971cd04cbe2bd5d3849aa7c005.jpeg', 'thienth32@gmail.com', NULL, 0, '$2y$10$Z62q0g2gtiMGLhvLC2uV8uA7sztqpLHSgdboWsIZqGtlk9tPTR4bO', NULL, NULL, NULL),
(7, 'Long le ve', 'public/images/5d8dc5cc34742-9e1eb9cc83a76c1e0f0cde98957aa56a.jpeg', 'Longdeptrai@gmail.com', NULL, 0, '$2y$10$NJIlRPCMXm6wq5u5Q/7Yq.PW30xLghUJu7wXaQleddiqiWlpbgnSm', NULL, NULL, NULL),
(8, '12312sdfsdf', 'public/images/5d8dc86d9b38e-79bee3bdfa512da82062c3f4de40c0a4.jpeg', 'werewr@sfsdf.sd', NULL, 0, '$2y$10$Pj.hYMounKr0XfbVfhRQAuC74XbNUqVhR5OBz0fJpPObyivdg2LX6', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`cate_name`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`invoice_id`,`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT cho bảng `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
