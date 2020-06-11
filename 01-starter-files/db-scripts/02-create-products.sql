-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('BOOKS');

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID,DATE_CREATED)
VALUES ('BOOK-HAPPY-1000', 'The Art of Happiness', 'Dalai Lama
',
'https://positivepsychology.com/wp-content/uploads/The-Art-of-Happiness-by-the-Dalai-Lama-and-Howard-C.-Cutler-198x300.jpg'
,1,100,19.99,1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID, DATE_CREATED)
VALUES ('BOOK-HAPPY-1001', 'The Happiness Trap', 'Stop Struggling, Start Living by Russ Harris',
'https://positivepsychology.com/wp-content/uploads/The-Happiness-Trap-Stop-Struggling-Start-Living-200x300.jpg'
,1,100,29.99,1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID, DATE_CREATED)
VALUES ('BOOK-HAPPY-1002', 'Happiness Is an Inside Job', 'Practicing for a Joyful Life by Sylvia Boorstein',
'https://positivepsychology.com/wp-content/uploads/Happiness-Is-an-Inside-Job-Practicing-for-a-Joyful-Life-by-Sylvia-Boorstein-194x300.jpg'
,1,100,24.99,1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID, DATE_CREATED)
VALUES ('BOOK-HAPPY-1003', 'Happiness Beyond Thought', ' A Practical Guide to Awakening by Gary Weber',
'https://positivepsychology.com/wp-content/uploads/Happiness-Beyond-Thought-A-Practical-Guide-to-Awakening-196x300.jpg'
,1,100,29.99,1, NOW());

INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK,
UNIT_PRICE, CATEGORY_ID, DATE_CREATED)
VALUES ('BOOK-HAPPY-1004', ' Happiness for Dummies', 'Your hands-on guide to reducing stress, being happier, and living a more fulfilling life. It was written by W. Doyle Gentry',
'https://positivepsychology.com/wp-content/uploads/Happiness-for-Dummies-e1548339916452-245x300.jpg'
,1,100,24.99,1, NOW());
