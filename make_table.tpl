%#template to generate a HTML table from a list of tuples 
%#(or list of lists, or tuple of tuples or ...)
<table border="1">
%hdr=None
%for row in rows:
  %if not hdr:
  %  hdr=row.keys()
  <tr>
    %for key in hdr:
      <th>{{key.title()}}</th>
    %end
  </tr>
  %end
  <tr>
    %for col in hdr:
    <td>{{row[col]}}</td>
    %end
  </tr>
%end
</table>
