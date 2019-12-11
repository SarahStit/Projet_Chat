USE Speakup_Project;
CREATE TABLE IF NOT EXISTS Users(
    User_id INT AUTO_INCREMENT PRIMARY KEY,
    Last_name VARCHAR(40) NOT NULL,
    First_name VARCHAR(40) NOT NULL,
    Pseudo VARCHAR(15) NOT NULL,
    Password VARCHAR(10) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    CONSTRAINT uc_pseudo_email UNIQUE (pseudo,email),
    users_status  boolean not null DEFAULT TRUE
    );

   CREATE TABLE IF NOT EXISTS Messages(
    Message_id INT AUTO_INCREMENT PRIMARY KEY,
    Send_date DATETIME NOT NULL,
    Message_body VARCHAR(255),
    User_id INT NOT NULL,
    FOREIGN KEY(User_id) REFERENCES Users(User_id)
    ); 
    
    
  
    