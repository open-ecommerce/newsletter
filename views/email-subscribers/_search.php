<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\EmailSubscribersSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="email-subscribers-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'subscriber_id') ?>

    <?= $form->field($model, 'full_name') ?>

    <?= $form->field($model, 'subscriber_email') ?>

    <?= $form->field($model, 'subscriber_details') ?>

    <?= $form->field($model, 'group_id') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
