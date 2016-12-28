<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel app\models\GroupSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Groups';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="group-index" style="margin-top: 10px">
<!-- quick email widget -->
                            <div class="box box-info">
                                <div class="box-header" style="border-bottom: 1px solid #00c0ef">
                                    <i class="fa fa-group" style="padding: 10px 0px 10px 10px;"></i>
                                    <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
                                    
                                </div>
                                <div class="box-body">
                                        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

                                        <p>
                                            <?= Html::a('Create Group', ['create'], ['class' => 'btn btn-success']) ?>
                                        </p>
                                        <?php Pjax::begin(['id'=>'group_index']);?>
                                        <?= GridView::widget([
                                            'dataProvider' => $dataProvider,
                                            'filterModel' => $searchModel,
                                            'columns' => [
                                                ['class' => 'yii\grid\SerialColumn',
                                                     'header'=>'<span style="color:#3c8dbc" title="Serail Number">S.N.</span>'
                                                    ],

                                                //'group_id',
                                                //'group_name',
                                                [
                                                                                    'attribute'=>'group_name',
                                                                                     'filterInputOptions'=>[
                                                                                                                                'class'=>'form-control',
                                                                                                                                'placeholder'=>'Search with group name'
                                                                                                                   ]
                                                 ],
                                                //'group_description:ntext',
                                                [
                                                                                    'attribute'=>'group_description',
                                                                                     'filterInputOptions'=>[
                                                                                                                                'class'=>'form-control',
                                                                                                                                'placeholder'=>'Search with group description'
                                                                                                                   ]
                                                 ],

                                                ['class' => 'yii\grid\ActionColumn',
                                                    'header'=>'<span style="color:#3c8dbc">Action</span>',
                                                     'template'=>'{email-subscribers/index}{update}{delete}',
                                                                           'buttons'=>[
                                                                                              'email-subscribers/index'=>function($url,$model)

                                                                                                            {
                                                                                                              $url=str_replace('id','group_id', $url );

                                                                                                                 return Html::a( '<span class="glyphicon glyphicon-eye-open"></span>',$url,['title'=>  Yii::t('app','View')]);
                                                                                                            },
                                                                                             'update'=>function($url,$model)

                                                                                                            {

                                                                                                                 return Html::a( '<span class="glyphicon glyphicon-pencil"></span>',$url,['title'=>  Yii::t('app','Edit')]);
                                                                                                            },
                                                                                              'delete'=>  function($url,$model)

                                                                                                            {
                                                                                                                 return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url,['title'=>  Yii::t('app','Delete'),'data-method'=>'post']);
                                                                                                             }
                                                                                          ]
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
