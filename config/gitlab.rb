gitlab_rails['ldap_enabled'] = true
gitlab_rails['ldap_servers'] = YAML.load <<-'EOS'
  main: # 'main' is the GitLab 'provider ID' of this LDAP server
    label: 'OpenLDAP'
    host: 'openldap'
    port: 389
    uid: 'uid'
    bind_dn: 'cn=admin,dc=borisov,dc=ru'
    password: 'QazWsx1'
    encryption: 'plain'
    active_directory: false
    allow_username_or_email_login: true
    lowercase_usernames: true
    block_auto_created_users: false
    base: 'dc=borisov,dc=ru'
EOS
