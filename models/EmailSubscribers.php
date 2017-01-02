<?php

namespace tikaraj21\newsletter\models;

use Yii;

/**
 * This is the model class for table "test_email_subscribers".
 *
 * @property integer $subscriber_id
 * @property string $full_name
 * @property string $subscriber_email
 * @property string $subscriber_details
 * @property integer $group_id
 *
 * @property Group $group
 */
class EmailSubscribers extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%email_subscribers}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['subscriber_email'], 'required'],
            [['subscriber_details'], 'string'],
            [['group_id','staff_id'], 'integer'],
            [['full_name'], 'string', 'max' => 100],
            [['subscriber_email'], 'string', 'max' => 40],
            [['subscriber_email'],'email']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'subscriber_id' => 'Subscriber ID',
            'full_name' => 'Full Name',
            'subscriber_email' => 'Subscriber Email',
            'subscriber_details' => 'Subscriber Details',
            'group_id' => 'Group ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGroup()
    {
        return $this->hasOne(Group::className(), ['group_id' => 'group_id']);
    }
}
