<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Setting */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Settings', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default" style="margin-top: 10px;">
   <div class="panel-heading"><h4><i class="glyphicon glyphicon-asterisk"></i> <?= Html::encode($this->title) ?></h4></div>
        <div class="panel-body">
			<div class="setting-view">
			
			    <h3><?= Html::encode($this->title) ?></h3>
			
			    <p>
			        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
			        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
			            'class' => 'btn btn-danger',
			            'data' => [
			                'confirm' => 'Are you sure you want to delete this item?',
			                'method' => 'post',
			            ],
			        ]) ?>
			    </p>
			
			    <?= DetailView::widget([
			        'model' => $model,
			        'attributes' => [
			            'id',
			            'title',
			            'code',
			            'value',
			            'description:ntext',
			        ],
			    ]) ?>
			
			</div>
      </div>
</div>