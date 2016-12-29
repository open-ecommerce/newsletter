<?php

namespace tikaraj21\newsletter\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use tikaraj21\newsletter\models\EmailTemplates;

/**
 * EmailTemplatesSearch represents the model behind the search form about `app\models\EmailTemplates`.
 */
class EmailTemplatesSearch extends EmailTemplates
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['template_id'], 'integer'],
            [['template_name', 'template_body', 'template_description'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        
        $query = EmailTemplates::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'template_id' => $this->template_id,
        ]);

        $query->andFilterWhere(['like', 'template_name', trim ($this->template_name)])
            ->andFilterWhere(['like', 'template_body', trim ($this->template_body)])
            ->andFilterWhere(['like', 'template_description', trim ($this->template_description)]);

        return $dataProvider;
    }
}
