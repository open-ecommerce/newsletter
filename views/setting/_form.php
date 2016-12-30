<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Setting */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="setting-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->checkbox(['id' => "isNews" ]) ?>

    <?= $form->field($model, 'code')->textInput(['disabled' => "",'id'=>"newsSource"]) ?>

    <?= $form->field($model, 'value')->textInput(['maxlength' => 1]) ?>

    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js" type="text/javascript"></script>
  
<script>
$('#isNews').change(function(){
	   $("#newsSource").prop("disabled", !$(this).is(':checked'));
	});
</script>