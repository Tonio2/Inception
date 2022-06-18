<?php
$user = "alabalet";
$password = "12345";
$database = "todo";
$table = "todo_items";

try {
  $db = new PDO("mysql:host=mariadb.inception;dbname=$database", 'root', 'root');
  echo "<h2>TODO</h2><ol>"; 
  foreach($db->query("SELECT content FROM $table") as $row) {
    echo "<li>" . $row['content'] . "</li>";
  }
  echo "</ol>";
} catch (PDOException $e) {
    print "Lol!: " . $e . "<br/>";
    die();
}
?>