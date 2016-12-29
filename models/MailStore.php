<?php

namespace tikaraj21\newsletter\models;

use Yii;

/**
 * This is the model class for table "test_mail_store".
 *
 * @property integer $mail_id
 * @property string $to
 * @property string $from
 * @property string $subject
 * @property string $message_body
 * @property string $cc
 * @property string $bcc
 * @property string $attachments
 * @property string $created_date
 * @property string $status
 */
class MailStore extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_mail_store';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['to', 'from', 'subject','created_date', 'status'], 'required'],
            [['to', 'subject', 'message_body', 'cc', 'bcc', 'attachments', 'status'], 'string'],
            [['created_date'], 'safe'],
            [['from'], 'string', 'max' => 255],
            [['unique_id'],'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'mail_id' => 'Mail ID',
            'to' => 'To',
            'from' => 'From',
            'subject' => 'Subject',
            'message_body' => 'Message Body',
            'cc' => 'Cc',
            'bcc' => 'Bcc',
            'attachments' => 'Attachments',
            'created_date' => 'Created Date',
            'status' => 'Status',
            'unique_id'=>'Unique Id'
        ];
    }
}
