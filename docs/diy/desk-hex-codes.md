# Reverse Engineered Desk Controller Hex Codes

This is a list of the community sites that contained the reverse engineered hex codes  used within this project.

<table>
  <th>Name</th>
  <th>Hex Code</th>
  
  <tr>
    <td>Press Preset 1</td>
    <td>0xf1, 0xf1, 0x05, 0x00, 0x05, 0x7e</td>
  </tr>

  <tr>
    <td>Press Preset 2</td>
    <td>0xf1, 0xf1, 0x06, 0x00, 0x06, 0x7e</td>
  </tr>

  <tr>
    <td>Current Height</td>
    <td>
      Message size = 9 bytes.
      <ul>
  <li>bytes[0] == 0xF2
  <li>bytes[1] == 0xF2
  <li>bytes[2] == 0x01

  <li>height data in mm = ((bytes[4] * 256) + bytes[5])
    
  <li>bytes[8] == 0x7E
  </ul>
    </td>
  </tr>

  
</table>



