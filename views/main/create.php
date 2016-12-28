<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Equeue */

$this->title = 'Send Email';

$this->params['breadcrumbs'][] = $this->title;
?>
<div class="main-create">

    

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
