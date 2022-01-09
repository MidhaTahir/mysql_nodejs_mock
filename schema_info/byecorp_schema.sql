CREATE TABLE `company` (
  `company_id` int NOT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `customer_gender` varchar(45) DEFAULT NULL,
  `customer_dob` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `feedbackForm` (
  `feedbackForm_id` int NOT NULL,
  `question_id` int NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`feedbackForm_id`),
  KEY `fk_feedbackForm_1_idx` (`question_id`),
  KEY `fk_feedbackForm_2_idx` (`type_id`),
  CONSTRAINT `fk_feedbackForm_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`),
  CONSTRAINT `fk_feedbackForm_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `option` (
  `option_id` int NOT NULL,
  `option_A` varchar(45) DEFAULT NULL,
  `option_B` varchar(45) DEFAULT NULL,
  `option_C` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  CONSTRAINT `fk_option_1` FOREIGN KEY (`option_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pivotFeedbackForm` (
  `pivotFeedbackForm_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `feedbackForm_id` int NOT NULL,
  `feedback_time` datetime DEFAULT NULL,
  `isSubmitted` tinyint DEFAULT NULL,
  PRIMARY KEY (`pivotFeedbackForm_id`),
  KEY `fk_pivotFeedbackForm_1_idx` (`seller_id`),
  KEY `fk_pivotFeedbackForm_2_idx` (`customer_id`),
  KEY `fk_pivotFeedbackForm_3_idx` (`feedbackForm_id`),
  CONSTRAINT `fk_pivotFeedbackForm_1` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`seller_id`),
  CONSTRAINT `fk_pivotFeedbackForm_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_pivotFeedbackForm_3` FOREIGN KEY (`feedbackForm_id`) REFERENCES `feedbackForm` (`feedbackForm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `question` (
  `question_id` int NOT NULL,
  `question_description` varchar(45) DEFAULT NULL,
  `option_id` int NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `seller` (
  `seller_id` int NOT NULL,
  `seller_name` varchar(45) DEFAULT NULL,
  `seller_gender` varchar(45) DEFAULT NULL,
  `seller_dob` varchar(45) DEFAULT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`seller_id`),
  KEY `company_id_idx` (`company_id`),
  CONSTRAINT `company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `type` (
  `type_id` int NOT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  `type_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
