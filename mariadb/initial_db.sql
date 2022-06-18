CREATE DATABASE IF NOT EXISTS todo;
CREATE TABLE todo.todo_items (
	item_id INT AUTO_INCREMENT,
	content VARCHAR(255),
	PRIMARY KEY(item_id)
);
INSERT INTO todo.todo_items (content) VALUES ("My first important item");
INSERT INTO todo.todo_items (content) VALUES ("My second important item");
INSERT INTO todo.todo_items (content) VALUES ("My third important item");
CREATE USER IF NOT EXISTS 'alabalet'@'%' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON todo.* TO 'alabalet'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';