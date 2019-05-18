# frozen_string_literal: true

module ApplicationHelper
  def link_to_show(url, html_options = {})
    html_options.reverse_merge!(class: 'btn btn-info btn-sm', data: { tooltip: true, placement: 'top', animation: true }, title: t('helpers.links.show'))
    link_to content_tag(:i, nil, class: 'fa fa-info-circle'), url, html_options
  end

  def link_to_delete(url, html_options = {})
    html_options.reverse_merge!(method: :delete, class: 'btn btn-sm btn-danger', data: { tooltip: true, confirm: t('helpers.links.confirm'), placement: 'top', animation: true }, title: t('helpers.links.destroy'))
    link_to content_tag(:i, nil, class: 'fa fa-trash'), url, html_options
  end

  def link_to_index(url, html_options = {})
    html_options.reverse_merge!(class: 'btn btn-default btn-sm', data: { tooltip: true, placement: 'top', animation: true }, title: t('helpers.links.index'))
    link_to t('helpers.links.index'), url, html_options
  end

  def link_to_edit(url, html_options = {})
    html_options.reverse_merge!(class: 'btn btn-default btn-sm', data: { tooltip: true, placement: 'top', animation: true }, title: t('helpers.links.edit'))
    link_to content_tag(:i, nil, class: 'fa fa-edit'), url, html_options
  end

  def link_to_new(url, html_options = {})
    html_options.reverse_merge!(class: 'btn btn-success btn-sm', data: { tooltip: true, placement: 'top', animation: true }, title: t('helpers.links.new'))
    link_to t('helpers.links.new'), url, html_options
  end

  def link_to_index_new(url, html_options = {})
    html_options.reverse_merge!(class: 'btn btn-primary btn-sm', data: { tooltip: true, placement: 'top', animation: true }, title: 'helpers.links.new')
    link_to content_tag(:i, nil, class: 'fa fa-plus') << ' Novo', url, html_options
  end

  def link_to_cancel(url, html_options = {})
    html_options.reverse_merge!(class: 'btn btn-default btn-xs', data: { tooltip: true, placement: 'top', animation: true })
    link_to t('helpers.links.cancel'), url, html_options
  end

  def error_messages_for(resource)
    render 'layouts/error_messages', resource: resource
  end

  def sigla_sistema
    'SIGI'
  end

  def nome_sistema
    ".::#{sigla_sistema} - SEAS::."
  end

  def current_class?(path)
    return 'active' if request.path.eql? path
    ''
  end

  def is_active_controller(controller_name, class_name = nil)
    if params[:controller] == controller_name
      class_name.nil? ? 'active' : class_name
    end
  end

  def is_active_action(action_name)
    params[:action] == action_name ? 'active' : nil
  end

  def is_active_controller_prefix?(controller_name)
    params[:controller].split('_').first.eql?(controller_name) ? 'active' : nil
  end

  def is_active_module_prefix?(prefix_name)
    params[:controller].split('/').first.eql?(prefix_name)
  end

  def show_active(active)
    active ? 'active' : nil
  end

  def prontuario_mask(jovem_id)
    jovem_id.to_s.rjust(6, '0')
  end

  def formatar_cpf(cpf)
    cpf.gsub(/\A(\d{3})(\d{3})(\d{3})(\d{2})\Z/, "\\1.\\2.\\3-\\4")
  end
  
end
