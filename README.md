Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

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

License
-------

BSD

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

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
