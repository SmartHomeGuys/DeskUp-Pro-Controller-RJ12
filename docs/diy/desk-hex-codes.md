# Reverse Engineered Desk Controller Hex Codes

This is a list of the community sites that contained the reverse engineered hex codes  used within this project.

### Pimp my Desk
https://gitlab.com/pimp-my-desk/desk-control/jiecang-reverse-engineering


### List

<table>
  <th>Name</th>
  <th>Hex Code</th>
  <th>Pimp my Desk</th>

  <tr>
    <td>Nudge Up</td>
    <td>0xf1, 0xf1, 0x01, 0x00, 0x01, 0x7e</td>
    <td>0xF1, 0xF1, 0x01, 0x00, 0x00, 0x01, 0x7E</td>
  </tr>
  
  <tr>
    <td>Nudge Down</td>
    <td>0xf1, 0xf1, 0x02, 0x00, 0x02, 0x7e</td>
    <td>0xF1, 0xF1, 0x02, 0x00, 0x00, 0x02, 0x7E</td>
  </tr>
  
  <tr>
    <td>Press Preset 1</td>
    <td>0xf1, 0xf1, 0x05, 0x00, 0x05, 0x7e</td>
  </tr>

  <tr>
    <td>Press Preset 2</td>
    <td>0xf1, 0xf1, 0x06, 0x00, 0x06, 0x7e</td>
  </tr>

  <tr>
    <td>Press Preset 3</td>
    <td>0xF1, 0xF1, 0x27, 0x00, 0x27, 0x7E</td>
  </tr>

  <tr>
    <td>Press Preset 4</td>
    <td>0xf1, 0xf1, 0x28, 0x00, 0x28, 0x7e</td>
  </tr>

  <tr>
    <td>Set Preset 1</td>
    <td>0xf1, 0xf1, 0x03, 0x00, 0x03, 0x7e</td>
    <td>0xF1, 0xF1, 0x03, 0x00, 0x00, 0x03, 0x7e</td>
  </tr>

  <tr>
    <td>Set Preset 2</td>
    <td>0xf1, 0xf1, 0x04, 0x00, 0x04, 0x7e</td>
    <td>0xF1, 0xF1, 0x04, 0x00, 0x00, 0x04, 0x7E</td>
  </tr>
  
  <tr>
    <td>Set Preset 3</td>
    <td>0xf1, 0xf1, 0x25, 0x00, 0x25, 0x7e</td>
  </tr>
  
  <tr>
    <td>Set Preset 4</td>
    <td>0xf1, 0xf1, 0x26, 0x00, 0x26, 0x7e</td>
  </tr>


  

  <tr>
    <td>Height Changed Message</td>
    <td>
      Message size = 9 bytes.
      <ul>
  <li>bytes[0] == 0xF2
  <li>bytes[1] == 0xF2
  <li>bytes[2] == 0x01

  <li>height data in mm: ((bytes[4] * 256) + bytes[5])
    
  <li>bytes[8] == 0x7E
    </ul>
  </td>
  </tr>

  <tr>
    <td>Preset Height Message</td>
    <td>
      Message size = 8 bytes.
      <ul>
      <li>bytes[0] == 0xF2
      <li>bytes[1] == 0xF2
      <li>Preset 1: bytes[2] == 0x25
      <li>Preset 2: bytes[2] == 0x26
      <li>Preset 3: bytes[2] == 0x27
      <li>Preset 4: bytes[2] == 0x28
      <li>height data in mm: ((bytes[4] * 256) + bytes[5])
      <li>bytes[7] == 0x7E
      </ul>
    </td>
  </tr>

  <tr>
    <td>Move Desk to position</td>
    <td>
      <ul>
      <li>byte[0] = 0xF1;
      <li>byte[1] = 0xF1;
      <li>byte[2] = 0x1B;
      <li>byte[3] = 0x02; 
      <li>byte[4] = height_mm / 256
      <li>byte[5] = height_mm % 256
      <li>byte[6] = ((byte[2] + byte[3] + byte[4] + byte[5]) % 256);   // checksum 
      <li>byte[7] = 0x7E
      </ul>
    </td>
  </tr>

  <tr>
    <td>Get Desk Height</td>
    <td>0xf1, 0xf1, 0x07, 0x00, 0x07, 0x7e</td>
  </tr>

  <tr>
    <td>Stop Desk</td>
    <td>0xf1, 0xf1, 0x2B, 0x00, 0x2B, 0x7e</td>
  </tr>
  
</table>



