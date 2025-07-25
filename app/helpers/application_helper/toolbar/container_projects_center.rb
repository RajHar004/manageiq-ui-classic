class ApplicationHelper::Toolbar::ContainerProjectsCenter < ApplicationHelper::Toolbar::Basic
  button_group('container_project_select', [
    select(
      :container_project_select_choice,
      nil,
      t = N_('Configuration'),
      t,
      :items => [
        button(
          :container_project_new,
          'pficon pficon-add-circle-o fa-lg',
          N_('Create New Project'),
          N_('Create New Project')
        ),
        button(
          :container_project_delete,
          'pficon pficon-delete fa-lg',
          N_('Delete Selected Container Project'),
          N_('Delete Container Project'),
          :url_parms    => "main_div",
          :send_checked => true,
          :confirm      => N_("Warning: The selected project will be permanently deleted!"),
          :enabled      => false,
          :onwhen       => "1+"
        )
      ]
    )
  ])

  button_group('container_project_policy', [
    select(
      :container_project_policy_choice,
      nil,
      t = N_('Policy'),
      t,
      :enabled => false,
      :onwhen  => "1+",
      :items => [
        button(
          :container_project_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit Tags for this Project'),
          N_('Edit Tags'),
          :url_parms    => "main_div",
          :send_checked => true,
          :enabled      => false,
          :onwhen       => "1+"
        )
      ]
    )
  ])
end

