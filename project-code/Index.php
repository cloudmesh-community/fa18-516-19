<?php
		$dbhost = 'localhost:3306';
		$dbuser = 'root';
		$dbpass = 'root';
		$conn = mysqli_connect($localhost, $root, $root, $test);
		# $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
		
		if(! $conn ){
			die('Could not connect: ' . mysqli_error());
		}
		echo 'Connected successfully';
		mysqli_select_db($conn, 'test');
		$query = 'SELECT * FROM test';
		$result = mysqli_query($conn, $query);
		
		mysqli_close($conn);
		
		?>
		
		

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Test Records</title>
</head>
<body>
	<h1>Customer Records</h1>
    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>address</th>
                <th>city</th>
                <th>state</th>
                <th>zip</th>
            </tr>
        </thead>
    </table>
    
    <h1>Item Records</h1>
    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>description</th>
            </tr>
        </thead>
    </table>
    
    <h1>Sale Records</h1>
    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>item</th>
                <th>date</th>
                <th>quantity</th>
                <th>price</th>
            </tr>
        </thead>
     $conn = mysqli_connect($localhost, $root, $root, $test);   
     $query = 'SELECT * FROM test';
     $result = mysqli_query($conn, $query);    
    </table>
	
	<?php if(mysqli_num_rows($result) > 0): ?>
		<ul>
			<?php while($row = mysqli_fetch_object($result)): ?>
			<li><?php echo $row->['id']; ?></li>
			<?php endwhile; ?>
		</ul>
	<?php else: ?>	
			<p>No Posts</p>
	<?php endif; ?>			
	<!-- ?php phpinfo(); ?> -->
	
</body>
</html>

	
	