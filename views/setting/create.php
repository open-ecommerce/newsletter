<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Setting */

$this->title = 'Create Setting';
$this->params['breadcrumbs'][] = ['label' => 'Settings', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default" style="margin-top: 10px;">
   <div class="panel-heading"><h4><i class="glyphicon glyphicon-asterisk"></i> <?= Html::encode($this->title) ?></h4></div>
        <div class="panel-body">
			<div class="setting-create">
			    <?= $this->render('_form', [
			        'model' => $model,
			    ]) ?>
			
			</div>
   </div>
</div>