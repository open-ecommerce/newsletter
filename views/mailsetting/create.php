<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\modules\newsletter\models\Automailsetting */

$this->title = 'Create Automailsetting';
$this->params['breadcrumbs'][] = ['label' => 'Automailsettings', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="automailsetting-create">

    <h3><?= Html::encode($this->title) ?></h3>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
