Role Name
=========

My Ansible role for installing "Oh My Zsh", some of its plug-ins, and other command line tools. It can also install and configure the "starship" prompt or the "p10k" theme.

DISCLAIMER: this role is built to fit my needs and configurations, and it is not meant to be reusable.

Role Variables
--------------

By default, it installs the "starship" prompt.
To install, instead, the "p10k" theme, pass the variable `with_starship: false`.

Example Playbook
----------------

For `starship` (default):

```yaml
    - name: Install Oh My Zsh
      ansible.builtin.include_role:
        name: lorenzobettini.oh_my_zsh
```

For `p10k`:

```yaml
    - name: Install Oh My Zsh
      ansible.builtin.include_role:
        name: lorenzobettini.oh_my_zsh
      vars:
        with_starship: false
```

Notes
-------

To quickly check `converge` passing a variable:

```
molecule converge -- --extra-vars='with_starship=false'
```

To run a different scenario:

```
molecule converge --scenario-name='p10k-scenario'
```

To run the playbook on this system for `starship` (default):

```
ansible-playbook tests/test.yml -i tests/inventory -K
```

To run the playbook on this system for `p10k`:

```
ansible-playbook tests/test.yml -i tests/inventory -K --extra-vars '{"with_starship":false}'
```
