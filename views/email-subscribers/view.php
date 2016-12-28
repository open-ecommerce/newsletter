 <?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\EmailSubscribers */

$this->title = $model->subscriber_id;
$this->params['breadcrumbs'][] = ['label' => 'Groups', 'url' => ['group/index']];
$this->params['breadcrumbs'][] = ['label' => 'Email Subscribers', 'url' => ['index','group_id'=>$group_id]];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="email-subscribers-view">

    <h3><?= Html::encode($this->title) ?></h3>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->subscriber_id,'group_id' => $group_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->subscriber_id,'group_id' => $group_id], [
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
            'subscriber_id',
            'full_name',
            'subscriber_email:email',
            'subscriber_details:ntext',
            'group_id',
        ],
    ]) ?>

</div>
