CREATE TABLE IF NOT EXISTS `dbms_project`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(500) NOT NULL,
  `password` VARCHAR(500) NOT NULL,
  `gender` VARCHAR(100) NULL DEFAULT NULL,
  `dob` VARCHAR(100) NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `phone` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE);

CREATE TABLE IF NOT EXISTS `dbms_project`.`products` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `store_id` INT NULL DEFAULT NULL,
  `expiry_date` VARCHAR(10) NULL DEFAULT NULL,
  `price` INT NULL DEFAULT NULL,
  `supplier_id` INT NULL DEFAULT NULL,
  `category` VARCHAR(100) NULL DEFAULT 'TOY',
  PRIMARY KEY (`product_id`),
  INDEX `products_ibfk_1` (`supplier_id` ASC) VISIBLE,
  INDEX `store_ibfk_2_idx` (`store_id` ASC) VISIBLE,
  CONSTRAINT `products_ibfk_1`
    FOREIGN KEY (`supplier_id`)
    REFERENCES `dbms_project`.`supplier` (`supplier_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `store_ibfk_2`
    FOREIGN KEY (`store_id`)
    REFERENCES `dbms_project`.`store` (`store_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
    
    CREATE TABLE IF NOT EXISTS `dbms_project`.`employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(199) NOT NULL,
  `joining_date` VARCHAR(10) NULL DEFAULT NULL,
  `store_id` INT NULL DEFAULT NULL,
  `salary` INT NULL DEFAULT NULL,
  `phone` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email` (`email` ASC) VISIBLE,
  INDEX `employee_ibfk_1` (`store_id` ASC) VISIBLE,
  CONSTRAINT `employee_ibfk_1`
    FOREIGN KEY (`store_id`)
    REFERENCES `dbms_project`.`store` (`store_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

    CREATE TABLE IF NOT EXISTS `dbms_project`.`cart` (
  `cart_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(199) NULL DEFAULT NULL,
  `email` VARCHAR(200) NULL DEFAULT NULL,
  `product_id` INT NULL DEFAULT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `total_price` INT NULL DEFAULT NULL,
  `store_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  INDEX `product_id` (`product_id` ASC) VISIBLE,
  INDEX `store_id` (`store_id` ASC) VISIBLE,
  CONSTRAINT `cart_ibfk_1`
    FOREIGN KEY (`product_id`)
    REFERENCES `dbms_project`.`products` (`product_id`),
  CONSTRAINT `cart_ibfk_2`
    FOREIGN KEY (`store_id`)
    REFERENCES `dbms_project`.`store` (`store_id`));


CREATE TABLE IF NOT EXISTS `dbms_project`.`admin` (
  `admin_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `contact` VARCHAR(100) NULL DEFAULT NULL,
  `password` VARCHAR(100) NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`));
  
  
CREATE TABLE IF NOT EXISTS `dbms_project`.`complaint` (
  `complaint_id` INT NOT NULL AUTO_INCREMENT,
  `store_id` INT NULL DEFAULT NULL,
  `product_id` INT NULL DEFAULT NULL,
  `description` VARCHAR(199) NULL DEFAULT NULL,
  `complaint_date` VARCHAR(199) NULL DEFAULT NULL,
  `customer_email` VARCHAR(199) NULL DEFAULT NULL,
  PRIMARY KEY (`complaint_id`),
  INDEX `complaint_ibfk_2` (`product_id` ASC) VISIBLE,
  INDEX `complaint_ibfk_1` (`store_id` ASC) VISIBLE,
  CONSTRAINT `complaint_ibfk_1`
    FOREIGN KEY (`store_id`)
    REFERENCES `dbms_project`.`store` (`store_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `complaint_ibfk_2`
    FOREIGN KEY (`product_id`)
    REFERENCES `dbms_project`.`products` (`product_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS `dbms_project`.`store` (
  `store_id` INT NOT NULL AUTO_INCREMENT,
  `state` VARCHAR(100) NULL DEFAULT NULL,
  `city` VARCHAR(100) NULL DEFAULT NULL,
  `road_no` VARCHAR(50) NULL DEFAULT NULL,
  `store_license_no` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE INDEX `store_license_no_UNIQUE` (`store_license_no` ASC) VISIBLE);
  
  
CREATE TABLE IF NOT EXISTS `dbms_project`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `product_id` INT NULL DEFAULT NULL,
  `quantity` INT NULL DEFAULT NULL,
  `total_price` INT NULL DEFAULT NULL,
  `store_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `product_id` (`product_id` ASC) VISIBLE,
  INDEX `store_id` (`store_id` ASC) VISIBLE,
  CONSTRAINT `orders_ibfk_1`
    FOREIGN KEY (`product_id`)
    REFERENCES `dbms_project`.`products` (`product_id`),
  CONSTRAINT `orders_ibfk_2`
    FOREIGN KEY (`store_id`)
    REFERENCES `dbms_project`.`store` (`store_id`));
    
    
CREATE TABLE IF NOT EXISTS `dbms_project`.`supplier` (
  `supplier_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(100) NOT NULL,
  `dob` VARCHAR(100) NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `phone` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);
