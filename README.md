# Ansible Role Authorization

<span class="badges" align="center">
[![Build Status](https://travis-ci.org/dgnest/ansible-role-authorization.svg)](https://travis-ci.org/dgnest/ansible-role-authorization)
[![Stories in Ready](https://badge.waffle.io/luismayta/ansible-role-authorization.svg?label=ready&title=Ready)](http://waffle.io/luismayta/ansible-role-authorization)
[![GitHub issues](https://img.shields.io/github/issues/dgnest/ansible-role-authorization.svg)](https://github.com/dgnest/ansible-role-authorization/issues)
[![GitHub license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)](LICENSE)
</span>


Installs and configures Authorization on a host.

## Requirements

 - Linux
   - none
 - OSX
   - [Homebrew][link-brew] must be installed.


## Role Variables

The default role variables in `defaults/main.yml` are:

    ---
    # path keys 
    authorization_key_dir: "~/.ssh/project"


## Dependencies

none

## Example Playbook

To run this playbook with default settings, create a basic playbook like this:

    - hosts: servers
      roles:
        - luismayta.authorization




Copy files keys:

    authorization_key_dir: "/Volumes/Home/private/key_file/fbp"
    authorization:
    sophimania:
        key_dir: "{{ authorization_key_dir }}"
        key_files:
        - key: id_rsa
            src: "{{ authorization_key_dir }}/id_rsa"
            path: "{{ app_dir_home }}/.ssh/id_rsa"
            permissions: 0600
            owner: "{{ user }}"
            state: file
        - key: id_rsa.pub
            src: "{{ authorization_key_dir }}/id_rsa.pub"
            path: "{{ app_dir_home }}/.ssh/id_rsa.pub"
            permissions: 0600
            state: file
            owner: "{{ user }}"


## Changelog

Please see [CHANGELOG](CHANGELOG.md) for more information what has changed recently.

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

## Credits

- [Luis Mayta][link-author]
- [All Contributors][link-contributors]

[link-brew]: http://brew.sh/

<!-- Other -->

[link-author]: https://github.com/luismayta
[link-contributors]: contributors
