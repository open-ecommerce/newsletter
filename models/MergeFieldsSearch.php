<?php

namespace vendor\tikaraj21\newsletter\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use vendor\tikaraj21\newsletter\models\MergeFields;

/**
 * MergeFieldsSearch represents the model behind the search form about `app\modules\newsletter\models\MergeFields`.
 */
class MergeFieldsSearch extends MergeFields
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['merge_field_id'], 'integer'],
            [['merge_field_name', 'merge_field_description','merge_field_code'], 'safe'],
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
        $query = MergeFields::find();

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
            'merge_field_id' => $this->merge_field_id,
        ]);

        $query->andFilterWhere(['like', 'merge_field_name', $this->merge_field_name])
                ->andFilterWhere(['like', 'merge_field_code', $this->merge_field_code])
            ->andFilterWhere(['like', 'merge_field_description', $this->merge_field_description]);

        return $dataProvider;
    }
}
