# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

Product.create!(title: 'Build Chatbot Interactions',
  description:
  %{<p>
  <em>Responsive, Intuitive Interfaces with Ruby</em>
  The next step in the evolution of user interfaces is here.
  Chatbots let your users interact with your service in their
  own natural language. Use free and open source tools along
  with Ruby to build creative, useful, and unexpected interactions
  for users. Take advantage of the Lita framework’s step-by-step
  implementation strategy to simplify bot development and testing.
  From novices to experts, chatbots are an area in which everyone
  can participate. Exercise your creativity by creating chatbot
  skills for communicating, information, and fun.
  </p>},
  image_url: 'ruby.jpg',
  price: 20.00)

  Product.create!(title: 'Duis adipisicing esse exercitation incididunt pariatur.',
    description:
    %{<p>
    Nostrud non Lorem veniam et amet.Sint amet in elit sit ad cillum minim nostrud aliqua irure et laboris qui quis.
    Elit cillum commodo commodo enim enim sit veniam sit.Consequat reprehenderit incididunt est Lorem.
    Aute laboris nisi labore est quis deserunt aute irure in amet commodo.Sit duis cupidatat incididunt incididunt ad culpa incididunt ullamco Lorem deserunt officia cupidatat laboris.
    Excepteur non mollit sunt consectetur exercitation deserunt in incididunt id anim nulla culpa.Quis velit ut minim culpa amet.
    Magna consequat eu cillum duis incididunt amet ex nostrud.Ipsum ut culpa enim ipsum ullamco eiusmod non ut sit aute sunt adipisicing tempor consequat.
    Aliqua occaecat mollit tempor pariatur et duis ut.Ullamco do nulla ad adipisicing eiusmod.
    Minim ut occaecat duis proident officia sunt exercitation.
    </p>},
    image_url: 'placeholder.jpg',
    price: 20.00)