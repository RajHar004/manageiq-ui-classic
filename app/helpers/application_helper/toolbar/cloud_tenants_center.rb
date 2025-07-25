class ApplicationHelper::Toolbar::CloudTenantCenter < ApplicationHelper::Toolbar::Basic
  button_group('cloud_tenant_vmdb', [
    select(
      :cloud_tenant_vmdb_choice,
      nil,
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :cloud_tenant_edit,
          'pficon pficon-edit fa-lg',
          t = N_('Edit this Cloud Tenant'),
          t,
          :klass => ApplicationHelper::Button::CloudTenantEdit
        ),
        button(
          :cloud_tenant_delete,
          'pficon pficon-delete fa-lg',
          t = N_('Remove this Cloud Tenant from Inventory'),
          t,
          :url_parms => "&refresh=y",
          :confirm   => N_("Warning: This Cloud Tenant and ALL of its components will be permanently removed!"),
          :klass     => ApplicationHelper::Button::CloudTenantDelete
        )
      ]
    ),
  ])

  button_group('cloud_tenant_policy', [
    select(
      :cloud_tenant_policy_choice,
      nil,
      t = N_('Policy'),
      t,
      :items => [
        button(
          :cloud_tenant_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit Tags for this Cloud Tenant'),
          N_('Edit Tags'),
          :klass => ApplicationHelper::Button::CloudTenantTag
        ),
      ]
    ),
  ])

  button_group('ems_cloud', [
    twostate(
      :view_dashboard,
      'fa fa-tachometer fa-1xplus',
      N_('Dashboard View'),
      nil,
      :url       => "/show/",
      :url_parms => "?display=dashboard",
      :klass     => ApplicationHelper::Button::ViewDashboard
    ),
    twostate(
      :view_summary,
      'fa fa-th-list',
      N_('Summary View'),
      nil,
      :url       => "/show/",
      :url_parms => "?display=main"
    ),
  ])
end
