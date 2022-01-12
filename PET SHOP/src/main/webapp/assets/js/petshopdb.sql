-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 29 déc. 2021 à 23:12
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `petshopdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `details` text NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `ventes` int(11) NOT NULL,
  `promotion` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `nom`, `prix`, `details`, `categorie`, `ventes`, `promotion`, `image`) VALUES
(1, 'Chappie Complete Chicken Dry Dog Food - 15kg', 19.95, 'Chappie dog food is one of the oldest brands of pet food on the market in UK. Veterinarians trust and recommend Chappie - it is an easily digestible and low in fat complete adult dog food with all the nutrients, vitamins and minerals to keep your pet healthy and bouncing around during their adult life.\r\n\r\nChappie Complete Dry Dog Food is a 100% complete and balanced dog food developed with vets. As well as containing no artificial colours, flavours, added sugar, eggs or dairy, Chappie dry dog food contains all of the essential nutrients that your dog requires to keep them in top condition every single day.', 'Foods', 0, 0, 'logo'),
(2, 'Chappie Complete Chicken Dry Dog Food - 15kg', 19.95, 'Chappie dog food is one of the oldest brands of pet food on the market in UK. Veterinarians trust and recommend Chappie - it is an easily digestible and low in fat complete adult dog food with all the nutrients, vitamins and minerals to keep your pet healthy and bouncing around during their adult life.\r\n\r\nChappie Complete Dry Dog Food is a 100% complete and balanced dog food developed with vets. As well as containing no artificial colours, flavours, added sugar, eggs or dairy, Chappie dry dog food contains all of the essential nutrients that your dog requires to keep them in top condition every single day.', 'Foods', 0, 0, 'logo'),
(3, 'Hill\'s Science Plan Perfect Weight Large Breed Adult Dry Dog Food - 12kg', 20, 'Hill\'s Science Plan Perfect Weight Large Breed Adult Dry Dog Food - 12kg Description & Review\r\nScience Plan™ Perfect Weight Canine Adult  - Precisely balanced nutrition to help dogs achieve a healthy weight for a longer, happier life. Also suitable for sterilised dogs. Adult dogs that are slightly overweight or with a tendency to gain weight, from 1 year old.\r\n\r\nReduces inflammation & improves energy metabolism. Helps avoid weight gain. Soluble & insoluble fibre to trigger satiety, control appetite, & maintain gastrointestinal health. Helps dogs burn fat while sparing lean muscle mass, resulting in more effective weight loss. Helps metabolise fat for energy production & to maintain lean body mass. High levels of antioxidants to support natural defences.\r\n\r\nwith Chicken: Wheat, maize gluten meal, maize, chicken (16%) and turkey meal, pea bran meal, cellulose, tomato pomace, digest, animal fat, flaxseed, dried beet pulp, coconut oil, minerals, L-lysine, dehydrated carrots, lipoic acid, L-carnitine, vitamins, taurine, trace elements and beta-carotene. With a natural antioxidant (mixed tocopherols). \r\n\r\nDry Matter: Protein 28.3%, Fat 12.6%, Carbohydrate (NFE) 40.2%, Fibre (crude) 13.2%, Moisture -, Calcium 0.87%, Phosphorus 0.67%, Sodium 0.3%, Potassium 0.83%, Magnesium 0.13%, Omega-3 fatty acids 0.84%, Omega-6 fatty acids 2.21%, L-Carnitine 339 mg/kg,L-lysine 1.67%, Vitamin A 7519 IU/kg, Vitamin D 757 IU/kg, Vitamin E 710 mg/kg, Vitamin C 98 mg/kg, Beta-carotene 1.6 mg/kg.\r\n\r\nBody Weight (kg): Dry Grams per day (g)\r\n1kg: 20-30g; 2kg: 35-50g; 3kg: 50-70g; 4kg: 65-85g; 5kg: 75-100g; 7.5kg: 100-140g; 10kg: 125-175g.', 'Foods', 0, 0, 'bullet1.gif');
(4, 'KONG Wobbler Dog Toy', 15.95, 'A pear-shaped snack toy for dogs, made from food-safe plastic and robust & long-lasting, great as a feeding ball or for use during training. It can be easily opened to fill with tasty treats or food', Toys', 0, 0, t1'),
(5, 'KONG CuteSeas Octopus', 8.45, 'Soft and cuddly KONG dog toy in an adorable octopus design. Made from colourful, high-quality corduroy, with an integrated squeaker and crinkle foil to stimulate play.', 'Toys', 0, 0, 't2'),
(6, 'Floppy Knots Fox', 11.49, 'This cheerful fox toy from KONG has two squeakers and varied textures for your dog to chew and throw around. The internal knotted rope gives the dog toy structure and satisfies chewing instincts.', 'Toys', 0, 0, 't3'),
(7, 'Almo Nature 6 x 70g', 6.69, 'Natural wet cat food with a minimum 60% meat and fish content. It is gluten-free and full of nutrients, containing no artificial additives & available in a range of delicious, mouth-watering flavours.', 'Foods', 0, 0, 'f1'),
(8, 'Royal Canin Maxi Puppy', 22.99, 'Royal Canin Maxi Puppy dog food for puppies and young dogs of large breeds (26 - 44 kg) aged up to 15 months, with ActiFlora for balanced gut flora, with high quality protein. ', 'Foods', 0, 0, 'f2'),
(9, 'DogMio Barkis Mixed Box', 9.99, 'These delicious soft dog treats are available as a mixed pack of tasty poultry and savoury beef in a handy box. Perfect as a reward during training or as a snack between meals. ', 'Foods', 0, 0, 'f3'),
(10, 'flexi Neon Dog Lead', 31.3, 'Modern and safe: a retractable lead in black casing with a yellow print pattern. The 5m lead is bright neon yellow. Stay visible when the light starts to fades. ', 'Accessories', 0, 0, 'a1'),
(11, 'Vario Rapid Ecco Sport Harness - Black', 6.2, 'A very robust HUNTER dog harness made from durable, elegant nylon. 4-way fully adjustable for a perfect fit.', 'Accessories', 0, 0, a2'),
(12, 'Biodegradable Dog Poop Bags with Handles', 2.99, 'Environmentally friendly dog poop bags made from maize starch, biodegradable and extra tear resistant, using a particularly thick and flexible material and useful handles.', 'Accessories', 0, 0, a3'),
-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `ID` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` bigint(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `adress` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`ID`, `username`, `password`, `email`, `tel`, `company`, `adress`) VALUES
(1, 'marouane', '13085a63a2b3e4beb7ab10ee395aefe4', 'mmouloue@out.fr', 6666, '', 'Oujda,hay');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
