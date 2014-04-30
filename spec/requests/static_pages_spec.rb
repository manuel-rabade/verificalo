# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'visit home' do
  before { visit root_path }
  
  subject { page }

  it { should have_title('Verifícalo') }
  
  describe 'navbar' do
    it { should have_link('Información', href: info_path) }
    it { should have_link('Avisos', href: avisos_path) }
    it { should have_link('Respuestas', href: respuestas_path) }
  end
  
  describe 'jumbotron' do
    it { should have_content('Conozca sus obligaciones como automovilista particular de la Ciudad de México') }
    it { should have_field('plate') }
    it { should have_button('Consulta') }
  end
  
  describe 'grid' do
    it { should have_link('Suscribirse', href: avisos_path) }
    it { should have_link('Preguntar', href: respuestas_path) }
  end

end
