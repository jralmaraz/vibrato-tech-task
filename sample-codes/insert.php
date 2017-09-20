<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
<input type="text" name="name">
<input type="text" name="email">
<input type="submit" name="submit">
</form>


<?php
$servername = "localhost";
$username = "appuser";
$password = "apptest";
$dbname = "test";


if(isset($_POST['submit'])) /* i.e. the PHP code is executed only when someone presses Submit button in the below given HTML Form */
{
$name = $_POST['name']; 
$email = $_POST['email'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO users (name, email) VALUES ('$name', '$email')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

}

?>
