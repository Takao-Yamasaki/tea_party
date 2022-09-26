module ApplicationHelper
  def default_meta_tags
    {
      site: 'Tearip(ティリップ)',
      title: 'Tearip(ティリップ)',
      reverse: true,
      separator: '|',
      description: 'Tearip(ティリップ)は、お茶を手摘みして飲んでもらうという”旅”を通して、お茶好きになったほしいという思いを込めたお茶摘み体験に特化した予約サービスです。',
      keywords: '旅行, お茶, 緑茶, 紅茶, 体験, お茶摘み',
      canonical: request.original_url,
      noindex: !Rails.env.production?,
      icon: [
        {href: image_url('favicon.ico')}
      ],
      og: {
        site_name: 'Tearip(ティリップ)',
        title: 'Tearip(ティリップ)',
        description: 'Tearip(ティリップ)は、お茶を手摘みして飲んでもらうという”旅”を通して、お茶好きになったほしいという思いを込めたお茶摘み体験に特化した予約サービスです。',
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP'
      }
    }
  end
end
