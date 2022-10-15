# == Schema Information
#
# Table name: act_as_subscriptable_subscriptions
#
#  id                   :integer          not null, primary key
#  subscriptable_type   :string
#  subscriptable_id     :integer
#  subscriber_type      :string
#  subscriber_id        :integer
#  title                :string
#  description          :text
#  period_type          :integer          default("years")
#  period_point         :integer          default(1)
#  amount_cents         :integer          default(0), not null
#  amount_currency      :string           default("USD"), not null
#  grace_period_in_days :integer          default(0)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
FactoryBot.define do
  factory :subscription, class: 'ActAsSubscriptable::Subscription' do
    title { 'title' }
    description { 'description' }
  end
end
