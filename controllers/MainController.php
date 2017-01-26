<?php
namespace tikaraj21\newsletter\controllers;

use Yii;
use tikaraj21\newsletter\models\Main;
use tikaraj21\newsletter\models\MainSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use tikaraj21\newsletter\models\EmailSubscribers;
use tikaraj21\newsletter\models\EmailTemplates;
use tikaraj21\newsletter\models\MailStore;
use yii\filters\AccessControl;
use tikaraj21\newsletter\models\Mailsetting;
use tikaraj21\newsletter\models\Setting;
use tikaraj21\newsletter\models\MailStoreSearch;
use tikaraj21\newsletter\models\SavedEmailTemplates;

/**

 * MainController implements the CRUD actions for Main model.

 */

class MainController extends Controller

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
                            'only'=>['create','update','delete','createsend','mailcreate','sending','delete','update','view'],
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

     * Lists all Main models.

     * @return mixed

     */

    public function actionIndex()

    {

        echo 'Index action has not used.';

    }



    /**

     * Displays a single Main model.

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

     * Creates a new Main model.

     * If creation is successful, the browser will be redirected to the 'view' page.

     * @return mixed

     */

    public function actionCreatensend()

    {

        $model = new Main();



        if ($model->load(Yii::$app->request->post())) {
            
            
                /*Starting configuration for smtp or other type*/
            
                Yii::$app->email->setMailType(Mailsetting::getData('GE_MAIL_TYPE'));

                //Passing arguement for Host setting
                Yii::$app->email->setHost(Mailsetting::getData('GE_SERVER_HOST'));

                //Passing arguement for Username setting
                Yii::$app->email->setUname(Mailsetting::getData('GE_SERVER_USERNAME'));

                //Passing arguement for Password setting
                $pass = Setting::decrypt(Mailsetting::getData('GE_SERVER_PASSWORD'), 'bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3');
                Yii::$app->email->setPassd($pass);

                //Passing arguement for Encryption Type setting
                Yii::$app->email->setEncType(Mailsetting::getData('GE_SERVER_ENC_TYPE'));

                
                //Passing arguement for Port setting
                Yii::$app->email->setServerPort(Mailsetting::getData('GE_SERVER_PORT'));

                /*Ending configuration for smtp or other type*/
                
                
                

                Yii::$app->email->configSet();//note that email setting is completed only when execute this function

               

                $from = Mailsetting::getData('GE_PHP_FROM');

                $to = $model->to;

                $subject = $model->subject;

                

                $cc = $model->cc;

                $bcc = $model->bcc;
                
                $to_subscribers = EmailSubscribers::find()->select(['full_name','subscriber_email'])->where(['group_id'=>$model->to_group])->all();
                $cc_subscribers = EmailSubscribers::find()->select(['full_name','subscriber_email'])->where(['group_id'=>$model->cc_group])->all();
                $bcc_subscribers = EmailSubscribers::find()->select(['full_name','subscriber_email'])->where(['group_id'=>$model->bcc_group])->all();
                $email_template = EmailTemplates::find()->select(['template_body'])->where(['template_id'=>$model->templates])->all();
                foreach ($to_subscribers as $gto){
                    $to .= ','.$gto['subscriber_email'];
                    
                }
                
                foreach ($cc_subscribers as $gcc){
                    $cc .= ','.$gcc['subscriber_email'];
                    
                }
                
                foreach ($bcc_subscribers as $gbcc){
                    $bcc .= ','.$gbcc['subscriber_email'];
                }
                $to=str_replace(',,',',', $to);
                $to = trim($to, ','); 
                $cc=str_replace(',,',',', $cc);
                $cc = trim($cc, ','); 
                $bcc=str_replace(',,',',', $bcc);
                $bcc = trim($bcc, ','); 
                
                $message_body =$email_template[0]['template_body'];
                $message_body .= $model->text_body;
                /*Assigning the files for attachments*/

                $attachment = UploadedFile::getInstances($model,'attachment');
                
                
                // Syntax Yii::$app->email->SendMail($from,$to,$subject,$message_body,$cc,$bcc,$attachment);
                // It is important that default mail type is PHP mail
                // If we want to use PHP mail ,we can call only the function 
                // "Yii::$app->email->SendMail($from,$to,$subject,$message_body,$cc,$bcc,$attachment);"
                // If we want to use Smtp mail or other type, we can call the function
                // "Yii::$app->email->SendMail($from,$to,$subject,$message_body,$cc,$bcc,$attachment);"
                // only after the six setting for and running Yii::$app->email->configSet();

               if (Yii::$app->email->SendMail($from,$to,$subject,$message_body,$cc,$bcc,$attachment)){
                    Yii::$app->session->setFlash('success','Email sent.'); //for for wrong event.
                    return $this->redirect(['create']);
                }
                else {
                    Yii::$app->session->setFlash('danger','Email send not success.'); //for for wrong event.
                    return $this->redirect(['create']);
                }
        }

        else{

    

            return $this->render('create', [

                'model' => $model,

            ]);

        }

    }

    public function actionMailcreate()

    {
                $model = new Main();
                if ($model->load(Yii::$app->request->post())) {


                        $setting =Mailsetting::find()->select(['setting_value'])->all();

                        $to = $model->to;

                        $subject = $model->subject;

                        

                        $cc = $model->cc;

                        $bcc = $model->bcc;

                        //finding the to-subcribers according to group id
                        $to_subscribers = EmailSubscribers::find()->select(['full_name','subscriber_email'])->where(['group_id'=>$model->to_group])->all();

                        //finding the cc-subcribers according to group id
                        $cc_subscribers = EmailSubscribers::find()->select(['full_name','subscriber_email'])->where(['group_id'=>$model->cc_group])->all();

                        //finding the bcc-subcribers according to group id
                        $bcc_subscribers = EmailSubscribers::find()->select(['full_name','subscriber_email'])->where(['group_id'=>$model->bcc_group])->all();

                        //finding the email-templates according template id
                        $email_template = EmailTemplates::find()->select(['template_body'])->where(['template_id'=>$model->templates])->all();

						 $saved_email_template = SavedEmailTemplates::find()->select(['template_body'])->where(['template_id'=>$model->savedtemplates])->all();
						 
                        foreach ($to_subscribers as $gto){
                            $to .= ','.$gto['subscriber_email'];

                        }

                        foreach ($cc_subscribers as $gcc){
                            $cc .= ','.$gcc['subscriber_email'];

                        }

                        foreach ($bcc_subscribers as $gbcc){
                            $bcc .= ','.$gbcc['subscriber_email'];
                        }

                        $to=str_replace(',,',',', $to);
                        $to = trim($to, ','); 
                        $to = explode(',', $to);
                        $cc=str_replace(',,',',', $cc);
                        $cc = trim($cc, ','); 
                        $bcc=str_replace(',,',',', $bcc);
                        $bcc = trim($bcc, ',');
                        $message_body = NULL;
                        if(isset($email_template[0])){
                         $message_body = $email_template[0]['template_body'];   
                        }
						
						 if(isset($saved_email_template[0])){
                        	$message_body = $saved_email_template[0]['template_body'];
                        }
                        $message_body .= $model->text_body;
                        //creating unique id not to delete same attachments for multiple to-subcribers assigned for email created at a time
                        $unique_id = uniqid(time());

                        /*Assigning the files for attachments*/
                        $attachment = UploadedFile::getInstances($model,'attachment');
                        if($attachment){
                                //saving attachment and storing attachment locations as array

                                $attachment_like_str =  serialize(Yii::$app->email->SaveAttach($attachment));
                            }
                        foreach ($to as $to_data){
                            $mail_store = new MailStore();
                            $mail_store->from = $setting[8]['setting_value'];
                            $mail_store->to = $to_data;
                            $mail_store->subject = $subject;
                            $mail_store->message_body = $message_body;
                            $mail_store->cc = $cc;
                            $mail_store->bcc = $bcc;
                            $mail_store->created_date = date('Y-m-d');
                            $mail_store->unique_id = $unique_id;
                            $mail_store->status = 'Queue';
                            if(isset($attachment_like_str)){
                            $mail_store->attachments = $attachment_like_str;    
                            }
                            $result = $mail_store->save();
                        } 


                      //Yii::$app->email->DeleteAttach($mail_store->attachments);
                      //

                       if ($result){
                            Yii::$app->session->setFlash('success','Successfully created.'); //for for wrong event.
                             if ($model->templates){
                            return $this->redirect(['email-templates/view','id'=>$model->templates]);
                            }
                           else {
                           	return $this->redirect(['mailcreate']);
                            }
                        }
                        else {
                            Yii::$app->session->setFlash('danger','Not created.'); //for for wrong event.
                            return $this->redirect(['mailcreate']);
                        }
                }
                else{



                    return $this->render('create', [

                        'model' => $model,

                    ]);

                }    
       
    }
    /**
     * Action for sending mail
     */
    
    public function actionSendmail() {
        
//        $setting = Mailsetting::find()->select(['setting_value'])->all();
        
                set_time_limit ( 300 );//default 5 minutes
        
                if(Yii::$app->session->get('Number Mail Send At A Time')){

                   $datas = MailStore::find()->where(['status'=>'Queue'])->limit(Yii::$app->session->get('Number Mail Send At A Time'))->all(); 
                }
                else {
                    $datas = MailStore::find()->where(['status'=>'Queue'])->limit(20)->all();//default 20 minutes
                }

                        /*Starting configuration for smtp or other type*/

                        Yii::$app->email->setMailType(Mailsetting::getData('GE_MAIL_TYPE'));

                        //Passing arguement for Host setting
                        Yii::$app->email->setHost(Mailsetting::getData('GE_SERVER_HOST'));

                        //Passing arguement for Username setting
                        Yii::$app->email->setUname(Mailsetting::getData('GE_SERVER_USERNAME'));

                        //Passing arguement for Password setting
                        $pass = Setting::decrypt(Mailsetting::getData('GE_SERVER_PASSWORD'), 'bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3');
                        Yii::$app->email->setPassd($pass);

                        //Passing arguement for Encryption Type setting
                        Yii::$app->email->setEncType(Mailsetting::getData('GE_SERVER_ENC_TYPE'));


                        //Passing arguement for Port setting
                        Yii::$app->email->setServerPort(Mailsetting::getData('GE_SERVER_PORT'));

                        /*Ending configuration for smtp or other type*/
                        Yii::$app->email->configSet();//note that email setting is completed only when execute this function

                        /*Starting configuration for php mail*/

                        //Passing arguement to set from
                        Yii::$app->email->setFrom(Mailsetting::getData('GE_PHP_FROM'));

                        //Passing arguement to set Reply To
                        Yii::$app->email->setReplyTo(Mailsetting::getData('GE_PHP_REPLY_TO'));

                        //Passing arguement to set Return Path
                        Yii::$app->email->setReturnPath(Mailsetting::getData('GE_PHP_RETURN_PATH'));


                $result = 0;
                foreach ($datas as $mails){

                    //merge field operation start

                    $name = EmailSubscribers::find()->select(['full_name'])->where(['subscriber_email'=>$mails['to']])->one();
                    if($name){
                        $mails['message_body']= str_replace('{{bent_stf}}', $name->full_name, $mails['message_body']);
                    }
                    //merge field operation end 

                    $result = Yii::$app->email->SendMail($mails['from'],$mails['to'],$mails['subject'],$mails['message_body'],$mails['cc'],$mails['bcc'],  unserialize($mails['attachments']));

                    if ($result){

                       $model = MailStore::findOne($mails['mail_id']);
                       $model->status = 'Sent';
                       $model->save();

                    }
                }



                //now deleting saved attachment created while email create
                //fetching the attachment in queue
                $datas_in_queue = MailStore::find()->select(['attachments'])->where(['status'=>'Queue'])->all();
                //preparing array for making checking easy.
                $arr_of_data_in_q =[];
                foreach ($datas_in_queue as $mails){

                    $arr_of_data_in_q[]= $mails->attachments;
                }

                foreach ($datas as $mails){
                   if(!in_array($mails['attachments'],$arr_of_data_in_q)){
                            Yii::$app->email->DeleteAttach(unserialize($mails['attachments']));
                        }
                }
                //echo $result;
                return $result;
       
    }
    
    /**
     * Action for sending mail using crome job
     */
    
    public function actionCromjobsend() {
                
                $setting = Mailsetting::find()->select(['setting_value'])->all();
                
                set_time_limit ( 300 );//default 5 minutes


                $datas = MailStore::find()->where(['status'=>'Queue'])->limit(1)->all();


                /*Starting configuration for smtp or other type*/
            
                Yii::$app->email->setMailType($setting[2]['setting_value']);

                //Passing arguement for Host setting
                Yii::$app->email->setHost($setting[3]['setting_value']);

                //Passing arguement for Username setting
                Yii::$app->email->setUname($setting[4]['setting_value']);

                //Passing arguement for Password setting
                Yii::$app->email->setPassd($setting[5]['setting_value']);

                //Passing arguement for Encryption Type setting
                Yii::$app->email->setEncType($setting[6]['setting_value']);

                
                //Passing arguement for Port setting
                Yii::$app->email->setServerPort($setting[7]['setting_value']);

                /*Ending configuration for smtp or other type*/
                Yii::$app->email->configSet();//note that email setting is completed only when execute this function
                
                /*Starting configuration for php mail*/
                
                //Passing arguement to set from
                Yii::$app->email->setFrom($setting[8]['setting_value']);

                //Passing arguement to set Reply To
                Yii::$app->email->setReplyTo($setting[9]['setting_value']);

                //Passing arguement to set Return Path
                Yii::$app->email->setReturnPath($setting[10]['setting_value']);
        
                $result = 0;
                if(isset($datas[0]['subject'])){
                    
                    $result = Yii::$app->email->SendMail($datas[0]['from'],$datas[0]['to'],$datas[0]['subject'],$datas[0]['message_body'],$datas[0]['cc'],$datas[0]['bcc'],  unserialize($datas[0]['attachments']));
                    if ($result){
                       $model = MailStore::findOne($datas[0]['mail_id']);
                       $model->status = 'Sent';

                       $model->save();
                    }
                    //now deleting saved attachment created while email create
                    //fetching the attachment in queue
                    $datas_in_queue = MailStore::find()->select(['attachments'])->where(['status'=>'Queue'])->andWhere(['attachments'=>$datas[0]['attachments']])->all();
                    if(!isset($datas_in_queue[0]['attachments'])){
                        Yii::$app->email->DeleteAttach(unserialize($datas[0]['attachments']));
                    }

                    return $result;
                }
                else {
                    return $result;
                }
       
    }
    /**
     * Action for only render view page
     */
    public function actionSending(){
    	
                    $page_reload_intval = Mailsetting::find()->select(['setting_name','setting_value'])->where(['setting_id'=>1])->all();

                    if(isset($page_reload_intval[0]['setting_value'])){
                        if($page_reload_intval[0]['setting_value']>0){
                            Yii::$app->session->set('Page Reload Interval', $page_reload_intval[0]['setting_value']);
                        }

                    }

                    $no_of_mail =Mailsetting::find()->select(['setting_name','setting_value'])->where(['setting_id'=>2])->all();
                    if(isset($no_of_mail[0]['setting_value'])){
                            if($no_of_mail[0]['setting_value']>0){
                                Yii::$app->session->set('Number Mail Send At A Time', $no_of_mail[0]['setting_value']);
                            }
                    }

                    $datas = MailStore::find()->where(['status'=>'Queue'])->count();


                    if($datas>0){

                        $this->actionSendmail();
                    }


                    $datas = $datas-Yii::$app->session->get('Number Mail Send At A Time');
                    $searchModel = new MailStoreSearch();
                    $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
                     return $this->render('sending',[
                         'datas'=>$datas,
                         'searchModel' => $searchModel,
                         'dataProvider' => $dataProvider,
                     ]);    
      

    }
    
    /**

     * Updates an existing Main model.

     * If update is successful, the browser will be redirected to the 'view' page.

     * @param integer $id

     * @return mixed

     */

    public function actionUpdate($id)

    {
        
                $model = new Main();
                if ($model->load(Yii::$app->request->post()) && $model->save()) {

                    return $this->redirect(['view', 'id' => $model->id]);

                } else {

                    return $this->render('update', [

                        'model' => $model,

                    ]);

                }
       
      

    }



    /**

     * Deletes an existing Main model.

     * If deletion is successful, the browser will be redirected to the 'index' page.

     * @param integer $id

     * @return mixed

     */

    public function actionDelete($id)

    {
            
            MailStore::findOne($id)->delete();
                return $this->redirect(['sending']);
        

    }



    /**

     * Finds the Main model based on its primary key value.

     * If the model is not found, a 404 HTTP exception will be thrown.

     * @param integer $id

     * @return Main the loaded model

     * @throws NotFoundHttpException if the model cannot be found

     */

    protected function findModel($id)

    {

        if (($model = Main::findOne($id)) !== null) {

            return $model;

        } else {

            throw new NotFoundHttpException('The requested page does not exist.');

        }

    }

}