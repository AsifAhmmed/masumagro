

CREATE TABLE IF NOT EXISTS `backup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO backup VALUES("1","2017-10-05-075534.sql","2017-10-05 07:55:34","");
INSERT INTO backup VALUES("2","2017-10-26-105434.sql","2017-10-26 10:54:34","");





CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO countries VALUES("1","United States","US");
INSERT INTO countries VALUES("2","Canada","CA");
INSERT INTO countries VALUES("3","Afghanistan","AF");
INSERT INTO countries VALUES("4","Albania","AL");
INSERT INTO countries VALUES("5","Algeria","DZ");
INSERT INTO countries VALUES("6","American Samoa","AS");
INSERT INTO countries VALUES("7","Andorra","AD");
INSERT INTO countries VALUES("8","Angola","AO");
INSERT INTO countries VALUES("9","Anguilla","AI");
INSERT INTO countries VALUES("10","Antarctica","AQ");
INSERT INTO countries VALUES("11","Antigua and/or Barbuda","AG");
INSERT INTO countries VALUES("12","Argentina","AR");
INSERT INTO countries VALUES("13","Armenia","AM");
INSERT INTO countries VALUES("14","Aruba","AW");
INSERT INTO countries VALUES("15","Australia","AU");
INSERT INTO countries VALUES("16","Austria","AT");
INSERT INTO countries VALUES("17","Azerbaijan","AZ");
INSERT INTO countries VALUES("18","Bahamas","BS");
INSERT INTO countries VALUES("19","Bahrain","BH");
INSERT INTO countries VALUES("20","Bangladesh","BD");
INSERT INTO countries VALUES("21","Barbados","BB");
INSERT INTO countries VALUES("22","Belarus","BY");
INSERT INTO countries VALUES("23","Belgium","BE");
INSERT INTO countries VALUES("24","Belize","BZ");
INSERT INTO countries VALUES("25","Benin","BJ");
INSERT INTO countries VALUES("26","Bermuda","BM");
INSERT INTO countries VALUES("27","Bhutan","BT");
INSERT INTO countries VALUES("28","Bolivia","BO");
INSERT INTO countries VALUES("29","Bosnia and Herzegovina","BA");
INSERT INTO countries VALUES("30","Botswana","BW");
INSERT INTO countries VALUES("31","Bouvet Island","BV");
INSERT INTO countries VALUES("32","Brazil","BR");
INSERT INTO countries VALUES("33","British lndian Ocean Territory","IO");
INSERT INTO countries VALUES("34","Brunei Darussalam","BN");
INSERT INTO countries VALUES("35","Bulgaria","BG");
INSERT INTO countries VALUES("36","Burkina Faso","BF");
INSERT INTO countries VALUES("37","Burundi","BI");
INSERT INTO countries VALUES("38","Cambodia","KH");
INSERT INTO countries VALUES("39","Cameroon","CM");
INSERT INTO countries VALUES("40","Cape Verde","CV");
INSERT INTO countries VALUES("41","Cayman Islands","KY");
INSERT INTO countries VALUES("42","Central African Republic","CF");
INSERT INTO countries VALUES("43","Chad","TD");
INSERT INTO countries VALUES("44","Chile","CL");
INSERT INTO countries VALUES("45","China","CN");
INSERT INTO countries VALUES("46","Christmas Island","CX");
INSERT INTO countries VALUES("47","Cocos (Keeling) Islands","CC");
INSERT INTO countries VALUES("48","Colombia","CO");
INSERT INTO countries VALUES("49","Comoros","KM");
INSERT INTO countries VALUES("50","Congo","CG");
INSERT INTO countries VALUES("51","Cook Islands","CK");
INSERT INTO countries VALUES("52","Costa Rica","CR");
INSERT INTO countries VALUES("53","Croatia (Hrvatska)","HR");
INSERT INTO countries VALUES("54","Cuba","CU");
INSERT INTO countries VALUES("55","Cyprus","CY");
INSERT INTO countries VALUES("56","Czech Republic","CZ");
INSERT INTO countries VALUES("57","Democratic Republic of Congo","CD");
INSERT INTO countries VALUES("58","Denmark","DK");
INSERT INTO countries VALUES("59","Djibouti","DJ");
INSERT INTO countries VALUES("60","Dominica","DM");
INSERT INTO countries VALUES("61","Dominican Republic","DO");
INSERT INTO countries VALUES("62","East Timor","TP");
INSERT INTO countries VALUES("63","Ecudaor","EC");
INSERT INTO countries VALUES("64","Egypt","EG");
INSERT INTO countries VALUES("65","El Salvador","SV");
INSERT INTO countries VALUES("66","Equatorial Guinea","GQ");
INSERT INTO countries VALUES("67","Eritrea","ER");
INSERT INTO countries VALUES("68","Estonia","EE");
INSERT INTO countries VALUES("69","Ethiopia","ET");
INSERT INTO countries VALUES("70","Falkland Islands (Malvinas)","FK");
INSERT INTO countries VALUES("71","Faroe Islands","FO");
INSERT INTO countries VALUES("72","Fiji","FJ");
INSERT INTO countries VALUES("73","Finland","FI");
INSERT INTO countries VALUES("74","France","FR");
INSERT INTO countries VALUES("75","France, Metropolitan","FX");
INSERT INTO countries VALUES("76","French Guiana","GF");
INSERT INTO countries VALUES("77","French Polynesia","PF");
INSERT INTO countries VALUES("78","French Southern Territories","TF");
INSERT INTO countries VALUES("79","Gabon","GA");
INSERT INTO countries VALUES("80","Gambia","GM");
INSERT INTO countries VALUES("81","Georgia","GE");
INSERT INTO countries VALUES("82","Germany","DE");
INSERT INTO countries VALUES("83","Ghana","GH");
INSERT INTO countries VALUES("84","Gibraltar","GI");
INSERT INTO countries VALUES("85","Greece","GR");
INSERT INTO countries VALUES("86","Greenland","GL");
INSERT INTO countries VALUES("87","Grenada","GD");
INSERT INTO countries VALUES("88","Guadeloupe","GP");
INSERT INTO countries VALUES("89","Guam","GU");
INSERT INTO countries VALUES("90","Guatemala","GT");
INSERT INTO countries VALUES("91","Guinea","GN");
INSERT INTO countries VALUES("92","Guinea-Bissau","GW");
INSERT INTO countries VALUES("93","Guyana","GY");
INSERT INTO countries VALUES("94","Haiti","HT");
INSERT INTO countries VALUES("95","Heard and Mc Donald Islands","HM");
INSERT INTO countries VALUES("96","Honduras","HN");
INSERT INTO countries VALUES("97","Hong Kong","HK");
INSERT INTO countries VALUES("98","Hungary","HU");
INSERT INTO countries VALUES("99","Iceland","IS");
INSERT INTO countries VALUES("100","India","IN");
INSERT INTO countries VALUES("101","Indonesia","ID");
INSERT INTO countries VALUES("102","Iran (Islamic Republic of)","IR");
INSERT INTO countries VALUES("103","Iraq","IQ");
INSERT INTO countries VALUES("104","Ireland","IE");
INSERT INTO countries VALUES("105","Israel","IL");
INSERT INTO countries VALUES("106","Italy","IT");
INSERT INTO countries VALUES("107","Ivory Coast","CI");
INSERT INTO countries VALUES("108","Jamaica","JM");
INSERT INTO countries VALUES("109","Japan","JP");
INSERT INTO countries VALUES("110","Jordan","JO");
INSERT INTO countries VALUES("111","Kazakhstan","KZ");
INSERT INTO countries VALUES("112","Kenya","KE");
INSERT INTO countries VALUES("113","Kiribati","KI");
INSERT INTO countries VALUES("114","Korea, Democratic People\'s Republic of","KP");
INSERT INTO countries VALUES("115","Korea, Republic of","KR");
INSERT INTO countries VALUES("116","Kuwait","KW");
INSERT INTO countries VALUES("117","Kyrgyzstan","KG");
INSERT INTO countries VALUES("118","Lao People\'s Democratic Republic","LA");
INSERT INTO countries VALUES("119","Latvia","LV");
INSERT INTO countries VALUES("120","Lebanon","LB");
INSERT INTO countries VALUES("121","Lesotho","LS");
INSERT INTO countries VALUES("122","Liberia","LR");
INSERT INTO countries VALUES("123","Libyan Arab Jamahiriya","LY");
INSERT INTO countries VALUES("124","Liechtenstein","LI");
INSERT INTO countries VALUES("125","Lithuania","LT");
INSERT INTO countries VALUES("126","Luxembourg","LU");
INSERT INTO countries VALUES("127","Macau","MO");
INSERT INTO countries VALUES("128","Macedonia","MK");
INSERT INTO countries VALUES("129","Madagascar","MG");
INSERT INTO countries VALUES("130","Malawi","MW");
INSERT INTO countries VALUES("131","Malaysia","MY");
INSERT INTO countries VALUES("132","Maldives","MV");
INSERT INTO countries VALUES("133","Mali","ML");
INSERT INTO countries VALUES("134","Malta","MT");
INSERT INTO countries VALUES("135","Marshall Islands","MH");
INSERT INTO countries VALUES("136","Martinique","MQ");
INSERT INTO countries VALUES("137","Mauritania","MR");
INSERT INTO countries VALUES("138","Mauritius","MU");
INSERT INTO countries VALUES("139","Mayotte","TY");
INSERT INTO countries VALUES("140","Mexico","MX");
INSERT INTO countries VALUES("141","Micronesia, Federated States of","FM");
INSERT INTO countries VALUES("142","Moldova, Republic of","MD");
INSERT INTO countries VALUES("143","Monaco","MC");
INSERT INTO countries VALUES("144","Mongolia","MN");
INSERT INTO countries VALUES("145","Montserrat","MS");
INSERT INTO countries VALUES("146","Morocco","MA");
INSERT INTO countries VALUES("147","Mozambique","MZ");
INSERT INTO countries VALUES("148","Myanmar","MM");
INSERT INTO countries VALUES("149","Namibia","NA");
INSERT INTO countries VALUES("150","Nauru","NR");
INSERT INTO countries VALUES("151","Nepal","NP");
INSERT INTO countries VALUES("152","Netherlands","NL");
INSERT INTO countries VALUES("153","Netherlands Antilles","AN");
INSERT INTO countries VALUES("154","New Caledonia","NC");
INSERT INTO countries VALUES("155","New Zealand","NZ");
INSERT INTO countries VALUES("156","Nicaragua","NI");
INSERT INTO countries VALUES("157","Niger","NE");
INSERT INTO countries VALUES("158","Nigeria","NG");
INSERT INTO countries VALUES("159","Niue","NU");
INSERT INTO countries VALUES("160","Norfork Island","NF");
INSERT INTO countries VALUES("161","Northern Mariana Islands","MP");
INSERT INTO countries VALUES("162","Norway","NO");
INSERT INTO countries VALUES("163","Oman","OM");
INSERT INTO countries VALUES("164","Pakistan","PK");
INSERT INTO countries VALUES("165","Palau","PW");
INSERT INTO countries VALUES("166","Panama","PA");
INSERT INTO countries VALUES("167","Papua New Guinea","PG");
INSERT INTO countries VALUES("168","Paraguay","PY");
INSERT INTO countries VALUES("169","Peru","PE");
INSERT INTO countries VALUES("170","Philippines","PH");
INSERT INTO countries VALUES("171","Pitcairn","PN");
INSERT INTO countries VALUES("172","Poland","PL");
INSERT INTO countries VALUES("173","Portugal","PT");
INSERT INTO countries VALUES("174","Puerto Rico","PR");
INSERT INTO countries VALUES("175","Qatar","QA");
INSERT INTO countries VALUES("176","Republic of South Sudan","SS");
INSERT INTO countries VALUES("177","Reunion","RE");
INSERT INTO countries VALUES("178","Romania","RO");
INSERT INTO countries VALUES("179","Russian Federation","RU");
INSERT INTO countries VALUES("180","Rwanda","RW");
INSERT INTO countries VALUES("181","Saint Kitts and Nevis","KN");
INSERT INTO countries VALUES("182","Saint Lucia","LC");
INSERT INTO countries VALUES("183","Saint Vincent and the Grenadines","VC");
INSERT INTO countries VALUES("184","Samoa","WS");
INSERT INTO countries VALUES("185","San Marino","SM");
INSERT INTO countries VALUES("186","Sao Tome and Principe","ST");
INSERT INTO countries VALUES("187","Saudi Arabia","SA");
INSERT INTO countries VALUES("188","Senegal","SN");
INSERT INTO countries VALUES("189","Serbia","RS");
INSERT INTO countries VALUES("190","Seychelles","SC");
INSERT INTO countries VALUES("191","Sierra Leone","SL");
INSERT INTO countries VALUES("192","Singapore","SG");
INSERT INTO countries VALUES("193","Slovakia","SK");
INSERT INTO countries VALUES("194","Slovenia","SI");
INSERT INTO countries VALUES("195","Solomon Islands","SB");
INSERT INTO countries VALUES("196","Somalia","SO");
INSERT INTO countries VALUES("197","South Africa","ZA");
INSERT INTO countries VALUES("198","South Georgia South Sandwich Islands","GS");
INSERT INTO countries VALUES("199","Spain","ES");
INSERT INTO countries VALUES("200","Sri Lanka","LK");
INSERT INTO countries VALUES("201","St. Helena","SH");
INSERT INTO countries VALUES("202","St. Pierre and Miquelon","PM");
INSERT INTO countries VALUES("203","Sudan","SD");
INSERT INTO countries VALUES("204","Suriname","SR");
INSERT INTO countries VALUES("205","Svalbarn and Jan Mayen Islands","SJ");
INSERT INTO countries VALUES("206","Swaziland","SZ");
INSERT INTO countries VALUES("207","Sweden","SE");
INSERT INTO countries VALUES("208","Switzerland","CH");
INSERT INTO countries VALUES("209","Syrian Arab Republic","SY");
INSERT INTO countries VALUES("210","Taiwan","TW");
INSERT INTO countries VALUES("211","Tajikistan","TJ");
INSERT INTO countries VALUES("212","Tanzania, United Republic of","TZ");
INSERT INTO countries VALUES("213","Thailand","TH");
INSERT INTO countries VALUES("214","Togo","TG");
INSERT INTO countries VALUES("215","Tokelau","TK");
INSERT INTO countries VALUES("216","Tonga","TO");
INSERT INTO countries VALUES("217","Trinidad and Tobago","TT");
INSERT INTO countries VALUES("218","Tunisia","TN");
INSERT INTO countries VALUES("219","Turkey","TR");
INSERT INTO countries VALUES("220","Turkmenistan","TM");
INSERT INTO countries VALUES("221","Turks and Caicos Islands","TC");
INSERT INTO countries VALUES("222","Tuvalu","TV");
INSERT INTO countries VALUES("223","Uganda","UG");
INSERT INTO countries VALUES("224","Ukraine","UA");
INSERT INTO countries VALUES("225","United Arab Emirates","AE");
INSERT INTO countries VALUES("226","United Kingdom","GB");
INSERT INTO countries VALUES("227","United States minor outlying islands","UM");
INSERT INTO countries VALUES("228","Uruguay","UY");
INSERT INTO countries VALUES("229","Uzbekistan","UZ");
INSERT INTO countries VALUES("230","Vanuatu","VU");
INSERT INTO countries VALUES("231","Vatican City State","VA");
INSERT INTO countries VALUES("232","Venezuela","VE");
INSERT INTO countries VALUES("233","Vietnam","VN");
INSERT INTO countries VALUES("234","Virgin Islands (British)","VG");
INSERT INTO countries VALUES("235","Virgin Islands (U.S.)","VI");
INSERT INTO countries VALUES("236","Wallis and Futuna Islands","WF");
INSERT INTO countries VALUES("237","Western Sahara","EH");
INSERT INTO countries VALUES("238","Yemen","YE");
INSERT INTO countries VALUES("239","Yugoslavia","YU");
INSERT INTO countries VALUES("240","Zaire","ZR");
INSERT INTO countries VALUES("241","Zambia","ZM");
INSERT INTO countries VALUES("242","Zimbabwe","ZW");





CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` char(3) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO currency VALUES("1","USD","$");
INSERT INTO currency VALUES("2","BDT","BDT");





CREATE TABLE IF NOT EXISTS `cust_branch` (
  `branch_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `debtor_no` int(11) NOT NULL,
  `br_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_country_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_country_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`branch_code`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO cust_branch VALUES("1","1","Mary Roe","","","MARY ROE","MEGASYSTEMS INC","TUCSON","Washington","AZ 85705","USA","MEGASYSTEMS INC","TUCSON","Washington","AZ 85705");
INSERT INTO cust_branch VALUES("2","2","John Smith","","","JOHN SMITH","300 BOYLSTON AVE E","SEATTLE","Washington","WA 98102","USA","300 BOYLSTON AVE E","SEATTLE","Washington","WA 98102");
INSERT INTO cust_branch VALUES("3","3","Kyla Olsen","","","Kyla Olsen","Ap #651-8679 Sodales Av","Tamuning","Tamuning","PA 10855","TZ","Ap #651-8679 Sodales Av","Tamuning","Tamuning","PA 10855");
INSERT INTO cust_branch VALUES("4","4","Cecilia Chapman","","","Cecilia Chapman","711-2880 Nulla St","Mankato","Mississippi","96522","US","711-2880 Nulla St","Mankato","Mississippi","96522");
INSERT INTO cust_branch VALUES("5","5","Iris Watson","","","Iris Watson","Fusce Rd","Frederick","Nebraska","20620","US","Fusce Rd","Frederick","Nebraska","20620");
INSERT INTO cust_branch VALUES("6","6","Ashraf","","","21/2,West Bengal","West Bengal","test","2111","US","21/2,West Bengal","West Bengal","test","2111","US");
INSERT INTO cust_branch VALUES("7","7","Reza","","025686","Dhaka","Dhaka","Dhaka","1212","CA","Dhaka","Dhaka","Dhaka","1212","CA");
INSERT INTO cust_branch VALUES("8","8","John Michel","","","2430","Washington","Washington","1234","US","2430","Washington","Washington","1234","US");





CREATE TABLE IF NOT EXISTS `debtors_master` (
  `debtor_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sales_type` int(11) NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`debtor_no`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO debtors_master VALUES("1","Mary Roe","maryroe@gmail.com","","","(257) 563-7401","0","","0","","");
INSERT INTO debtors_master VALUES("2","John Smith","customer@techvill.net","$2y$10$NFl9z/cbBkX8q41bIkZbm.32OT/Ogp2fYKIZXifzgm2M6n1oG5/0C","","(372) 587-2335","0","","0","","");
INSERT INTO debtors_master VALUES("3","Kyla Olsen","kyla.olsen@gmail.com","","","(654) 393-5734","0","","0","","");
INSERT INTO debtors_master VALUES("4","Cecilia Chapman","cecilia@gmail.com","","","(257) 563-7401","0","","0","","");
INSERT INTO debtors_master VALUES("5","Iris Watson","iris@yahoo.com","$2y$10$GwzEH2DV/98Fmt1s8bkk7.qWJsYZo9tW36c/cG/o9g/lGkrEp8fCC","","(372) 587-2335","0","","0","","");
INSERT INTO debtors_master VALUES("6","Ashraf","ashraf.techvill@gmail.com","$2y$10$OEdgRQUpROnX3QzmABaDBuxIy/l2rnHGUbGOOCUcF/raFnKPJR2d.","","01762723110","0","xhMGIr8XV3yWA95Hs7LJMrkgpQ7nuaogT0XjPAlIwzN81Z6YkphT2ma1KVua","0","2017-10-25 12:20:04","2017-10-26 11:00:45");
INSERT INTO debtors_master VALUES("7","Reza","reza.techvill@gmail.com","$2y$10$vYPcTe/adg8GioREMxQOPOnkG7u625dpvUdnWsDcyQ6HJWHTs0wWm","","123456","0","","0","2017-10-26 09:34:45","2017-10-26 09:35:39");
INSERT INTO debtors_master VALUES("8","John Michel","sample@gmail.com","","","0123456789","0","","0","","");





CREATE TABLE IF NOT EXISTS `email_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email_protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_encryption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO email_config VALUES("1","smtp","smtp","tls","smtp.gmail.com","587","stockpile.techvill@gmail.com","stockpile.techvill@gmail.com","xgldhlpedszmglvj","stockpile.techvill@gmail.com","stockpile.techvill@gmail.com","","");





CREATE TABLE IF NOT EXISTS `email_temp_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO email_temp_details VALUES("1","2","Your Order # {order_reference_no} from {company_name} has been shipped","Hi {customer_name},<br><br>Thank you for your order. Here’s a brief overview of your shipment:<br>Sales Order # {order_reference_no} was packed on {packed_date} and shipped on {delivery_date}.<br> <br><b>Shipping address   </b><br><br>{shipping_street}<br>{shipping_city}<br>{shipping_state}<br>{shipping_zip_code}<br>{shipping_country}<br><br><b>Item Summery</b><br>{item_information}<br> <br>If you have any questions, please feel free to reply to this email.<br><br>Regards<br>{company_name}<br><br><br>","en","1");
INSERT INTO email_temp_details VALUES("2","2","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("3","2","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("4","2","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("5","2","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("6","2","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("7","2","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("8","2","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("9","1","Payment information for Order#{order_reference_no} and Invoice#{invoice_reference_no}.","<p>Hi {customer_name},</p><p>Thank you for purchase our product and pay for this.</p><p>We just want to confirm a few details about payment information:</p><p><b>Customer Information</b></p><p>{billing_street}</p><p>{billing_city}</p><p>{billing_state}</p><p>{billing_zip_code}</p><p>{billing_country}<br></p><p><b>Payment Summary<br></b></p><p><b></b><i>Payment No : {payment_id}</i></p><p><i>Payment Date : {payment_date}&nbsp;</i></p><p><i>Payment Method : {payment_method} <br></i></p><p><i><b>Total Amount : {total_amount}</b></i></p><p><i>Order No : {order_reference_no}</i><br><i></i></p><p><i>Invoice No : {invoice_reference_no}</i><br></p><p><br></p><p>Regards,</p><p>{company_name}<br></p><br><br><br><br><br><br>","en","1");
INSERT INTO email_temp_details VALUES("10","1","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("11","1","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("12","1","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("13","1","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("14","1","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("15","1","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("16","1","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("17","3","Payment information for Order#{order_reference_no} and Invoice#{invoice_reference_no}.","<p>Hi {customer_name},</p><p>Thank you for purchase our product and pay for this.</p><p>We just want to confirm a few details about payment information:</p><p><b>Customer Information</b></p><p>{billing_street}</p><p>{billing_city}</p><p>{billing_state}</p><p>{billing_zip_code}<br></p><p>{billing_country}<br>&nbsp; &nbsp; &nbsp; &nbsp; <br></p><p><b>Payment Summary<br></b></p><p><b></b><i>Payment No : {payment_id}</i></p><p><i>Payment Date : {payment_date}&nbsp;</i></p><p><i>Payment Method : {payment_method} <br></i></p><p><i><b>Total Amount : {total_amount}</b><br>Order No : {order_reference_no}<br>&nbsp;</i><i>Invoice No : {invoice_reference_no}<br>&nbsp;</i>Regards,</p><p>{company_name} <br></p><br>","en","1");
INSERT INTO email_temp_details VALUES("18","3","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("19","3","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("20","3","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("21","3","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("22","3","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("23","3","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("24","3","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("25","4","Your Invoice # {invoice_reference_no} for sales Order #{order_reference_no} from {company_name} has been created.","<p>Hi {customer_name},</p><p>Thank you for your order. Here’s a brief overview of your invoice: Invoice #{invoice_reference_no} is for Sales Order #{order_reference_no}. The invoice total is {currency}{total_amount}, please pay before {due_date}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Order summary<br></b></p><p><b></b>{invoice_summery}<br></p><p>Regards,</p><p>{company_name}<br></p><br><br>","en","1");
INSERT INTO email_temp_details VALUES("26","4","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("27","4","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("28","4","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("29","4","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("30","4","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("31","4","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("32","4","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("33","5","Your Order# {order_reference_no} from {company_name} has been created.","<p>Hi {customer_name},</p><p>Thank you for your order. Here’s a brief overview of your Order #{order_reference_no} that was created on {order_date}. The order total is {currency}{total_amount}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Order summary<br></b></p><p><b></b>{order_summery}<br></p><p>Regards,</p><p>{company_name}</p><br><br>","en","1");
INSERT INTO email_temp_details VALUES("34","5","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("35","5","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("36","5","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("37","5","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("38","5","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("39","5","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("40","5","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("41","6","Your Order # {order_reference_no} from {company_name} has been packed","Hi {customer_name},<br><br>Thank you for your order. Here’s a brief overview of your shipment:<br>Sales Order # {order_reference_no} was packed on {packed_date}.<br> <br><b>Shipping address   </b><br><br>{shipping_street}<br>{shipping_city}<br>{shipping_state}<br>{shipping_zip_code}<br>{shipping_country}<br><br><b>Item Summery</b><br>{item_information}<br> <br>If you have any questions, please feel free to reply to this email.<br><br>Regards<br>{company_name}<br><br><br>","en","1");
INSERT INTO email_temp_details VALUES("42","6","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("43","6","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("44","6","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("45","6","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("46","6","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("47","6","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("48","6","Subject","Body","tu","8");





CREATE TABLE IF NOT EXISTS `invoice_payment_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `terms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `days_before_due` int(11) NOT NULL,
  `defaults` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO invoice_payment_terms VALUES("1","Cash on deleivery","0","1");
INSERT INTO invoice_payment_terms VALUES("2","Net15","15","0");
INSERT INTO invoice_payment_terms VALUES("3","Net30","30","0");





CREATE TABLE IF NOT EXISTS `item_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` smallint(6) NOT NULL,
  `item_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO item_code VALUES("1","APPLE","Iphone 7+","1","iphone.jpg","0","0","","");
INSERT INTO item_code VALUES("2","HP","HP Pro Book","1","hpprobook.jpg","0","0","","");
INSERT INTO item_code VALUES("3","LENEVO","LED TV","1","ledtv.jpg","0","0","","");
INSERT INTO item_code VALUES("4","LG","LG Refrigeretor","1","lgrefrigeretor.jpg","0","0","","");
INSERT INTO item_code VALUES("5","SAMSUNG","Samsung G7","1","samsung-galaxy7.jpg","0","0","","");
INSERT INTO item_code VALUES("6","SINGER","Singer Refrigerator","1","singer-refrideretor.jpg","0","0","","");
INSERT INTO item_code VALUES("7","SONY","Sony experia 5","1","sony-xperia5.jpg","0","0","","");
INSERT INTO item_code VALUES("8","WALTON","Walton Primo GH","1","walton-primo.jpg","0","0","","");
INSERT INTO item_code VALUES("9","100012","TEST ITEM","2","","0","0","2017-10-09 07:36:26","");
INSERT INTO item_code VALUES("10","01111","TEST 10","1","","0","0","2017-10-12 06:26:53","");
INSERT INTO item_code VALUES("11","DELL","Dell desktop computer","1","","0","0","","");
INSERT INTO item_code VALUES("12","DELL5","Dell desktop computer","2","","0","0","","");





CREATE TABLE IF NOT EXISTS `item_tax_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` double(8,2) NOT NULL,
  `exempt` tinyint(4) NOT NULL,
  `defaults` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO item_tax_types VALUES("1","Tax Exempt","0.00","1","0");
INSERT INTO item_tax_types VALUES("2","Sales Tax","15.00","0","1");
INSERT INTO item_tax_types VALUES("3","Purchases Tax","15.00","0","0");
INSERT INTO item_tax_types VALUES("4","Normal","5.00","0","0");





CREATE TABLE IF NOT EXISTS `item_unit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `abbr` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO item_unit VALUES("1","each","Each","0","2017-10-05 10:07:56","");





CREATE TABLE IF NOT EXISTS `location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loc_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO location VALUES("1","PL","Primary Location","Primary Location","","","","Primary Location","0","2017-10-05 10:07:56","");
INSERT INTO location VALUES("2","JA","Jackson Av","125 Hayes St, San Francisco, CA 94102, USA","","","","Jackson Av","0","2017-10-05 10:07:56","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO migrations VALUES("2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("2015_09_26_161159_entrust_setup_tables","1");
INSERT INTO migrations VALUES("2016_08_30_100832_create_users_table","1");
INSERT INTO migrations VALUES("2016_08_30_104506_create_stock_category_table","1");
INSERT INTO migrations VALUES("2016_08_30_105339_create_location_table","1");
INSERT INTO migrations VALUES("2016_08_30_110408_create_item_code_table","1");
INSERT INTO migrations VALUES("2016_08_30_114231_create_item_unit_table","1");
INSERT INTO migrations VALUES("2016_09_02_070031_create_stock_master_table","1");
INSERT INTO migrations VALUES("2016_09_20_123717_create_stock_move_table","1");
INSERT INTO migrations VALUES("2016_10_05_113244_create_debtor_master_table","1");
INSERT INTO migrations VALUES("2016_10_05_113333_create_sales_orders_table","1");
INSERT INTO migrations VALUES("2016_10_05_113356_create_sales_order_details_table","1");
INSERT INTO migrations VALUES("2016_10_18_060431_create_supplier_table","1");
INSERT INTO migrations VALUES("2016_10_18_063931_create_purch_order_table","1");
INSERT INTO migrations VALUES("2016_10_18_064211_create_purch_order_detail_table","1");
INSERT INTO migrations VALUES("2016_10_18_064211_create_receive_order_detail_table","1");
INSERT INTO migrations VALUES("2016_10_18_064211_create_receive_orders_table","1");
INSERT INTO migrations VALUES("2016_11_15_121343_create_preference_table","1");
INSERT INTO migrations VALUES("2016_12_01_130110_create_shipment_table","1");
INSERT INTO migrations VALUES("2016_12_01_130443_create_shipment_details_table","1");
INSERT INTO migrations VALUES("2016_12_03_051429_create_sale_price_table","1");
INSERT INTO migrations VALUES("2016_12_03_052017_create_sales_types_table","1");
INSERT INTO migrations VALUES("2016_12_03_061206_create_purchase_price_table","1");
INSERT INTO migrations VALUES("2016_12_03_062131_create_payment_term_table","1");
INSERT INTO migrations VALUES("2016_12_03_062247_create_payment_history_table","1");
INSERT INTO migrations VALUES("2016_12_03_062932_create_item_tax_type_table","1");
INSERT INTO migrations VALUES("2016_12_03_063827_create_invoice_payment_term_table","1");
INSERT INTO migrations VALUES("2016_12_03_064157_create_email_temp_details_table","1");
INSERT INTO migrations VALUES("2016_12_03_064747_create_email_config_table","1");
INSERT INTO migrations VALUES("2016_12_03_065532_create_cust_branch_table","1");
INSERT INTO migrations VALUES("2016_12_03_065915_create_currency_table","1");
INSERT INTO migrations VALUES("2016_12_03_070030_create_country_table","1");
INSERT INTO migrations VALUES("2016_12_03_070030_create_stock_transfer_table","1");
INSERT INTO migrations VALUES("2016_12_03_071018_create_backup_table","1");





CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `payment_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_type_id` smallint(6) NOT NULL,
  `order_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `amount` double DEFAULT '0',
  `person_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO payment_history VALUES("1","1","SO-0003","INV-0005","2017-10-05","27497.5","1","2","","","");
INSERT INTO payment_history VALUES("2","1","SO-0002","INV-0002","2017-10-05","5000","1","2","","","");
INSERT INTO payment_history VALUES("3","1","SO-0003","INV-0004","2017-10-05","1000","1","2","","","");
INSERT INTO payment_history VALUES("4","1","SO-0006","INV-0009","2017-10-05","184.38295","1","1","by all pay","","");
INSERT INTO payment_history VALUES("5","1","SO-0007","INV-0010","2017-10-05","80500","1","1","by all pay","","");
INSERT INTO payment_history VALUES("7","1","SO-0008","INV-0011","2017-10-12","1150","1","3","","","");
INSERT INTO payment_history VALUES("8","1","SO-0010","INV-0013","2017-10-25","200.25","1","6","","","");
INSERT INTO payment_history VALUES("9","1","SO-0010","INV-0013","2017-10-25","1","1","6","","","");
INSERT INTO payment_history VALUES("10","1","SO-0011","INV-0014","2017-10-26","92","1","7","by all pay","","");





CREATE TABLE IF NOT EXISTS `payment_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaults` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO payment_terms VALUES("1","Bank","1");
INSERT INTO payment_terms VALUES("2","Cash","0");





CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permission_role VALUES("1","1");
INSERT INTO permission_role VALUES("2","1");
INSERT INTO permission_role VALUES("3","1");
INSERT INTO permission_role VALUES("4","1");
INSERT INTO permission_role VALUES("5","1");
INSERT INTO permission_role VALUES("6","1");
INSERT INTO permission_role VALUES("7","1");
INSERT INTO permission_role VALUES("8","1");
INSERT INTO permission_role VALUES("9","1");
INSERT INTO permission_role VALUES("10","1");
INSERT INTO permission_role VALUES("11","1");
INSERT INTO permission_role VALUES("12","1");
INSERT INTO permission_role VALUES("13","1");
INSERT INTO permission_role VALUES("14","1");
INSERT INTO permission_role VALUES("15","1");
INSERT INTO permission_role VALUES("16","1");
INSERT INTO permission_role VALUES("17","1");
INSERT INTO permission_role VALUES("18","1");
INSERT INTO permission_role VALUES("19","1");
INSERT INTO permission_role VALUES("20","1");
INSERT INTO permission_role VALUES("21","1");
INSERT INTO permission_role VALUES("22","1");
INSERT INTO permission_role VALUES("23","1");
INSERT INTO permission_role VALUES("24","1");
INSERT INTO permission_role VALUES("25","1");
INSERT INTO permission_role VALUES("26","1");
INSERT INTO permission_role VALUES("27","1");
INSERT INTO permission_role VALUES("28","1");
INSERT INTO permission_role VALUES("29","1");
INSERT INTO permission_role VALUES("30","1");
INSERT INTO permission_role VALUES("31","1");
INSERT INTO permission_role VALUES("32","1");
INSERT INTO permission_role VALUES("33","1");
INSERT INTO permission_role VALUES("34","1");
INSERT INTO permission_role VALUES("35","1");
INSERT INTO permission_role VALUES("36","1");
INSERT INTO permission_role VALUES("37","1");
INSERT INTO permission_role VALUES("38","1");
INSERT INTO permission_role VALUES("39","1");
INSERT INTO permission_role VALUES("40","1");
INSERT INTO permission_role VALUES("41","1");
INSERT INTO permission_role VALUES("42","1");
INSERT INTO permission_role VALUES("43","1");
INSERT INTO permission_role VALUES("44","1");
INSERT INTO permission_role VALUES("45","1");
INSERT INTO permission_role VALUES("46","1");
INSERT INTO permission_role VALUES("47","1");
INSERT INTO permission_role VALUES("48","1");
INSERT INTO permission_role VALUES("49","1");
INSERT INTO permission_role VALUES("50","1");
INSERT INTO permission_role VALUES("51","1");
INSERT INTO permission_role VALUES("52","1");
INSERT INTO permission_role VALUES("53","1");
INSERT INTO permission_role VALUES("54","1");
INSERT INTO permission_role VALUES("55","1");
INSERT INTO permission_role VALUES("56","1");
INSERT INTO permission_role VALUES("57","1");
INSERT INTO permission_role VALUES("58","1");
INSERT INTO permission_role VALUES("59","1");
INSERT INTO permission_role VALUES("60","1");
INSERT INTO permission_role VALUES("61","1");
INSERT INTO permission_role VALUES("62","1");
INSERT INTO permission_role VALUES("63","1");
INSERT INTO permission_role VALUES("64","1");
INSERT INTO permission_role VALUES("65","1");
INSERT INTO permission_role VALUES("66","1");
INSERT INTO permission_role VALUES("67","1");
INSERT INTO permission_role VALUES("68","1");
INSERT INTO permission_role VALUES("69","1");
INSERT INTO permission_role VALUES("70","1");
INSERT INTO permission_role VALUES("71","1");
INSERT INTO permission_role VALUES("72","1");
INSERT INTO permission_role VALUES("73","1");
INSERT INTO permission_role VALUES("74","1");
INSERT INTO permission_role VALUES("75","1");
INSERT INTO permission_role VALUES("76","1");
INSERT INTO permission_role VALUES("77","1");
INSERT INTO permission_role VALUES("78","1");
INSERT INTO permission_role VALUES("79","1");
INSERT INTO permission_role VALUES("80","1");
INSERT INTO permission_role VALUES("81","1");
INSERT INTO permission_role VALUES("82","1");
INSERT INTO permission_role VALUES("83","1");
INSERT INTO permission_role VALUES("84","1");
INSERT INTO permission_role VALUES("85","1");
INSERT INTO permission_role VALUES("86","1");
INSERT INTO permission_role VALUES("87","1");
INSERT INTO permission_role VALUES("88","1");
INSERT INTO permission_role VALUES("89","1");
INSERT INTO permission_role VALUES("90","1");
INSERT INTO permission_role VALUES("91","1");
INSERT INTO permission_role VALUES("92","1");
INSERT INTO permission_role VALUES("93","1");
INSERT INTO permission_role VALUES("94","1");
INSERT INTO permission_role VALUES("95","1");
INSERT INTO permission_role VALUES("96","1");
INSERT INTO permission_role VALUES("97","1");
INSERT INTO permission_role VALUES("98","1");
INSERT INTO permission_role VALUES("99","1");
INSERT INTO permission_role VALUES("100","1");
INSERT INTO permission_role VALUES("101","1");
INSERT INTO permission_role VALUES("102","1");
INSERT INTO permission_role VALUES("103","1");
INSERT INTO permission_role VALUES("104","1");
INSERT INTO permission_role VALUES("105","1");
INSERT INTO permission_role VALUES("106","1");





CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permissions VALUES("1","manage_customer","Manage Customers","Manage Customers","","");
INSERT INTO permissions VALUES("2","add_customer","Add Customer","Add Customer","","");
INSERT INTO permissions VALUES("3","edit_customer","Edit Customer","Edit Customer","","");
INSERT INTO permissions VALUES("4","delete_customer","Delete Customer","Delete Customer","","");
INSERT INTO permissions VALUES("5","manage_item","Manage Items","Manage Items","","");
INSERT INTO permissions VALUES("6","add_item","Add Item","Add Item","","");
INSERT INTO permissions VALUES("7","edit_item","Edit Item","Edit Item","","");
INSERT INTO permissions VALUES("8","delete_item","Delete Item","Delete Item","","");
INSERT INTO permissions VALUES("9","manage_supplier","Manage Suppliers","Manage Suppliers","","");
INSERT INTO permissions VALUES("10","add_supplier","Add Supplier","Add Supplier","","");
INSERT INTO permissions VALUES("11","edit_supplier","Edit Supplier","Edit Supplier","","");
INSERT INTO permissions VALUES("12","delete_supplier","Delete Supplier","Delete Supplier","","");
INSERT INTO permissions VALUES("13","manage_sale","Manage Sales","Manage Sales","","");
INSERT INTO permissions VALUES("14","manage_order","Manage Orders","Manage Orders","","");
INSERT INTO permissions VALUES("15","add_order","Add Order","Add Order","","");
INSERT INTO permissions VALUES("16","edit_order","Edit Order","Edit Order","","");
INSERT INTO permissions VALUES("17","delete_order","Delete Order","Delete Order","","");
INSERT INTO permissions VALUES("18","manage_invoice","Manage Invoices","Manage Invoices","","");
INSERT INTO permissions VALUES("19","add_invoice","Add Invoice","Add Invoice","","");
INSERT INTO permissions VALUES("20","edit_invoice","Edit Invoice","Edit Invoice","","");
INSERT INTO permissions VALUES("21","delete_invoice","Delete Invoice","Delete Invoice","","");
INSERT INTO permissions VALUES("22","manage_payment","Manage Payment","Manage Payment","","");
INSERT INTO permissions VALUES("23","add_payment","Add Payment","Add Payment","","");
INSERT INTO permissions VALUES("24","edit_payment","Edit Payment","Edit Payment","","");
INSERT INTO permissions VALUES("25","delete_payment","Delete Payment","Delete Payment","","");
INSERT INTO permissions VALUES("26","manage_shipment","Manage Shipment","Manage Shipment","","");
INSERT INTO permissions VALUES("27","add_shipment","Add Shipment","Add Shipment","","");
INSERT INTO permissions VALUES("28","edit_shipment","Edit Shipment","Edit Shipment","","");
INSERT INTO permissions VALUES("29","delete_shipment","Delete Shipment","Delete Shipment","","");
INSERT INTO permissions VALUES("30","manage_purchase","Manage Purchase","Manage Purchase","","");
INSERT INTO permissions VALUES("31","add_purchase","Add Purchase","Add Purchase","","");
INSERT INTO permissions VALUES("32","edit_purchase","Edit Purchase","Edit Purchase","","");
INSERT INTO permissions VALUES("33","delete_purchase","Delete Purchase","Delete Purchase","","");
INSERT INTO permissions VALUES("34","manage_transfer","Manage Transfer","Manage Transfer","","");
INSERT INTO permissions VALUES("35","add_transfer","Add Transfer","Add Transfer","","");
INSERT INTO permissions VALUES("36","edit_transfer","Edit Transfer","Edit Transfer","","");
INSERT INTO permissions VALUES("37","delete_transfer","Delete Transfer","Delete Transfer","","");
INSERT INTO permissions VALUES("38","manage_report","Manage Reports","Manage Report","","");
INSERT INTO permissions VALUES("39","manage_stock_on_hand","Manage Inventory Stock On Hand","Manage Inventory Stock On Hand","","");
INSERT INTO permissions VALUES("40","manage_sale_report","Manage Sales Report","Manage Sales Report","","");
INSERT INTO permissions VALUES("41","manage_sale_history_report","Manage Sales History Report","Manage Sales History Report","","");
INSERT INTO permissions VALUES("42","manage_purchase_report","Manage Purchase Report","Manage Purchase Report","","");
INSERT INTO permissions VALUES("43","manage_team_report","Manage Team Member Report","Manage Team Member Report","","");
INSERT INTO permissions VALUES("44","manage_setting","Manage Settings","Manage Settings","","");
INSERT INTO permissions VALUES("45","manage_company_setting","Manage Company Setting","Manage Company Setting","","");
INSERT INTO permissions VALUES("46","manage_team_member","Manage Team Member","Manage Team Member","","");
INSERT INTO permissions VALUES("47","add_team_member","Add Team Member","Add Team Member","","");
INSERT INTO permissions VALUES("48","edit_team_member","Edit Team Member","Edit Team Member","","");
INSERT INTO permissions VALUES("49","delete_team_member","Delete Team Member","Delete Team Member","","");
INSERT INTO permissions VALUES("50","manage_role","Manage Roles","Manage Roles","","");
INSERT INTO permissions VALUES("51","add_role","Add Role","Add Role","","");
INSERT INTO permissions VALUES("52","edit_role","Edit Role","Edit Role","","");
INSERT INTO permissions VALUES("53","delete_role","Delete Role","Delete Role","","");
INSERT INTO permissions VALUES("54","manage_location","Manage Location","Manage Location","","");
INSERT INTO permissions VALUES("55","add_location","Add Location","Add Location","","");
INSERT INTO permissions VALUES("56","edit_location","Edit Location","Edit Location","","");
INSERT INTO permissions VALUES("57","delete_location","Delete Location","Delete Location","","");
INSERT INTO permissions VALUES("58","manage_general_setting","Manage General Settings","Manage General Settings","","");
INSERT INTO permissions VALUES("59","manage_item_category","Manage Item Category","Manage Item Category","","");
INSERT INTO permissions VALUES("60","add_item_category","Add Item Category","Add Item Category","","");
INSERT INTO permissions VALUES("61","edit_item_category","Edit Item Category","Edit Item Category","","");
INSERT INTO permissions VALUES("62","delete_item_category","Delete Item Category","Delete Item Category","","");
INSERT INTO permissions VALUES("63","manage_income_expense_category","Manage Income Expense Category","Manage Income Expense Category","","");
INSERT INTO permissions VALUES("64","add_income_expense_category","Add Income Expense Category","Add Income Expense Category","","");
INSERT INTO permissions VALUES("65","edit_income_expense_category","Edit Income Expense Category","Edit Income Expense Category","","");
INSERT INTO permissions VALUES("66","delete_income_expense_category","Delete Income Expense Category","Delete Income Expense Category","","");
INSERT INTO permissions VALUES("67","manage_unit","Manage Unit","Manage Unit","","");
INSERT INTO permissions VALUES("68","add_unit","Add Unit","Add Unit","","");
INSERT INTO permissions VALUES("69","edit_unit","Edit Unit","Edit Unit","","");
INSERT INTO permissions VALUES("70","delete_unit","Delete Unit","Delete Unit","","");
INSERT INTO permissions VALUES("71","manage_db_backup","Manage Database Backup","Manage Database Backup","","");
INSERT INTO permissions VALUES("72","add_db_backup","Add Database Backup","Add Database Backup","","");
INSERT INTO permissions VALUES("73","download_db_backup","Download Database Backup","Download Database Backup","","");
INSERT INTO permissions VALUES("74","delete_db_backup","Delete Database Backup","Delete Database Backup","","");
INSERT INTO permissions VALUES("75","manage_email_setup","Manage Email Setup","Manage Email Setup","","");
INSERT INTO permissions VALUES("76","manage_finance","Manage Finance","Manage Finance","","");
INSERT INTO permissions VALUES("77","manage_tax","Manage Taxs","Manage Taxs","","");
INSERT INTO permissions VALUES("78","add_tax","Add Tax","Add Tax","","");
INSERT INTO permissions VALUES("79","edit_tax","Edit Tax","Edit Tax","","");
INSERT INTO permissions VALUES("80","delete_tax","Delete Tax","Delete Tax","","");
INSERT INTO permissions VALUES("81","manage_sales_type","Manage Sales Type","Manage Sales Type","","");
INSERT INTO permissions VALUES("82","add_sales_type","Add Sales Type","Add Sales Type","","");
INSERT INTO permissions VALUES("83","edit_sales_type","Edit Sales Type","Edit Sales Type","","");
INSERT INTO permissions VALUES("84","delete_sales_type","Delete Sales Type","Delete Sales Type","","");
INSERT INTO permissions VALUES("85","manage_currency","Manage Currency","Manage Currency","","");
INSERT INTO permissions VALUES("86","add_currency","Add Currency","Add Currency","","");
INSERT INTO permissions VALUES("87","edit_currency","Edit Currency","Edit Currency","","");
INSERT INTO permissions VALUES("88","delete_currency","Delete Currency","Delete Currency","","");
INSERT INTO permissions VALUES("89","manage_payment_term","Manage Payment Term","Manage Payment Term","","");
INSERT INTO permissions VALUES("90","add_payment_term","Add Payment Term","Add Payment Term","","");
INSERT INTO permissions VALUES("91","edit_payment_term","Edit Payment Term","Edit Payment Term","","");
INSERT INTO permissions VALUES("92","delete_payment_term","Delete Payment Term","Delete Payment Term","","");
INSERT INTO permissions VALUES("93","manage_payment_method","Manage Payment Method","Manage Payment Method","","");
INSERT INTO permissions VALUES("94","add_payment_method","Add Payment Method","Add Payment Method","","");
INSERT INTO permissions VALUES("95","edit_payment_method","Edit Payment Method","Edit Payment Method","","");
INSERT INTO permissions VALUES("96","delete_payment_method","Delete Payment Method","Delete Payment Method","","");
INSERT INTO permissions VALUES("97","manage_payment_gateway","Manage Payment Method","Manage Payment Gateway","","");
INSERT INTO permissions VALUES("98","manage_email_template","Manage Email Template","Manage Email Template","","");
INSERT INTO permissions VALUES("99","manage_order_email_template","Manage Order Template","Manage Order Email Template","","");
INSERT INTO permissions VALUES("100","manage_invoice_email_template","Manage Invoice Email Template","Manage Invoice Email Template","","");
INSERT INTO permissions VALUES("101","manage_purchase_order_email_template","Manage Purchase Order Email Template","Manage Purchase Order Email Template","","");
INSERT INTO permissions VALUES("102","manage_payment_email_template","Manage Payment Email Template","Manage Payment Email Template","","");
INSERT INTO permissions VALUES("103","manage_packing_email_template","Manage Packing Email Template","Manage Packing Email Template","","");
INSERT INTO permissions VALUES("104","manage_shipment_email_template","Manage Shipment Email Template","Manage Shipment Email Template","","");
INSERT INTO permissions VALUES("105","manage_preference","Manage Preference","Manage Preference","","");
INSERT INTO permissions VALUES("106","manage_barcode","Manage barcode/label","Manage barcode/label","","");





CREATE TABLE IF NOT EXISTS `preference` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO preference VALUES("1","preference","row_per_page","25");
INSERT INTO preference VALUES("2","preference","date_format","1");
INSERT INTO preference VALUES("3","preference","date_sepa","-");
INSERT INTO preference VALUES("4","preference","soft_name","Stockpile");
INSERT INTO preference VALUES("5","company","site_short_name","SP");
INSERT INTO preference VALUES("6","preference","percentage","0");
INSERT INTO preference VALUES("7","preference","quantity","0");
INSERT INTO preference VALUES("8","preference","date_format_type","dd-mm-yyyy");
INSERT INTO preference VALUES("9","company","company_name","Stockpile");
INSERT INTO preference VALUES("10","company","company_email","admin@techvill.net");
INSERT INTO preference VALUES("11","company","company_phone","123465798");
INSERT INTO preference VALUES("12","company","company_street","City Hall Park Path ");
INSERT INTO preference VALUES("13","company","company_city","New York");
INSERT INTO preference VALUES("14","company","company_state","New York");
INSERT INTO preference VALUES("15","company","company_zipCode","10007");
INSERT INTO preference VALUES("16","company","company_country_id","United States");
INSERT INTO preference VALUES("17","company","dflt_lang","en");
INSERT INTO preference VALUES("18","company","dflt_currency_id","1");
INSERT INTO preference VALUES("19","company","sates_type_id","1");
INSERT INTO preference VALUES("27","company","logo","logo.jpg");





CREATE TABLE IF NOT EXISTS `purch_order_details` (
  `po_detail_item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL,
  `item_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `qty_invoiced` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `act_price` double NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL,
  `std_cost_unit` double NOT NULL DEFAULT '0',
  `quantity_ordered` double NOT NULL DEFAULT '0',
  `quantity_received` double NOT NULL DEFAULT '0',
  `qty_received` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`po_detail_item`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO purch_order_details VALUES("1","10","APPLE","Iphone 7+","1000","100","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("2","10","HP","HP Pro Book","1000","80","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("3","11","SAMSUNG","SAMSUNG","1000","50","0","2","0","1000","1000","1000","","");
INSERT INTO purch_order_details VALUES("4","11","SONY","SONY","1000","50","0","2","0","1000","1000","1000","","");
INSERT INTO purch_order_details VALUES("5","11","SINGER","SINGER","1000","50","0","2","0","1000","1000","1000","","");
INSERT INTO purch_order_details VALUES("6","11","LG","LG","1000","50","0","2","0","1000","1000","1000","","");
INSERT INTO purch_order_details VALUES("7","11","LENEVO","LENEVO","1000","5","0","2","0","1000","1000","1000","","");
INSERT INTO purch_order_details VALUES("8","12","APPLE","Iphone 7+","1000","100","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("9","12","WALTON","Walton Primo GH","1000","50","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("10","13","SONY","Sony experia 5","1000","50","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("11","13","SINGER","Singer Refrigerator","1000","50","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("12","13","SAMSUNG","Samsung G7","1000","50","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("13","13","WALTON","Walton Primo GH","1000","50","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("14","14","SINGER","Singer Refrigerator","1000","50","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("15","14","LG","LG Refrigeretor","1000","50","0","2","0","1000","1000","0","","");
INSERT INTO purch_order_details VALUES("16","15","WALTON","Walton Primo GH","1000","50","0","2","0","1000","1000","1000","","");
INSERT INTO purch_order_details VALUES("17","16","WALTON","Walton Primo GH","3000","50","0","2","0","3000","3000","3000","","");
INSERT INTO purch_order_details VALUES("18","16","APPLE","Iphone 7+","3000","100","0","2","0","3000","3000","3000","","");
INSERT INTO purch_order_details VALUES("19","17","APPLE","APPLE","50","100","0","2","0","50","50","500","","");
INSERT INTO purch_order_details VALUES("21","19","WALTON","Walton Primo GH","1","100","0","2","0","1","1","0","","");





CREATE TABLE IF NOT EXISTS `purch_orders` (
  `order_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ord_date` date NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `requisition_no` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `into_stock_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `tax_included` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO purch_orders VALUES("10","2","1","","2017-08-19","PO-0001","","PL","","207000","yes","","");
INSERT INTO purch_orders VALUES("11","5","1","","2017-10-03","PO-0002","","JA","","235750","yes","","2017-10-05 11:10:05");
INSERT INTO purch_orders VALUES("12","4","1","","2017-09-26","PO-0003","","JA","","172500","yes","","");
INSERT INTO purch_orders VALUES("13","4","1","","2016-08-17","PO-0004","","JA","","230000","yes","","");
INSERT INTO purch_orders VALUES("14","3","1","","2017-10-03","PO-0005","","JA","","115000","yes","","");
INSERT INTO purch_orders VALUES("15","5","1","","2017-10-03","PO-0006","","JA","","57500","yes","","");
INSERT INTO purch_orders VALUES("16","1","1","","2017-10-03","PO-0007","","PL","","517500","yes","","");
INSERT INTO purch_orders VALUES("17","5","1","","2017-10-05","PO-0008","","JA","","5750","yes","","2017-10-05 11:10:25");
INSERT INTO purch_orders VALUES("19","2","1","","2017-10-26","PO-0010","","JA","","115","yes","2017-10-26 09:45:25","");





CREATE TABLE IF NOT EXISTS `purchase_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `conversion_factor` double DEFAULT '1',
  `supplier_description` char(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO purchase_prices VALUES("1","APPLE","100","","1","");
INSERT INTO purchase_prices VALUES("2","HP","80","","1","");
INSERT INTO purchase_prices VALUES("3","LENEVO","50","","1","");
INSERT INTO purchase_prices VALUES("4","LG","50","","1","");
INSERT INTO purchase_prices VALUES("5","SAMSUNG","50","","1","");
INSERT INTO purchase_prices VALUES("6","SINGER","50","","1","");
INSERT INTO purchase_prices VALUES("7","SONY","50","","1","");
INSERT INTO purchase_prices VALUES("8","WALTON","50","","1","");
INSERT INTO purchase_prices VALUES("9","100012","80","","1","");
INSERT INTO purchase_prices VALUES("10","01111","0","","1","");
INSERT INTO purchase_prices VALUES("11","DELL","50","","1","");
INSERT INTO purchase_prices VALUES("12","DELL5","50","","1","");





CREATE TABLE IF NOT EXISTS `receive_order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `item_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` int(11) NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO receive_order_details VALUES("1","1","1","APPLE","Iphone 7+","2","100","50");
INSERT INTO receive_order_details VALUES("2","1","1","SAMSUNG","Samsung G7","2","50","50");
INSERT INTO receive_order_details VALUES("3","1","2","APPLE","Iphone 7+","2","100","30");
INSERT INTO receive_order_details VALUES("4","1","2","SAMSUNG","Samsung G7","2","50","30");
INSERT INTO receive_order_details VALUES("5","1","3","SAMSUNG","Samsung G7","2","50","20");
INSERT INTO receive_order_details VALUES("6","1","3","APPLE","Iphone 7+","2","100","20");
INSERT INTO receive_order_details VALUES("7","17","4","APPLE","Iphone 7+","2","100","500");
INSERT INTO receive_order_details VALUES("8","11","5","SAMSUNG","Samsung G7","2","50","1000");
INSERT INTO receive_order_details VALUES("9","11","5","SONY","Sony experia 5","2","50","1000");
INSERT INTO receive_order_details VALUES("10","11","5","SINGER","Singer Refrigerator","2","50","1000");
INSERT INTO receive_order_details VALUES("11","11","5","LG","LG Refrigeretor","2","50","1000");
INSERT INTO receive_order_details VALUES("12","11","5","LENEVO","LED TV","2","50","1000");
INSERT INTO receive_order_details VALUES("13","15","6","WALTON","Walton Primo GH","2","50","1000");
INSERT INTO receive_order_details VALUES("14","16","7","WALTON","Walton Primo GH","2","50","3000");
INSERT INTO receive_order_details VALUES("15","16","7","APPLE","Iphone 7+","2","100","3000");





CREATE TABLE IF NOT EXISTS `receive_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receive_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO receive_orders VALUES("1","1","1","1","PO-0001","PL","2017-07-26","","");
INSERT INTO receive_orders VALUES("2","1","1","1","PO-0001","PL","2017-07-26","","");
INSERT INTO receive_orders VALUES("3","1","1","1","PO-0001","PL","2017-07-26","","");
INSERT INTO receive_orders VALUES("4","17","1","5","PO-0008","JA","2017-10-05","","");
INSERT INTO receive_orders VALUES("5","11","1","3","PO-0002","PL","2017-10-05","","");
INSERT INTO receive_orders VALUES("6","15","1","5","PO-0006","JA","2017-10-05","","");
INSERT INTO receive_orders VALUES("7","16","1","1","PO-0007","PL","2017-10-08","","");





CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO role_user VALUES("1","1");
INSERT INTO role_user VALUES("2","1");





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO roles VALUES("1","admin","Admin","Admin User","","");





CREATE TABLE IF NOT EXISTS `sale_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sales_type_id` int(11) NOT NULL,
  `curr_abrev` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO sale_prices VALUES("1","APPLE","1","USD","160");
INSERT INTO sale_prices VALUES("2","HP","1","USD","120");
INSERT INTO sale_prices VALUES("3","LENEVO","1","USD","70");
INSERT INTO sale_prices VALUES("4","LG","1","USD","80");
INSERT INTO sale_prices VALUES("5","SAMSUNG","1","USD","90");
INSERT INTO sale_prices VALUES("6","SINGER","1","USD","80");
INSERT INTO sale_prices VALUES("7","SONY","1","USD","90");
INSERT INTO sale_prices VALUES("8","WALTON","1","USD","85");
INSERT INTO sale_prices VALUES("9","APPLE","2","USD","150");
INSERT INTO sale_prices VALUES("10","HP","2","USD","100");
INSERT INTO sale_prices VALUES("11","LENEVO","2","USD","65");
INSERT INTO sale_prices VALUES("12","LG","2","USD","75");
INSERT INTO sale_prices VALUES("13","SAMSUNG","2","USD","80");
INSERT INTO sale_prices VALUES("14","SINGER","2","USD","65");
INSERT INTO sale_prices VALUES("15","SONY","2","USD","85");
INSERT INTO sale_prices VALUES("16","WALTON","2","USD","70");
INSERT INTO sale_prices VALUES("17","100012","1","USD","150");
INSERT INTO sale_prices VALUES("18","100012","2","USD","120");
INSERT INTO sale_prices VALUES("19","01111","1","USD","50");
INSERT INTO sale_prices VALUES("20","01111","2","USD","0");
INSERT INTO sale_prices VALUES("21","DELL","1","USD","60");
INSERT INTO sale_prices VALUES("22","DELL","2","USD","55");
INSERT INTO sale_prices VALUES("23","DELL5","1","USD","60");
INSERT INTO sale_prices VALUES("24","DELL5","2","USD","55");





CREATE TABLE IF NOT EXISTS `sales_order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` tinyint(4) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` double NOT NULL DEFAULT '0',
  `qty_sent` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `shipment_qty` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO sales_order_details VALUES("1","1","201","APPLE","2","Iphone 7+","160","0","10","0","0","","");
INSERT INTO sales_order_details VALUES("2","2","202","APPLE","2","Iphone 7+","160","10","10","0","0","","");
INSERT INTO sales_order_details VALUES("3","3","201","SAMSUNG","1","Samsung G7","90","0","100","0","0","","");
INSERT INTO sales_order_details VALUES("4","4","202","SAMSUNG","1","Samsung G7","90","100","100","0","0","","");
INSERT INTO sales_order_details VALUES("5","5","201","APPLE","2","Iphone 7+","160","1000","1000","20","0","","");
INSERT INTO sales_order_details VALUES("6","5","201","WALTON","4","Walton Primo GH","85","1000","1000","20","0","","");
INSERT INTO sales_order_details VALUES("7","6","202","APPLE","2","Iphone 7+","160","20","20","0","0","","");
INSERT INTO sales_order_details VALUES("8","6","202","WALTON","4","Walton Primo GH","85","20","20","0","0","","");
INSERT INTO sales_order_details VALUES("9","7","202","APPLE","2","Iphone 7+","160","50","50","0","0","","");
INSERT INTO sales_order_details VALUES("10","7","202","WALTON","4","Walton Primo GH","85","50","50","0","0","","");
INSERT INTO sales_order_details VALUES("11","8","202","APPLE","2","Iphone 7+","160","5","5","0","0","","");
INSERT INTO sales_order_details VALUES("12","8","202","WALTON","4","Walton Primo GH","85","5","5","0","0","","");
INSERT INTO sales_order_details VALUES("13","9","202","APPLE","2","Iphone 7+","160","5","5","0","0","","");
INSERT INTO sales_order_details VALUES("14","10","201","APPLE","2","Iphone 7+","160.333","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("15","11","202","APPLE","2","Iphone 7+","160.333","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("16","12","201","SAMSUNG","2","Samsung G7","30.4","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("17","13","202","SAMSUNG","2","Samsung G7","30.4","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("18","14","201","APPLE","2","Iphone 7+","160.333","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("19","15","202","APPLE","2","Iphone 7+","160.333","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("20","16","201","APPLE","2","Iphone 7+","7000","10","10","10","0","","");
INSERT INTO sales_order_details VALUES("21","17","202","APPLE","2","Iphone 7+","7000","10","10","0","0","","");
INSERT INTO sales_order_details VALUES("31","23","202","100012","2","Test Item","150","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("32","24","201","SAMSUNG","2","Samsung G7","90","1","1","1","0","","");
INSERT INTO sales_order_details VALUES("30","22","201","100012","2","Test Item","150","1","1","1","0","","");
INSERT INTO sales_order_details VALUES("28","20","201","SAMSUNG","2","Samsung G7","100","0","10","0","0","","");
INSERT INTO sales_order_details VALUES("29","21","202","SAMSUNG","2","Samsung G7","100","10","10","0","0","","");
INSERT INTO sales_order_details VALUES("33","25","202","SAMSUNG","2","Samsung G7","90","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("34","24","201","WALTON","2","Walton Primo GH","122.478","11","11","1","0","","");
INSERT INTO sales_order_details VALUES("35","25","202","WALTON","2","Walton Primo GH","85","1","1","0","0","","");
INSERT INTO sales_order_details VALUES("36","26","201","LG","2","LG Refrigeretor","80","1","1","1","0","","");
INSERT INTO sales_order_details VALUES("37","27","202","LG","2","LG Refrigeretor","80","1","1","0","0","","");





CREATE TABLE IF NOT EXISTS `sales_orders` (
  `order_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trans_type` int(11) NOT NULL,
  `debtor_no` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `version` tinyint(4) NOT NULL,
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_ref` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_reference_id` int(11) NOT NULL,
  `order_reference` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord_date` date NOT NULL,
  `order_type` int(11) NOT NULL,
  `delivery_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deliver_to` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_stk_loc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `payment_id` tinyint(4) NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `paid_amount` double NOT NULL DEFAULT '0',
  `choices` enum('no','partial_created','full_created') COLLATE utf8_unicode_ci NOT NULL,
  `payment_term` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO sales_orders VALUES("1","201","1","1","1","0","SO-0001","","0","","","2017-09-01","0","","","","","PL","","1","1840","0","no","0","","");
INSERT INTO sales_orders VALUES("2","202","1","1","1","0","INV-0001","","1","SO-0001","","2017-09-04","0","","","","","PL","","1","1840","0","no","1","","");
INSERT INTO sales_orders VALUES("3","201","2","2","1","0","SO-0002","","0","","","2017-09-06","0","","","","","PL","","1","9000","0","no","0","","");
INSERT INTO sales_orders VALUES("4","202","2","2","1","0","INV-0002","","3","SO-0002","","2017-09-09","0","","","","","PL","","1","9000","5000","no","1","","");
INSERT INTO sales_orders VALUES("5","201","2","2","1","0","SO-0003","","0","","","2017-09-08","0","","","","","PL","","1","245000","0","no","0","","");
INSERT INTO sales_orders VALUES("6","202","2","2","1","0","INV-0003","","5","SO-0003","","2017-09-14","0","","","","","PL","","1","33150","0","no","1","","");
INSERT INTO sales_orders VALUES("7","202","2","2","1","0","INV-0004","","5","SO-0003","","2017-09-21","0","","","","","PL","","1","39935","1000","no","1","","");
INSERT INTO sales_orders VALUES("8","202","2","2","1","0","INV-0005","","5","SO-0003","","2017-09-19","0","","","","","PL","","1","27497.5","27497.5","no","1","","");
INSERT INTO sales_orders VALUES("9","202","2","2","1","0","INV-0006","","5","SO-0003","","2017-10-05","0","","","","","PL","","1","920","0","no","1","","");
INSERT INTO sales_orders VALUES("10","201","2","2","1","0","SO-0004","","0","","","2017-10-05","0","","","","","PL","","1","184.04995","0","no","0","2017-10-05 10:13:27","");
INSERT INTO sales_orders VALUES("11","202","2","2","1","0","INV-0007","","10","SO-0004","","2017-10-05","0","","","","","PL","","1","184.04995","0","no","1","2017-10-05 10:13:27","");
INSERT INTO sales_orders VALUES("12","201","1","1","1","0","SO-0005","","0","","","2017-10-05","0","","","","","PL","","1","34.96","0","no","0","2017-10-05 10:19:30","");
INSERT INTO sales_orders VALUES("13","202","1","1","1","0","INV-0008","","12","SO-0005","","2017-10-05","0","","","","","PL","","1","34.96","0","no","1","2017-10-05 10:19:30","");
INSERT INTO sales_orders VALUES("14","201","1","1","1","0","SO-0006","","0","","","2017-10-05","0","","","","","PL","","1","184.38295","0","no","0","2017-10-05 10:20:08","");
INSERT INTO sales_orders VALUES("15","202","1","1","1","0","INV-0009","","14","SO-0006","","2017-10-05","0","","","","","PL","","1","184.38295","184.38295","no","1","2017-10-05 10:20:08","");
INSERT INTO sales_orders VALUES("16","201","1","1","1","1","SO-0007","","0","","","2017-10-05","0","","","","","PL","","1","80500","0","no","0","2017-10-05 10:36:59","");
INSERT INTO sales_orders VALUES("17","202","1","1","1","0","INV-0010","","16","SO-0007","","2017-10-05","0","","","","","PL","","1","80500","80500","no","1","2017-10-05 10:36:59","");
INSERT INTO sales_orders VALUES("20","201","3","3","1","0","SO-0008","","0","","","2017-10-08","0","","","","","PL","","1","1150","0","no","0","2017-10-08 12:09:30","");
INSERT INTO sales_orders VALUES("21","202","3","3","1","0","INV-0011","","20","SO-0008","","2017-10-08","0","","","","","PL","","1","1150","1150","no","1","2017-10-08 12:10:00","");
INSERT INTO sales_orders VALUES("22","201","1","1","1","1","SO-0009","","0","","","2017-10-09","0","","","","","PL","","1","172.5","0","no","0","2017-10-09 07:43:24","");
INSERT INTO sales_orders VALUES("23","202","1","1","1","0","INV-0012","","22","SO-0009","","2017-10-09","0","","","","","PL","","1","172.5","0","no","1","2017-10-09 07:43:24","");
INSERT INTO sales_orders VALUES("24","201","6","6","1","1","SO-0010","","0","","","2017-10-25","0","","","","","PL","","1","1652.8467","0","no","0","2017-10-25 12:22:40","2017-10-26 09:43:01");
INSERT INTO sales_orders VALUES("25","202","6","6","1","0","INV-0013","","24","SO-0010","","2017-10-25","0","","","","","PL","","1","201.25","201.25","no","1","2017-10-25 12:22:40","");
INSERT INTO sales_orders VALUES("26","201","7","7","1","1","SO-0011","","0","","","2017-10-26","0","","","","","PL","","1","92","0","no","0","2017-10-26 09:55:31","");
INSERT INTO sales_orders VALUES("27","202","7","7","1","0","INV-0014","","26","SO-0011","","2017-10-26","0","","","","","PL","","1","92","92","no","1","2017-10-26 09:55:31","");





CREATE TABLE IF NOT EXISTS `sales_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sales_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_included` int(11) NOT NULL,
  `factor` double NOT NULL,
  `defaults` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO sales_types VALUES("1","Retail","1","0","1");
INSERT INTO sales_types VALUES("2","Wholesale","0","0","0");





CREATE TABLE IF NOT EXISTS `shipment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `packed_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO shipment VALUES("1","5","301","","0","2017-10-02","0000-00-00","","");
INSERT INTO shipment VALUES("2","5","301","","1","2017-10-02","2017-10-02","","");
INSERT INTO shipment VALUES("3","16","301","Auto shipment","1","2017-10-05","2017-10-12","","");
INSERT INTO shipment VALUES("4","22","301","","0","2017-10-12","0000-00-00","","");
INSERT INTO shipment VALUES("5","24","301","Auto shipment","1","2017-10-25","2017-10-26","","");
INSERT INTO shipment VALUES("6","26","301","Auto shipment","0","2017-10-26","0000-00-00","","");





CREATE TABLE IF NOT EXISTS `shipment_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `stock_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_type_id` tinyint(4) NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` double NOT NULL,
  `discount_percent` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO shipment_details VALUES("1","1","5","APPLE","2","160","10","0","","");
INSERT INTO shipment_details VALUES("2","1","5","WALTON","4","85","10","0","","");
INSERT INTO shipment_details VALUES("3","2","5","APPLE","2","160","10","0","","");
INSERT INTO shipment_details VALUES("4","2","5","WALTON","4","85","10","0","","");
INSERT INTO shipment_details VALUES("5","3","16","APPLE","2","7000","10","0","","");
INSERT INTO shipment_details VALUES("6","4","22","100012","2","150","1","0","","");
INSERT INTO shipment_details VALUES("7","5","24","SAMSUNG","2","90","1","0","","");
INSERT INTO shipment_details VALUES("8","5","24","WALTON","2","85","1","0","","");
INSERT INTO shipment_details VALUES("9","6","26","LG","2","80","1","0","","");





CREATE TABLE IF NOT EXISTS `stock_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dflt_units` int(11) NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO stock_category VALUES("1","Default","1","0","2017-10-05 10:07:56","");
INSERT INTO stock_category VALUES("2","Hardware","1","0","2017-10-05 10:07:56","");
INSERT INTO stock_category VALUES("3","Health & Beauty","1","0","2017-10-05 10:07:56","");





CREATE TABLE IF NOT EXISTS `stock_master` (
  `stock_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `tax_type_id` int(11) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8_unicode_ci NOT NULL,
  `units` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO stock_master VALUES("APPLE","1","2","Iphone 7+","","Each","0","0","","");
INSERT INTO stock_master VALUES("HP","1","2","HP Pro Book","","Each","0","0","","");
INSERT INTO stock_master VALUES("LENEVO","1","2","LED TV","","Each","0","0","","");
INSERT INTO stock_master VALUES("LG","1","2","LG Refrigeretor","","Each","0","0","","");
INSERT INTO stock_master VALUES("SAMSUNG","1","2","Samsung G7","","Each","0","0","","");
INSERT INTO stock_master VALUES("SINGER","1","2","Singer Refrigerator","","Each","0","0","","");
INSERT INTO stock_master VALUES("SONY","1","2","Sony experia 5","","Each","0","0","","");
INSERT INTO stock_master VALUES("WALTON","1","2","Walton Primo GH","","Each","0","0","","");
INSERT INTO stock_master VALUES("100012","2","1","Test Item","sdfsdf","Each","0","0","2017-10-09 07:36:26","");
INSERT INTO stock_master VALUES("01111","1","1","Test 10","tested item for shipment ","Each","0","0","2017-10-12 06:26:53","");
INSERT INTO stock_master VALUES("DELL","1","4","Dell desktop computer","This is a destop computer","Each","0","0","","");
INSERT INTO stock_master VALUES("DELL5","2","4","Dell desktop computer","This is a destop computer","Each","0","0","","");





CREATE TABLE IF NOT EXISTS `stock_moves` (
  `trans_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `order_no` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT '0',
  `loc_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tran_date` date NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `order_reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_reference_id` int(11) NOT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`trans_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO stock_moves VALUES("1","APPLE","0","0","102","PL","2017-08-19","1","","store_in_10","10","","","1000","100");
INSERT INTO stock_moves VALUES("2","HP","0","0","102","PL","2017-08-19","1","","store_in_10","10","","","1000","80");
INSERT INTO stock_moves VALUES("3","SAMSUNG","0","0","102","PL","2017-10-02","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("4","SONY","0","0","102","PL","2017-10-02","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("5","SINGER","0","0","102","PL","2017-10-02","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("6","LG","0","0","102","PL","2017-10-02","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("7","LENEVO","0","0","102","PL","2017-10-02","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("8","APPLE","0","0","102","PL","2017-09-25","1","","store_in_12","12","","","1000","100");
INSERT INTO stock_moves VALUES("9","WALTON","0","0","102","JA","2017-09-25","1","","store_in_12","12","","","1000","50");
INSERT INTO stock_moves VALUES("10","SONY","0","0","102","JA","2017-08-18","1","","store_in_13","13","","","1000","50");
INSERT INTO stock_moves VALUES("11","SINGER","0","0","102","JA","2017-08-18","1","","store_in_13","13","","","1000","50");
INSERT INTO stock_moves VALUES("12","SAMSUNG","0","0","102","JA","2017-08-18","1","","store_in_13","13","","","1000","50");
INSERT INTO stock_moves VALUES("13","WALTON","0","0","102","JA","2017-08-18","1","","store_in_13","13","","","1000","50");
INSERT INTO stock_moves VALUES("14","SINGER","0","0","102","JA","2017-10-02","1","","store_in_14","14","","","1000","50");
INSERT INTO stock_moves VALUES("15","LG","0","0","102","JA","2017-10-02","1","","store_in_14","14","","","1000","50");
INSERT INTO stock_moves VALUES("16","WALTON","0","0","102","JA","2017-10-02","1","","store_in_15","15","","","1000","50");
INSERT INTO stock_moves VALUES("17","APPLE","1","0","202","PL","2017-09-04","1","SO-0001","store_out_2","2","","","-10","160");
INSERT INTO stock_moves VALUES("18","SAMSUNG","3","0","202","PL","2017-09-09","1","SO-0002","store_out_4","4","","","-100","90");
INSERT INTO stock_moves VALUES("19","WALTON","0","0","102","PL","2017-10-02","1","","store_in_16","16","","","3000","50");
INSERT INTO stock_moves VALUES("20","APPLE","0","0","102","PL","2017-10-02","1","","store_in_16","16","","","3000","100");
INSERT INTO stock_moves VALUES("21","APPLE","5","0","202","PL","2017-09-13","1","SO-0003","store_out_6","6","","","-20","160");
INSERT INTO stock_moves VALUES("22","WALTON","5","0","202","PL","2017-09-13","1","SO-0003","store_out_6","6","","","-20","85");
INSERT INTO stock_moves VALUES("23","APPLE","5","0","202","PL","2017-09-20","1","SO-0003","store_out_7","7","","","-50","160");
INSERT INTO stock_moves VALUES("24","WALTON","5","0","202","PL","2017-09-20","1","SO-0003","store_out_7","7","","","-50","85");
INSERT INTO stock_moves VALUES("25","APPLE","5","0","202","PL","2017-09-26","1","SO-0003","store_out_8","8","","","-5","160");
INSERT INTO stock_moves VALUES("26","WALTON","5","0","202","PL","2017-09-26","1","SO-0003","store_out_8","8","","","-5","85");
INSERT INTO stock_moves VALUES("27","SAMSUNG","0","0","401","JA","2017-10-02","1","","moved_from_PL","1","1","","10","0");
INSERT INTO stock_moves VALUES("28","SAMSUNG","0","0","402","PL","2017-10-02","1","","moved_in_JA","1","","","-10","0");
INSERT INTO stock_moves VALUES("29","WALTON","0","0","401","PL","2017-10-02","1","","moved_from_JA","2","2","","10","0");
INSERT INTO stock_moves VALUES("30","WALTON","0","0","402","JA","2017-10-02","1","","moved_in_PL","2","","","-10","0");
INSERT INTO stock_moves VALUES("31","APPLE","5","0","202","PL","2017-10-05","1","SO-0003","store_out_9","9","","","-5","160");
INSERT INTO stock_moves VALUES("32","APPLE","0","0","102","JA","2017-10-05","1","","store_in_17","17","","","500","100");
INSERT INTO stock_moves VALUES("33","APPLE","10","0","202","PL","2017-10-05","1","SO-0004","store_out_11","11","","","-1","160.333");
INSERT INTO stock_moves VALUES("34","SAMSUNG","12","0","202","PL","2017-10-05","1","SO-0005","store_out_13","13","","","-1","30.4");
INSERT INTO stock_moves VALUES("35","APPLE","14","0","202","PL","2017-10-05","1","SO-0006","store_out_15","15","","","-1","160.333");
INSERT INTO stock_moves VALUES("36","LG","0","0","401","JA","2017-10-05","1","","moved_from_PL","3","3","","1","0");
INSERT INTO stock_moves VALUES("37","LG","0","0","402","PL","2017-10-05","1","","moved_in_JA","3","","","-1","0");
INSERT INTO stock_moves VALUES("38","APPLE","16","0","202","PL","2017-10-05","1","SO-0007","store_out_17","17","","","-10","7000");
INSERT INTO stock_moves VALUES("51","SAMSUNG","20","0","202","PL","2017-10-08","1","SO-0008","store_out_21","21","","","-10","100");
INSERT INTO stock_moves VALUES("50","APPLE","0","7","102","PL","2017-10-08","1","","store_in_16","16","","","3000","100");
INSERT INTO stock_moves VALUES("49","WALTON","0","7","102","PL","2017-10-08","1","","store_in_16","16","","","3000","50");
INSERT INTO stock_moves VALUES("42","APPLE","0","4","102","JA","2017-10-05","1","","store_in_17","17","","","500","100");
INSERT INTO stock_moves VALUES("43","SAMSUNG","0","5","102","PL","2017-10-05","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("44","SONY","0","5","102","PL","2017-10-05","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("45","SINGER","0","5","102","PL","2017-10-05","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("46","LG","0","5","102","PL","2017-10-05","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("47","LENEVO","0","5","102","PL","2017-10-05","1","","store_in_11","11","","","1000","50");
INSERT INTO stock_moves VALUES("48","WALTON","0","6","102","JA","2017-10-05","1","","store_in_15","15","","","1000","50");
INSERT INTO stock_moves VALUES("56","LG","0","0","401","PL","2017-10-26","1","","moved_from_JA","4","4","","12","0");
INSERT INTO stock_moves VALUES("53","100012","22","0","202","PL","2017-10-09","1","SO-0009","store_out_23","23","","","-1","150");
INSERT INTO stock_moves VALUES("54","SAMSUNG","24","0","202","PL","2017-10-25","1","SO-0010","store_out_25","25","","","-1","90");
INSERT INTO stock_moves VALUES("55","WALTON","24","0","202","PL","2017-10-25","1","SO-0010","store_out_25","25","","","-1","85");
INSERT INTO stock_moves VALUES("57","LG","0","0","402","JA","2017-10-26","1","","moved_in_PL","4","","","-12","0");
INSERT INTO stock_moves VALUES("58","LG","26","0","202","PL","2017-10-26","1","SO-0011","store_out_27","27","","","-1","80");





CREATE TABLE IF NOT EXISTS `stock_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `source` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `destination` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO stock_transfer VALUES("1","1","PL","JA","","10","2017-10-02");
INSERT INTO stock_transfer VALUES("2","1","JA","PL","","10","2017-10-02");
INSERT INTO stock_transfer VALUES("3","1","PL","JA","","1","2017-10-05");
INSERT INTO stock_transfer VALUES("4","1","JA","PL","","12","2017-10-26");





CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplier_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO suppliers VALUES("1","Ina Moran","ina.morn@yahoo.com","Santa Rosa","(684) 579-1879","Nunc Road","Lebanon","KY 69409","Lebanon","0","","");
INSERT INTO suppliers VALUES("2","Hedy Greene","hedy@yahoo.com","Ap #696-3279 Viverra. Avenue","(608) 265-2215","Latrobe","Lebanon","DE 38100","Lebanon","0","","");
INSERT INTO suppliers VALUES("3","Melvin Porter","melvin@gmail.com","Curabitur Rd.","(959) 119-8364","Bandera","South Dakota","45149","USA","0","","");
INSERT INTO suppliers VALUES("4","Celeste Slater","celeste@yahoo.com","Ullamcorper. Street","(786) 713-861","Roseville","New york","NH 11523","United States","0","","");
INSERT INTO suppliers VALUES("5","Theodore Lowe","lowe@yahoo.com","Ap #867-859 Sit Rd.","(793) 151-623","Azusa","New York","39531","United States","0","","");
INSERT INTO suppliers VALUES("9","John De","exampl2e@exmample.com","North America","1235678","Washington","North America","1235678","US","0","","2017-10-26 10:16:10");





CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `real_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users VALUES("1","Admin","$2y$10$NFl9z/cbBkX8q41bIkZbm.32OT/Ogp2fYKIZXifzgm2M6n1oG5/0C","Admin","1","1236","admin@techvill.net","","0","56XddXYUs9DjTn6ZeVHv6fKxM02Ahs7kj5J73ni2g5jG5PYcU44XZynytcve","","2017-10-26 10:43:44");
INSERT INTO users VALUES("2","reza","$2y$10$Gmn3O3YVPo6ixo.sCE7JqO6JPEmTGPcyOpCmQxpIxYw5k4mTIp.5a","reza","1","225","reza.techvill@gmail.com","Koala.jpg","0","","2017-10-09 08:00:39","2017-10-26 10:51:59");



