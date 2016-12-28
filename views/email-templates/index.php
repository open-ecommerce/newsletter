<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EmailTemplatesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Email Templates';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="email-templates-index" style="margin-top: 10px;">

     <!-- quick email widget -->
     <div class="box box-info">
                                <div class="box-header" style="border-bottom: 1px solid #00c0ef;">
                                    <i class="fa fa-envelope" style="padding: 10px 0px 10px 10px;"></i>
                                    <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                                    
                                </div>
                                <div class="box-body">
                                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                                        <p>
                                            <?= Html::a('Create Email Templates', ['create'], ['class' => 'btn btn-success']) ?>
                                        </p>

                                        <?php Pjax::begin();?>
                                        <?= GridView::widget([
                                            'dataProvider' => $dataProvider,
                                            'filterModel' => $searchModel,
                                            'columns' => [
                                                ['class' => 'yii\grid\SerialColumn',
                                                  'header'=>'<span style="color:#3c8dbc" title="Serail Number">S.N.</span>'   
                                                 ],

                                                //'template_id',
                                                //'template_name',
                                                [
                                                    'attribute'=>'template_name',
                                                     'filterInputOptions'=>[
                                                                                'class'=>'form-control',
                                                                                'placeholder'=>'Search with template name'
                                                                           ]
                                                ],
                                                //'template_body:html',
                                                [
                                                    'attribute'=>'template_body',
                                                    'format'=>'html',
                                                     'filterInputOptions'=>[
                                                                                'class'=>'form-control',
                                                                                'placeholder'=>'Search with template content'
                                                                           ]
                                                ],
                                                //'template_description:ntext',

                                                ['class' => 'yii\grid\ActionColumn',
                                                     'header'=>'<span style="color:#3c8dbc">Action</span>'
                                                ],
                                            ],
                                        ]); ?>
                                    <?php Pjax::end();?>
                                </div>
                                <div class="box-footer clearfix">
<!--                                    <button class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>-->
                                </div>
                            </div>
    
</div>
