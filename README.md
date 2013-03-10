fs_mount Cookbook
==================
Add node['filesystems'] entries to /etc/fstab and check if partitions are mounted

Requirements
------------
- Ubuntu 12.04.2 LTS

Attributes
----------
#### fs_mount::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>node['fs_mount']['filesystems']</tt></td>
    <td>Array</td>
    <td>List of fs to enable</td>
    <td><tt>[]</tt></td>
  </tr>
</table>

Usage
-----
#### fs_mount::default

Just include `fs_mount` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[fs_mount]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author : Unbekandt Leo
Licence : BSD
