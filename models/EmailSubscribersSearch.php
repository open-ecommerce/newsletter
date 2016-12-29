<?php

namespace tikaraj21\newsletter\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use tikaraj21\newsletter\models\EmailSubscribers;

/**
 * EmailSubscribersSearch represents the model behind the search form about `app\models\EmailSubscribers`.
 */
class EmailSubscribersSearch extends EmailSubscribers
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['subscriber_id', 'group_id'], 'integer'],
            [['full_name', 'subscriber_email', 'subscriber_details'], 'safe'],
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
    public function search($params,$group_id)
    {
        $query = EmailSubscribers::find()->where(['group_id'=>$group_id]);

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
            'subscriber_id' => $this->subscriber_id,
            'group_id' => $this->group_id,
        ]);
       
        $query->andFilterWhere(['like', 'full_name', trim ($this->full_name)])
            ->andFilterWhere(['like', 'subscriber_email', trim ($this->subscriber_email)])
            ->andFilterWhere(['like', 'subscriber_details', trim ($this->subscriber_details)]);

        return $dataProvider;
    }
}
