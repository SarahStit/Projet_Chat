-- Qry 1 : Create user 

INSERT INTO Users(User_id, Last_name, First_name, Pseudo, Password, Email,user_status)
VALUES('User_id', 'Last_name', 'First_name','pseudo','password', 'email',1) ;-- deux users ne peuvent pas avoir un même user_name (?)
     

--Qry 2 : delete user
 DELETE FROM Users
WHERE User_id = User_id;


-- Qry 3 : Update Users

UPDATE Users
SET Password = 'new_password', Pseudo = 'new_pseudo' , Last_name = 'new last_name' , First_name ='new first_name', Email = 'new email' 
WHERE User_id = User_id;

-- Qry 4 : Update pseudo

UPDATE Users
SET Pseudo = 'new_pseudo'
WHERE User_id = User_id

-- Qry 5 : User se connecter

SELECT 1
FROM Users
WHERE Pseudo = 'pseudo' AND Password = 'user_pwd';

SELECT 'ok' AS user_connexion
FROM Users
WHERE Pseudo = 'user1' AND Password = 'password1' AND users_status = 1;


-- Qry 6 : User se déconnecter
-- UPDATE users
-- SET connexion = FALSE

-- Qry 7 : User post message
INSERT INTO Messages(Message_id, Send_date, Message_body, User_id)
VALUES("hello",now(),null,user_id) 



-- Qry 8 : User get 10 last msg

select message_body
from Messages
ORDER BY Message_id DESC
LIMIT 10

-- Qry 9 : User get liste des utilsateurs
select Pseudo
FROM Users;




