<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\MergeFields */

$this->title = 'Create Merge Field';
$this->params['breadcrumbs'][] = ['label' => 'Merge Fields', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="merge-fields-create">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
