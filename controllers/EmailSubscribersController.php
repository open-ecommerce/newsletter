<?php

namespace vendor\tikaraj21\newsletter\controllers;

use Yii;
use vendor\tikaraj21\newsletter\models\EmailSubscribers;
use vendor\tikaraj21\newsletter\models\EmailSubscribersSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\ForbiddenHttpException;

/**
 * EmailSubscribersController implements the CRUD actions for EmailSubscribers model.
 */
class EmailSubscribersController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
            'access'=>[
                                'class'=>AccessControl::classname(),
                                'only'=>['index','create','update','delete'],
                                'rules'=>[
                                            [
                                                'allow'=>true,
                                                'roles'=>['@']
                                            ],
                                ]
                    ]
        ];
    }

    /**
     * Lists all EmailSubscribers models.
     * @return mixed
     */
    public function actionIndex($group_id)
    {
       if(Yii::$app->user->can('/*')){
            $searchModel = new EmailSubscribersSearch();
            $dataProvider = $searchModel->search(Yii::$app->request->queryParams,$group_id);

            return $this->render('index', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
                'group_id'=>$group_id
            ]);
       }
       else{
           throw new ForbiddenHttpException;
       }
       
        
    }

    /**
     * Displays a single EmailSubscribers model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id,$group_id)
    {
        if(Yii::$app->user->can('/*')){
            return $this->render('view', [
            'model' => $this->findModel($id),
            'group_id'=>$group_id
            ]);
        }
        else{
            throw new ForbiddenHttpException;
        }
        
    }

    /**
     * Creates a new EmailSubscribers model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($group_id)
    {
        if(Yii::$app->user->can('/*')){
            $model = new EmailSubscribers();
            if ($model->load(Yii::$app->request->post())) {
                $model->group_id = $group_id;
                $model->save();
                return $this->redirect(['index', 'group_id' =>$group_id]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                    'group_id'=>$group_id
                ]);
            }
        }
        else{
            throw new ForbiddenHttpException;
        }
    }

    /**
     * Updates an existing EmailSubscribers model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id,$group_id)
    {
         if(Yii::$app->user->can('/*')){
                $model = $this->findModel($id);
                if ($model->load(Yii::$app->request->post())) {
                   $model->group_id = $group_id;
                    $model->save();
                    return $this->redirect(['index', 'group_id' =>$group_id]);
                } else {
                    return $this->render('update', [
                        'model' => $model,
                        'group_id'=>$group_id
                    ]);
                }
         }
         else{
            throw new ForbiddenHttpException;
        }
        
    }

    /**
     * Deletes an existing EmailSubscribers model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id,$group_id)
    {
      if(Yii::$app->user->can('/*')){
          $this->findModel($id)->delete();

         return $this->redirect(['index', 'group_id' =>$group_id]);
      }
      else{
            throw new ForbiddenHttpException;
        }
        
    }

    /**
     * Finds the EmailSubscribers model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return EmailSubscribers the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = EmailSubscribers::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
