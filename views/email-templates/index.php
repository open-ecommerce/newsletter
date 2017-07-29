<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EmailTemplatesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Email Templates';
$this->params['breadcrumbs'][] = $this->title;

$deleteTip = Yii::t('app', 'Delete this template.');
$deleteMsg = Yii::t('app', 'Are you sure you want to delete this template?');


?>
<div class="email-templates-index" style="margin-top: 10px;">

    <!-- quick email widget -->
    <div class="box box-info">
        <div class="box-header" style="border-bottom: 1px solid #00c0ef;">
            <i class="fa fa-envelope" style="padding: 10px 0px 10px 10px;"></i>
            <h3 class="box-title"><?= Html::encode($this->title) ?></h3>

        </div>
        <div class="box-body">
            <?php // echo $this->render('_search', ['model' => $searchModel]);  ?>

            <p>
                <?= Html::a('Create Email Templates', ['create'], ['class' => 'btn btn-success']) ?>
            </p>

            <?php Pjax::begin(); ?>
            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn',
                        'header' => '<span style="color:#3c8dbc" title="Serail Number">S.N.</span>'
                    ],
                    //'template_id',
                    //'template_name',
                    [
                        'attribute' => 'template_name',
                        'filterInputOptions' => [
                            'class' => 'form-control',
                            'placeholder' => 'Search with template name'
                        ]
                    ],
//'template_body:html',
//                                                [
//                                                    'attribute'=>'template_body',
//                                                    'format'=>'html',
//                                                     'filterInputOptions'=>[
//                                                                                'class'=>'form-control',
//                                                                                'placeholder'=>'Search with template content'
//                                                                           ]
//                                                ],
                    'template_description:ntext',
               
                    [
                        'class' => 'kartik\grid\ActionColumn',
                        'header' => 'View',
                        'template' => '{view}',
                        'viewOptions' => ['label' => '<i class="glyphicon glyphicon-eye-open edit-today"></i>'],
                    ],
                    [
                        'class' => 'kartik\grid\ActionColumn',
                        'header' => 'Update',
                        'template' => '{update}',
                        'viewOptions' => ['label' => '<i class="glyphicon glyphicon-pencil edit-today"></i>'],
                    ],
                    [
                        'class' => 'kartik\grid\ActionColumn',
                        'header' => 'Delete',
                        'template' => '{delete}',
                        'deleteOptions' => ['label' => '<i class="glyphicon glyphicon-trash"></i>'],
                        'deleteOptions' => ['title' => $deleteTip, 'data-toggle' => 'tooltip', 'data-confirm' => $deleteMsg],
                    ],
                    
                    
                ],
            ]);
            ?>
            <?php Pjax::end(); ?>
        </div>
        <div class="box-footer clearfix">
<!--                                    <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>-->
        </div>
    </div>

</div>
