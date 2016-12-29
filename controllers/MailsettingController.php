<?php

namespace vendor\tikaraj21\newsletter\controllers;

use Yii;
use vendor\tikaraj21\newsletter\models\Mailsetting;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\ForbiddenHttpException;

/**
 * AutomailsettingController implements the CRUD actions for Automailsetting model.
 */
class MailsettingController extends Controller
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
                                'only'=>['create','update','delete'],
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
     * Lists all Automailsetting models.
     * @return mixed
     */
    public function actionIndex()
    { 
        echo 'Only update date can be used.';
    }

    /**
     * Displays a single Automailsetting model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Automailsetting model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if(Yii::$app->user->can('/*')){
                $model = new Automailsetting();

                if ($model->load(Yii::$app->request->post()) && $model->save()) {
                    return $this->redirect(['view', 'id' => $model->setting_id]);
                } else {
                    return $this->render('create', [
                        'model' => $model,
                    ]);
                }
       }
       else{
           throw new ForbiddenHttpException;
       }
        
    }

    /**
     * Updates an existing Automailsetting model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate()
    {
        if(Yii::$app->user->can('/*')){
                $sett_mail_type = Mailsetting::findOne(1);
                $sett_mail_type->scenario = 'mail_type';

                $sett_re_intval = Mailsetting::findOne(2);
                $sett_re_intval->scenario = 'reload';

                $sett_no_mail = Mailsetting::findOne(3);
                $sett_no_mail->scenario = 'no_of_mail';

                $mail_encode_bit = Mailsetting::findOne(4);
                $mail_encode_bit->scenario = 'encode_bit';

                $sett_host = Mailsetting::findOne(5);
                $sett_host->scenario = 'host';

                $sett_uname = Mailsetting::findOne(6);
                $sett_uname->scenario = 'uname';

                $sett_pw = Mailsetting::findOne(7);
                $sett_pw->scenario = 'pw';

                $sett_enc_type = Mailsetting::findOne(8);
                $sett_enc_type->scenario = 'enc';

                $sett_port = Mailsetting::findOne(9);
                $sett_port->scenario = 'port';

                $from = Mailsetting::findOne(10);
                $from->scenario = 'from';

                $reply_to = Mailsetting::findOne(11);
                $reply_to->scenario = 'reply_to';

                $return_path = Mailsetting::findOne(12);
                $return_path->scenario = 'return_path';

                $email_setting = [
                                'sett_mail_type' => $sett_mail_type,
                                'sett_re_intval' => $sett_re_intval,
                                'sett_no_mail' => $sett_no_mail,
                                'mail_encode_bit' => $mail_encode_bit,
                                'sett_host' => $sett_host,
                                'sett_uname' => $sett_uname,
                                'sett_pw' => $sett_pw,
                                'sett_enc_type' => $sett_enc_type,
                                'sett_port' => $sett_port,
                                'from' => $from,
                                'reply_to' => $reply_to,
                                'return_path' => $return_path

                ];

                if ($sett_re_intval->load(Yii::$app->request->post()) 
                    && $sett_no_mail->load(Yii::$app->request->post())
                    && $sett_mail_type->load(Yii::$app->request->post())
                    && $sett_host->load(Yii::$app->request->post())
                    && $sett_uname->load(Yii::$app->request->post())
                    && $sett_pw->load(Yii::$app->request->post())
                    && $sett_enc_type->load(Yii::$app->request->post())
                    && $sett_port->load(Yii::$app->request->post())
                    && $from->load(Yii::$app->request->post())
                    && $reply_to->load(Yii::$app->request->post())
                    && $return_path->load(Yii::$app->request->post())
                    ) {
                    if($sett_re_intval->save()
                      && $sett_no_mail->save()
                      && $sett_mail_type->save() 
                      && $sett_host->save() 
                      && $sett_uname->save()
                      && $sett_pw->save()
                      && $sett_enc_type->save()
                      && $sett_port->save()
                      && $from->save()
                      && $reply_to->save()
                      && $return_path->save()
                      ){
                        Yii::$app->session->setFlash('success','Successfully Changed'); //for success.
                    }
                    else {
                        Yii::$app->session->setFlash('danger','Not Changed'); //for for wrong event.
                    }

                    return $this->redirect(['update']);
                }
                else {
                    return $this->render('update', [
                            'email_setting'=>$email_setting,
                            'sett_mail_type'=>$sett_mail_type,
                            'sett_re_intval' => $sett_re_intval,
                            'sett_no_mail' => $sett_no_mail,
                            'mail_encode_bit'=>$mail_encode_bit,

                            'sett_host'=>$sett_host,
                            'sett_uname'=>$sett_uname,
                            'sett_pw'=>$sett_pw,
                            'sett_enc_type'=>$sett_enc_type,
                            'sett_port'=>$sett_port,

                            'from'=>$from,
                            'reply_to'=>$reply_to,
                            'return_path'=>$return_path
                    ]);
                }
        }
        else {
                 throw new ForbiddenHttpException;
        }
        if(Yii::$app->user->can('/*')){
            
        }
        else {
                 throw new ForbiddenHttpException;
        }
        
    }

    /**
     * Deletes an existing Automailsetting model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
          if(Yii::$app->user->can('/*')){
                $this->findModel($id)->delete();

                return $this->redirect(['index']);
          }
          else{
              throw  new ForbiddenHttpException;
          }
        
    }

    /**
     * Finds the Automailsetting model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Automailsetting the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Automailsetting::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
