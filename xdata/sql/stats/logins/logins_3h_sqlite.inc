// [query] stats/logins/logins_3h

if (MainForm.DatabaseEngine = 'sqlite') then
begin

  with Query1 do
  begin

    SQL.Clear;
    SQL.Add('SELECT '+
            '  strftime("%Y-%m-%d ", DateTime(session_start, :TZOFFSET || " minutes")) || substr("00" || ((cast(strftime("%H", DateTime(session_start, :TZOFFSET || " minutes")) as int) / 3) * 3), -2) || ":00:00" period, '+
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
