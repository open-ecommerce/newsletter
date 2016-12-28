<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\MergeFields */

$this->title = $model->merge_field_id;
$this->params['breadcrumbs'][] = ['label' => 'Merge Fields', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="merge-fields-view">

    <h3><?= Html::encode('Detail of '.$model->merge_field_name) ?></h3>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->merge_field_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->merge_field_id], [
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
            'merge_field_id',
            'merge_field_name',
            'merge_field_code',
            'merge_field_description:ntext',
        ],
    ]) ?>

</div>
