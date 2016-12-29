<?php

namespace vendor\tikaraj21\newsletter\models;

use Yii;

/**
 * This is the model class for table "test_merge_fields".
 *
 * @property integer $merge_field_id
 * @property string $merge_field_name
 * @property string $merge_field_description
 */
class MergeFields extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_merge_fields';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['merge_field_name', 'merge_field_description','merge_field_code'], 'required'],
            [['merge_field_description'], 'string'],
            [['merge_field_name'], 'string', 'max' => 40],
            [['merge_field_code'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'merge_field_id' => 'Merge Field ID',
            'merge_field_name' => 'Merge Field Name',
            'merge_field_description' => 'Merge Field Description',
        ];
    }
}
