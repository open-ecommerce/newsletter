<?php

namespace tikaraj21\newsletter\models;

use Yii;

/**
 * This is the model class for table "test_group".
 *
 * @property integer $group_id
 * @property string $group_name
 * @property string $group_description
 */
class Group extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%group}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['group_name'], 'required'],
            [['group_description'], 'string'],
            [['group_name'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'group_id' => 'Group ID',
            'group_name' => 'Group Name',
            'group_description' => 'Group Description',
        ];
    }
}
