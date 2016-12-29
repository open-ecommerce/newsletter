<?php

namespace tikaraj21\newsletter\models;

use Yii;

/**
 * This is the model class for table "test_email_templates".
 *
 * @property integer $template_id
 * @property string $template_name
 * @property string $template_body
 * @property string $template_description
 */
class EmailTemplates extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_email_templates';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['template_name', 'template_body'], 'required'],
            [['template_body', 'template_description'], 'string'],
            [['template_name'], 'string', 'max' => 80]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'template_id' => 'Template ID',
            'template_name' => 'Template Name',
            'template_body' => 'Template Body',
            'template_description' => 'Template Description',
        ];
    }
}
