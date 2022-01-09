USE database_schema;
-- INSERT INTO company (company_id, company_name) values (1,'Upadhyay');
-- INSERT INTO company (company_id, company_name) values (2,'Mids');

-- INSERT INTO customer (customer_id, customer_name,customer_gender,customer_dob) values (1,'Bob','Male','23-4-2009');
-- INSERT INTO customer (customer_id, customer_name,customer_gender,customer_dob) values (2,'Alexa','Female','21-4-2009');

-- INSERT INTO seller (seller_id, seller_name,seller_gender,seller_dob,company_id) values (1,'John','Male','23-4-2009',1);
-- INSERT INTO seller (seller_id, seller_name,seller_gender,seller_dob,company_id) values (2,'Sara','Female','23-4-2009',2);

-- INSERT INTO type (type_id, type_name,type_description) values  (1,'mock','mock test');
-- INSERT INTO type (type_id, type_name,type_description) values (2,'final','final test');

-- INSERT INTO optionTable (option_id, option_A, option_B,option_C) values (1,'optA','optB','optC');
-- INSERT INTO optionTable (option_id, option_A, option_B,option_C) values (2,'optA','optB','optC');

-- INSERT INTO question (question_id, question_description, option_id) values (1,'this is important',1);
-- INSERT INTO question (question_id, question_description, option_id) values (2,'this is important',2);

-- INSERT INTO feedbackForm (feedbackForm_id, question_id, type_id) values (1,1,1);
-- INSERT INTO feedbackForm (feedbackForm_id, question_id, type_id) values (2,2,2);

-- INSERT INTO pivotFeedbackForm (pivotFeedbackForm_id, seller_id, customer_id, feedbackForm_id,isSubmitted) values (1,1,1,1,false);
-- INSERT INTO pivotFeedbackForm (pivotFeedbackForm_id, seller_id, customer_id, feedbackForm_id,isSubmitted) values (2,2,2,1,true);