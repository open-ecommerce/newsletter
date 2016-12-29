<?php

namespace vendor\tikaraj21\newsletter\models;

use Yii;

/**
 * This is the model class for table "test_mailsetting".
 *
 * @property integer $setting_id
 * @property string $setting_name
 * @property string $setting_code
 * @property string $setting_value
 */
class Mailsetting extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_mailsetting';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['setting_name', 'setting_code', 'setting_value'], 'required'],
            [['setting_name', 'setting_code', 'setting_value'], 'string', 'max' =>255],
            [['setting_value'], 'string', 'max' =>90,'on'=>['mail_type','imap_path']],
            [['setting_value'], 'integer','on'=>'reload'],
            [['setting_value'], 'integer','on'=>'no_of_mail'],
            [['setting_value'],'match', 'pattern' => '/^[0-9]+\-bit$/', 'message' => 'Invalid input.','on'=>'encode_bit'],
            [['setting_value'], 'string', 'max' => 100,'on'=>'host'],
            [['setting_value'], 'string', 'max' => 255,'on'=>'pw'],
            [['setting_value'], 'string', 'max' => 255,'on'=>'enc'],
            [['setting_value'], 'integer','on'=>'port'],
            [['setting_value'], 'email','on'=>['from','reply_to','return_path','uname']],
            [['setting_value'], 'email','on'=>['from','reply_to','return_path','uname']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        switch( $this->getScenario() )
            {
                case 'mail_type':
                    return [
                                'setting_value' => 'Mail Type',
                            ];
                    break;
                case 'reload':
                    return [
                                'setting_value' => 'Page Reload Interval',
                            ];
                    break;
                case 'no_of_mail':
                    return [
                                'setting_value' => 'No of mail at a time',
                            ];
                    break;
                case 'encode_bit':
                    return [
                                'setting_value' => 'Mail encoding bit',
                            ];
                    break;
                case 'imap_path':
                    return [
                                'setting_value' => 'Imap Path',
                            ];
                    break;
                case 'host':
                    return [
                                'setting_value' => 'Host Name',
                            ];
                    break;
                 case 'uname':
                    return [
                                'setting_value' => 'Username',
                            ];
                    break;
                case 'pw':
                    return [
                                'setting_value' => 'Password',
                            ];
                    break;
                case 'enc':
                    return [
                                'setting_value' => 'Encription Type',
                            ];
                    break;
                case 'port':
                    return [
                                'setting_value' => 'Port No',
                            ];
                    break;
                case 'from':
                    return [
                                'setting_value' => 'From',
                            ];
                    break;
                case 'reply_to':
                    return [
                                'setting_value' => 'Reply To',
                            ];
                    break;
                case 'return_path':
                    return [
                                'setting_value' => 'Manager Email',
                            ];
                    break;
              default:
                    return [
                            'setting_id' => 'Setting ID',
                            'setting_name' => 'Setting Name',
                            'setting_code' => 'Setting Code',
                            'setting_value' => 'Setting Value',
                        ];
            }
        
    }
    public static function getData($code){
        $model = self::findOne(['setting_code' => $code]);
        
        return $model['setting_value'];
    }
}
