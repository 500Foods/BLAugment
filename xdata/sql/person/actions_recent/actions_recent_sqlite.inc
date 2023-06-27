// [query] actions_recent

if (MainForm.DatabaseEngine = 'sqlite') then
begin

  with Query1 do
  begin

    SQL.Clear;
    SQL.Add('SELECT '+
            '  distinct(session_start) session_start, '+
            '  session_id, '+
            '  person_id '+
            'FROM '+
            '  action_history '+
            'WHERE '+
            '  (person_id = :PERSONID) '+
            'ORDER BY '+
            '  session_start DESC '+
            'LIMIT '+
            '  10;'
           );

  end;
end;
