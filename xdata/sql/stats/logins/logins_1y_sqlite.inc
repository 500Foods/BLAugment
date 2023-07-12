// [query] stats/logins/logins_1y

if (MainForm.DatabaseEngine = 'sqlite') then
begin

  with Query1 do
  begin

    SQL.Clear;
    SQL.Add('SELECT '+
            '  strftime("%Y", DateTime(session_start, :TZOFFSET || " minutes")) period, '+
            '  count(*) logins '+
            'FROM '+
            '  action_history '+
            'WHERE '+
            '  ((log_start = 1) or (log_start = 2)) '+
            '  and (session_start >= :SESSIONSTART) '+
            '  and (session_start <= :SESSIONEND) '+
            'GROUP BY '+
            '  period '+
            'ORDER BY '+
            '  period;'
           );

  end;
end;
