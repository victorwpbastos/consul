section "Creating header and cards for the homepage" do

  def create_image_attachment(type)
    {
      cached_attachment: Rails.root.join("db/dev_seeds/images/#{type}_background.jpg"),
      title: "#{type}_background.jpg",
      user: User.first
    }
  end

  Widget::Card.create!(
    title: 'PARTICIPA SOROCABA',
    description: 'Todos decidem o que é de todos.',
    link_text: 'Mais informações',
    link_url: 'help_path',
    label: '',
    header: TRUE,
    image_attributes: create_image_attachment('header')
  )

  Widget::Card.create!(
    title: 'Como orçamentos participativos funcionam?',
    description: " Orçamentos participativos permitem que os cidadãos proponham e decidam diretamente como gastar parte do orçamento público, com monitoramento e avaliação rigorosos das propostas pelo governo. Máxima eficácia e controle para a satisfação de todos.",
    link_text: 'Mais sobre orçamentos participativos',
    link_url: 'https://youtu.be/igQ8KGZdk9c',
    label: 'Orçamento participativo',
    header: FALSE,
    image_attributes: create_image_attachment('budget')
  )
end
