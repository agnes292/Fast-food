<div class="row">
	<ol class="breadcrumb">
		<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
		<li class="active">Order</li>
	</ol>
</div><!--/.row-->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-info">
			<div class="panel-heading">
			<div class="col-md-8">Order of <?php echo $user->name; ?></div>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr class="info">										
								<th class="text-center">STT</th>
								<th>Customer Name</th>
								<th>Date Created</th>
								<th>Phone Number</th>
								<th>Prices</th>
								<th>Status</th>		
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

							<?php 
								$stt = 0;
							foreach ($order as $value) { 
								$stt = $stt + 1;
								?>
								<tr>
									<td style="vertical-align: middle;text-align: center;"><strong><?php echo $stt; ?></strong></td>
									<td><strong><?php echo $value->user_name; ?></strong></td>
									<td><strong><?php echo $value->created; ?></strong></td>
									<td><strong><?php echo $value->user_phone; ?></strong></td>
									<td><strong><?php echo number_format($value->amount); ?></strong> USD</td>
									<td>
										<?php switch ($value->status) {
											case '0':
												echo "<p style='color:red'>Pending </p>";
												break;
											case '1':
												echo "<p style='color:green'>Confirmed</p>";
												break;
											default:
												echo 'Pending';
												break;
										} ?>
									</td>
									<td class="list_td aligncenter">
							            <a href="<?php echo admin_url('user/detail/'.$value->id); ?>" title="Details"><span class="glyphicon glyphicon-list-alt"></span></a>&nbsp;&nbsp;&nbsp;
							            <a href="<?php echo admin_url('user/deldetail/'.$value->id); ?>" title="Delete"> <span class="glyphicon glyphicon-remove" onclick=" return confirm('Are you sure you want to delete?')"></span> </a>
								    </td>    
				                </tr>
							<?php } ?>

			    		</tbody>

					</table>

					
					
				</div>
			</div>
		</div>
	</div>
</div><!--/.row-->
