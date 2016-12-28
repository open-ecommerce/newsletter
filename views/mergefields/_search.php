<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\MergeFieldsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="merge-fields-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'merge_field_id') ?>

    <?= $form->field($model, 'merge_field_name') ?>

    <?= $form->field($model, 'merge_field_description') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
