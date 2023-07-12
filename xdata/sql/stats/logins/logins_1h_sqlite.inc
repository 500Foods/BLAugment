// [query] stats/logins/logins_1h

if (MainForm.DatabaseEngine = 'sqlite') then
begin

  with Query1 do
  begin

    SQL.Clear;
    SQL.Add('SELECT '+
            '  strftime("%Y-%m-%d %H:00:00", DateTime(session_start, :TZOFFSET || " minutes")) period, '+
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
