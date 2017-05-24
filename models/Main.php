<?php

namespace tikaraj21\newsletter\models;

use Yii;
use yii\base\Model;

/**
 * This is the model class for table "test_mail_queue".
 *
 * @property integer $id
 * @property string $from
 * @property string $to
 * @property string $cc
 * @property string $bcc
 * @property string $subject
 * @property string $html_body
 * @property string $text_body
 * @property string $attachment
 * @property string $reply_to
 * @property string $charset
 * @property string $created_at
 * @property integer $attempts
 * @property string $last_attempt_time
 * @property string $sent_time
 */
class Main extends Model
{

    public $to;
    public $from;
    public $cc;
    public $bcc;
    public $subject;
    public $text_body;
    public $attachment;
    public $to_group;
    public $cc_group;
    public $bcc_group;
    public $templates;
	public $savedtemplates;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['from', 'to', 'cc', 'bcc', 'html_body', 'text_body', 'reply_to','templates'], 'string'],
            ['to', 'match', 'pattern' => '^([a-z_A-Z.0-9-]+@[a-z-]+.[a-z]+,?)+$', 'message' => 'There is at least one invalid email'],
            ['cc', 'match', 'pattern' => '^([a-z_A-Z.0-9-]+@[a-z-]+.[a-z]+,?)+$', 'message' => 'There is at least one invalid email'],
            ['bcc', 'match', 'pattern' => '^([a-z_A-Z.0-9-]+@[a-z-]+.[a-z]+,?)+$', 'message' => 'There is at least one invalid email'],
            [['subject'],'required'],
			['savedtemplates','safe'],
            [['to_group','cc_group','bcc_group'],'integer'],
        ];
    }
    public function customValidate($attribute, $params){
        if(true){
            $this->addError($attribute, 'Incorrect username or password.');
        }
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'from' => 'From',
            'to' => 'To',
            'cc' => 'Cc',
            'bcc' => 'Bcc',
            'subject' => 'Subject',
            'html_body' => 'Html Body',
            'text_body' => 'Message',
            'attachment' => 'Attachment',
            'reply_to' => 'Reply To',
            'charset' => 'Charset',
            'created_at' => 'Created At',
            'attempts' => 'Attempt',
            'last_attempt_time' => 'Last Attempt Time',
            'sent_time' => 'Sent Time',
			'savedtemplates' => 'Saved Mail Template'
        ];
    }
}
