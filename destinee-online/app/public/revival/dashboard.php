<?php 

session_start();
?>

  <div class="leftTop dashboardDisplayed">
  	<!-- <div class="main"> -->
  		<div class="img"></div>
		<div class="dashbar">
  			<div class="username"><?php echo $_SESSION['username']; ?></div>
			<div class="contentbar">
				<?php ;?>
				<div class="stats">
					<div class="colStats1">
						<div>stat1</div>
						<div>stat1</div>
						<div>stat1</div>
					</div>
					<div class="colStats2">
						<div>stat2</div>
						<div>stat2</div>
						<div>stat2</div> 
				</div>
				</div>
			</div>

		</div>
	<!-- </div> -->
  </div>
  <div class="rightArea">
		<div class="content">
			<div class="subcontent">
				<div class="colMenu">
					<ul>
						<li>colM1</li>
						<li>colM2</li>
						<li>colM3</li>
						<li>colM4</li>
						<li>colM5</li>
						<li>colM6</li>
					</ul>
				</div>
				
				<div class="colContent">
					<div class="titleContent">
						<h2>Content</h2>
					</div>
					<p>Actualités, Chat, Inventaire, Aptitudes, etc...</p>
				</div>
			</div>
		</div>
  </div>
  <div class="leftBot">
  	
	<div class="infos">
		<div class="infosbar">
			<h2><span>Infos</span></h2>
			<div class="stats">
				<div class="colStats1">
					<div>stat1</div>
					<div>stat1</div>
					<div>stat1</div>
				</div>
				<div class="colStats2">
					<div>stat2</div>
					<div>stat2</div>
					<div>stat2</div> 
				</div>
			</div>
		</div>
	</div>
  </div>
		
</div>