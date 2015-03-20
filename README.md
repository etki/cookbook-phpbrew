phpbrew Cookbook
================
Hi there.
This cookbook simply installs phpbrew and set of packages required to build PHP.
Nothing more yet.

Requirements
------------

Currently supports only debian and ubuntu.

Attributes
----------

* `['phpbrew']['install_prefix']` - Path where phpbrew executable will be
placed, defaults to `/usr/local/bin`.

Usage
-----
#### phpbrew::default

Just include `phpbrew` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[phpbrew]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Etki <etki@etki.name>
License: MIT
