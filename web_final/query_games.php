<h3>result:</h3>
<?php
$date = $_POST['date'];
$team = $_POST['team'];

$link = new mysqli('localhost', 'mlb', 'mlb', 'test'); //10.120.31.XX（座號）

if (!empty($date) && !empty($team)) {
	$sql = "SELECT  s.date, s.away_team, s.home_team FROM sch_2015 s WHERE s.date='$date' AND (s.home_team='$team' or s.away_team='$team')";
} else if (!empty($date)) {
	$sql = "SELECT  s.date, s.away_team, s.home_team FROM sch_2015 s WHERE s.date='$date'";
} else {
	$sql = "SELECT  s.date, s.away_team, s.home_team FROM sch_2015 s WHERE s.home_team='$team' or s.away_team='$team'";
}

$query = $link->query($sql);

foreach ($query as $data) {
	$date = $data['date'];
	$home_team = $data['home_team'];
	$away_team = $data['away_team'];
?>
<h4 align="center"><font class="text-primary5"><?php echo $date;?></font>    
	     <font class="text-primary4"><strong><?php echo $home_team; ?></strong></font><font class="text-primary5"> V.S </font><font class="text-primary3"><strong
	><?php echo $away_team; ?></strong></font></h4>
<?php
}
?>
