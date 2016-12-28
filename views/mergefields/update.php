<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\MergeFields */

$this->title = 'Update Merge Field: ' . ' ' . $model->merge_field_id;
$this->params['breadcrumbs'][] = ['label' => 'Merge Fields', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->merge_field_id, 'url' => ['view', 'id' => $model->merge_field_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="merge-fields-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
