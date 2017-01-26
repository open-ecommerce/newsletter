<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $searchModel app\models\EqueueSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Sending';
$this->params['breadcrumbs'][] = $this->title;
?>
<?php
$Css_script = <<< CSS
.inform{
        color:#01699C;
    }
.successful{
        color:#3c763d;
    }
.rotate{
    font-size: 30px;
}
.fa-spin-custom, .glyphicon-spin {
    -webkit-animation: spin 1000ms infinite linear;
    animation: spin 1000ms infinite linear;
}
@-webkit-keyframes spin {
    0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(359deg);
        transform: rotate(359deg);
    }
}
@keyframes spin {
    0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(359deg);
        transform: rotate(359deg);
    }
} 

CSS;
$this->registerCss($Css_script);
?>
<div class="main-index" style="">
    <div class="box box-info">
           <div class="box-header" style="border-bottom: 1px solid #00c0ef">
                <i class="fa fa-envelope" style="padding: 10px 0px 10px 10px;"></i>
                    <h3 class="box-title"> 
                    All emails
   				</h3>
  </div>
   <?=Html::beginForm(['bulk'],'post');?>
   
  <div style="margin: 10px;">
   <div class="row">
   <div class="col-md-1">	<a href="<?= Yii::$app->request->baseurl ?>/newsletter/main/mailcreate" class="btn btn-default btn-md">Compose Mail</a></div>
	   <div class="col-md-1">	
			<?=Html::submitButton('', ['class' => 'btn btn-default btn-md fa fa-trash-o','style'=>'padding:9px; margin-left:-10px']);?>
	  </div>
	</div>
	<?php Pjax::begin(['id'=>'sending-mail']);?>
	    <?= GridView::widget([
	        'dataProvider' => $dataProvider,
	        'filterModel' => $searchModel,
	        'id'=>'emailGrid',
	        'columns' => [
	        	['class' => 'yii\grid\CheckboxColumn'],
	            'subject',
	            'to',
	            'cc',
	            'bcc',
	           'created_date',
	            [
	                    'attribute'=>'status',
	                    'filter' => Html::activeDropDownList($searchModel, 'status',['Queue'=>'Queue','Sent'=>'Sent'],
	
	                    ['class'=>'form-control','prompt' => 'Select Status']),
	
	          ],
	           [
	               'class' => 'yii\grid\ActionColumn',
	               'template'=>'{delete}'
	           ]  
	        ],
	    ]); ?>
	<?php Pjax::end();?>  
	  <?= Html::endForm();?>
	</div>
</div>
</div>
<?php 
if(Yii::$app->session->get('Page Reload Interval')){
    $reload_intrval = Yii::$app->session->get('Page Reload Interval');
    $reload_intrval = $reload_intrval*1000;
}
 else {
   $reload_intrval = 300000;//5 minutes
   
}
$script = <<< JS
  
    
 setInterval(function () {
  location.reload();
    }, $reload_intrval);
 
JS;
$this->registerJs($script);
?>
<?php

Yii::$app->session->remove('Page Reload Interval');
?>
 