logwatch Cookbook
=================
logwatch cookbook with iptables.

Requirements
------------

Ubuntu ( tested at 14.04 )

Attributes
----------

#### logwatch::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:logwatch][:mail_to]</tt></td>
    <td>String</td>
    <td>E-mail where you want the report sent</td>
    <td><tt>root@localhost</tt></td>
  </tr>
  <tr>
    <td><tt>[:logwatch][:output]</tt></td>
    <td>String</td>
    <td>How to output the report(stdout/mail/out)</td>
    <td><tt>stdout</tt></td>
  </tr>
  <tr>
    <td><tt>[:logwatch][:format]</tt></td>
    <td>String</td>
    <td>Output format</td>
    <td><tt>HTML</tt></td>
  </tr>
  <tr>
    <td><tt>[:logwatch][:range]</tt></td>
    <td>String</td>
    <td>The time range for the report(All, Today, Yesterday)</td>
    <td><tt>yestarday</tt></td>
  </tr>
  <tr>
    <td><tt>[:logwatch][:detail]</tt></td>
    <td>String</td>
    <td>The default detail level for the report(Low,Mid,High)</td>
    <td><tt>yestarday</tt></td>
  </tr>
  <tr>
    <td><tt>[:logwatch][:services]</tt></td>
    <td>Array</td>
    <td>The default services for the report </td>
    <td><tt>All</tt></td>
  </tr>
  <tr>
    <td><tt>[:logwatch][:iptables_logfile]</tt></td>
    <td>String</td>
    <td>Logfile name of iptables</td>
    <td><tt>syslog</tt></td>
  </tr>
</table>

Usage
-----
#### logwatch::default

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[logwatch]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
The GNU General Public License version 2 (GPLv2)

Authors: vohedge

