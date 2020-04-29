3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts '3 Topics Created'

10.times do |blog|
 Blog.create!(
  title: "Blog Number #{blog + 1}",
  body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
  topic_id: Topic.last.id
)
end

puts '10 Blog Posts Created'

5.times do |skill|
  Skill.create!(
    title: "Skill #{skill + 1}",
    percent_utilized: 20
  )
end

puts '5 Skills Created'

8.times do |portfolio_item|
  Portfolio.create!(
    title: "PortFolio #{portfolio_item + 1}",
    subtitle: "Ruby on Rails",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    main_image: 'https://place-hold.it/550',
    thumbnail_image: 'https://place-hold.it/100'
  )
end

puts '8 Portfolio Items Created'

1.times do |portfolio_item|
  Portfolio.create!(
    title: "PortFolio #{portfolio_item + 1}",
    subtitle: "VueJS",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    main_image: 'https://place-hold.it/550',
    thumbnail_image: 'https://place-hold.it/100'
  )
end

puts '1 Portfolio Items Created'


3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technolog #{ technology + 1 }"
  )
end

puts '3 Portfolio Items Created'

1.times do |user|
  User.create!(
    email: 'khanriza@gmail.com',
    password: 'qwerty',
    name: 'khanr',
    roles: 'site_admin'
  )
end

puts '1 User Created with Site Admin Role'