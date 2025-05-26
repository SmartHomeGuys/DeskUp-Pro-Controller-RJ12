# Reverse Engineered Desk Controller Hex Codes

This is a list of the community sites that contained the reverse engineered hex codes  used within this project.

### Pimp my Desk
https://gitlab.com/pimp-my-desk/desk-control/jiecang-reverse-engineering

### Rocka84
https://github.com/Rocka84/esphome_components/tree/master/components/jiecang_desk_controller

### Mahko_Mahko original yaml only version
https://community.home-assistant.io/t/maidesite-standing-desk-with-esphome/602293/17

### Maidesite project 
https://github.com/shades66/Maidesite-standing-desk/tree/main

---

### Comparison List

<table>
  <th>Function</th>
  <th>Hex Code Used in DeskUp Pro</th>
  <th>Pimp my Desk</th>
  <th>Rocka84</th>
  <th>Mahko_Mahko</th>
  <th>Maidesite Project</th>

  <tr>
    <td>Nudge Up</td>
    <td>0xf1, 0xf1, 0x01, 0x00, 0x01, 0x7e</td>
    <td>0xF1, 0xF1, 0x01, 0x00, 0x00, 0x01, 0x7E</td>
    <td>Match</td>
    <td>Match</td>
    <td>Match</td>
  </tr>
  
  <tr>
    <td>Nudge Down</td>
    <td>0xf1, 0xf1, 0x02, 0x00, 0x02, 0x7e</td>
    <td>0xF1, 0xF1, 0x02, 0x00, 0x00, 0x02, 0x7E</td>
    <td>Match</td>
    <td>Match</td>
    <td>Match</td>
  </tr>
  
  <tr>
    <td>Press Preset 1</td>
    <td>0xf1, 0xf1, 0x05, 0x00, 0x05, 0x7e</td>
    <td>0xF1, 0xF1, 0x05, 0x00, 0x00, 0x05, 0x7E</td>
    <td>Match</td>
    <td>Match</td>
    <td>Match</td>
  </tr>

  <tr>
    <td>Press Preset 2</td>
    <td>0xf1, 0xf1, 0x06, 0x00, 0x06, 0x7e</td>
    <td>0xF1, 0xF1, 0x06, 0x00, 0x00, 0x06, 0x7E</td>
    <td>Match</td>
    <td>Match</td>
    <td>Match</td>
  </tr>

  <tr>
    <td>Press Preset 3</td>
    <td>0xF1, 0xF1, 0x27, 0x00, 0x27, 0x7E</td>
    <td>0xF1, 0xF1, 0x27, 0x00, 0x00, 0x27, 0x7E</td>
    <td>Match</td>
    <td>Match</td>
    <td></td>
  </tr>

  <tr>
    <td>Press Preset 4</td>
    <td>0xf1, 0xf1, 0x28, 0x00, 0x28, 0x7e</td>
    <td></td>
    <td>Match</td>
    <td></td>
    <td>Match</td>
  </tr>

  <tr>
    <td>Set Preset 1</td>
    <td>0xf1, 0xf1, 0x03, 0x00, 0x03, 0x7e</td>
    <td>0xF1, 0xF1, 0x03, 0x00, 0x00, 0x03, 0x7e</td>
    <td>Match</td>
    <td>Match</td>
    <td></td>
  </tr>

  <tr>
    <td>Set Preset 2</td>
    <td>0xf1, 0xf1, 0x04, 0x00, 0x04, 0x7e</td>
    <td>0xF1, 0xF1, 0x04, 0x00, 0x00, 0x04, 0x7E</td>
    <td>Match</td>
    <td>Match</td>
    <td></td>
  </tr>
  
  <tr>
    <td>Set Preset 3</td>
    <td>0xf1, 0xf1, 0x25, 0x00, 0x25, 0x7e</td>
    <td>0xF1, 0xF1, 0x25, 0x00, 0x00, 0x25, 0x7E</td>
    <td>Match</td>
    <td>Match</td>
    <td></td>
  </tr>
  
  <tr>
    <td>Set Preset 4</td>
    <td>0xf1, 0xf1, 0x26, 0x00, 0x26, 0x7e</td>
    <td></td>
    <td>Match</td>
    <td></td>
    <td></td>
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
  <td></td>
  <td>Match with a different calculation</td>
  <td>Match</td>
  <td>Match</td>
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
    <td></td>
    <td>Match with a different calculation</td>
    <td></td>
    <td>Match</td>
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
    <td>
      Match
    </td>
    <td>
      Match with a different calculation.
      <br />
      high_byte = ((int) height * 10) >> 8;
      <br />
      low_byte = ((int) height * 10) & 0xFF;
      <br />
      checksum = 0x1B + 2 + high_byte + low_byte;
      <br />
      <br />
      0xF1, 0xF1, 0x1B, 0x02, high_byte, low_byte, checksum, 0x7E
    </td>
    <td>Match</td>
    <td>
      This one worked intermittently.  <br /> <br />
      int a= (int(x) & 0xff); <br />
      int b= ((int(x) >> 8) & 0xff); <br />
      int c= (a+b+0x80+0x02) & 0xff; <br />
      return {0xf1, 0xf1, 0x80, 2, b,a,c,0x7e,0xf1, 0xf1, 0x1b, 0x00, 0x1b,0x7e};
    </td>
  </tr>

  <tr>
    <td>Get Desk Height</td>
    <td>0xf1, 0xf1, 0x07, 0x00, 0x07, 0x7e</td>
    <td>0xF1, 0xF1, 0x07, 0x00, 0x00, 0x07, 0x7E</td>
    <td></td>
    <td>Match</td>
    <td></td>
  </tr>

  <tr>
    <td>Stop Desk</td>
    <td>0xf1, 0xf1, 0x2B, 0x00, 0x2B, 0x7e</td>
    <td>0xF1, 0xF1, 0x2B, 0x00, 0x00, 0x2B, 0x7E</td>
    <td>Match</td>
    <td>Match</td>
    <td></td>
  </tr>
</table>

_Note: Blanks in the above table means that function was not implemented in that codebase._


## Not used in DeskUp Pro

### Pimp my desk
- Fetch Height range
  
  0xF1, 0xF1, 0x0C, 0x00, 0x00, 0x0C, 0x7E
  

- Fetch High Low Limit

  0xF1, 0xF1, 0x20, 0x00, 0x00, 0x20, 0x7E


- Fetch Stand Time
  
  0xF1, 0xF1, 0xA2, 0x00, 0x00, 0xA2, 0x7E


- Fetch All Time

  0xF1, 0xF1, 0xAA, 0x00, 0x00, 0xAA, 0x7E

- Set specific height to memory preset
  
  See 3 examples at bottom of this page: https://gitlab.com/pimp-my-desk/desk-control/jiecang-reverse-engineering
  
  <ul>
    <li>0xF1
    <li>0xF1
    <li>0xAD
    <li>0x03
    <li>0x01-0x03 & Height in mm in base 10 to base 16 in 2 Bytes
    <li>VARIABLE
    <li>0x7E
  </ul>


  - Patch
  
  0xF1, 0xF1, 0xA0, 0x00, 0x00, 0xA0, 0x7E
  

### Rocka84
- Request Physical Limits
  
  0xF1, 0xF1, 0x0C, 0x00, 0x0C, 0x7E


- Request Limits
  
  0xF1, 0xF1, 0x20, 0x00, 0x20, 0x7E
```
  if ((message[2] & 1) == 0) { // low nibble 0 -> no max limit, use physical_max
    limit_max = physical_max;
    if (height_max != nullptr) height_max->publish_state(limit_max);
    if (number_height != nullptr) number_height->set_max_value(limit_max);
  } 
  if ((message[2]>>4) == 0) { // high nibble 0 -> no min limit, use physical_min
    limit_min = physical_min;
    if (height_min != nullptr) height_min->publish_state(limit_min);
    if (number_height != nullptr) number_height->set_min_value(limit_min);
  }
```

  
- Request Settings
  
  0xF1, 0xF1, 0x07, 0x00, 0x07, 0x7E
  
```
  physical_max = byte2float(message[2], message[3]);
  physical_min = byte2float(message[4], message[5]);
```


### Mahko_Mahko

- Fetch Height Range

  0xF1, 0xF1, 0x0C, 0x00, 0x0C, 0x7E
  

- Fetch High Low Limit

  0xF1, 0xF1, 0x20, 0x00, 0x20, 0x7E


- Fetch Stand Time

  0xF1, 0xF1, 0xA6, 0x01, 0xA7, 0x7E

  
- Fetch All Time

  0xF1, 0xF1, 0xAA, 0x00, 0xAA, 0x7E
  

- Patch

  0xF1, 0xF1, 0xA0, 0x00, 0xA0, 0x7E
  


