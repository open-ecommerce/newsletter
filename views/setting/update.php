<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Setting */

$this->title = 'Update Setting: ' . ' ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Settings', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="panel panel-default" style="margin-top: 10px;">
   <div class="panel-heading"><h4><i class="glyphicon glyphicon-asterisk"></i> <?= Html::encode($this->title) ?></h4></div>
        <div class="panel-body">
			<div class="setting-update">
			
			    <h3><?= Html::encode($this->title) ?></h3>
			
			    <?= $this->render('_form', [
			        'model' => $model,
			    ]) ?>
			
			</div>
     </div>
</div>