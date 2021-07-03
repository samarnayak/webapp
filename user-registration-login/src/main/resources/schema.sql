/**
 * Create database first (run manually)
 *CREATE DATABSE IF NOT EXISTS springboot;
 */
/*DROP TABLE IF EXISTS springboot.user;*/


CREATE TABLE IF NOT EXISTS springboot.user (
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NULL,
  firstname VARCHAR(255) NOT NULL,
  lastname VARCHAR(255) NULL,
  email VARCHAR(255) NULL,
  address VARCHAR(255) NULL,
  phone VARCHAR(255) NULL,
PRIMARY KEY (username));
