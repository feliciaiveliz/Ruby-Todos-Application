
[1mFrom:[0m /home/felicia/launch-school/todos_project/database_persistence.rb:39 DatabasePersistence#all_lists:

    [1;34m24[0m: [32mdef[0m [1;34mall_lists[0m
    [1;34m25[0m:   sql = [31m[1;31m"[0m[31mSELECT * FROM lists[1;31m"[0m[31m[0m
    [1;34m26[0m:   result = query(sql)
    [1;34m27[0m: 
    [1;34m28[0m:   result.map [32mdo[0m |tuple|
    [1;34m29[0m:     todo_list_id = tuple[[31m[1;31m"[0m[31mid[1;31m"[0m[31m[0m].to_i
    [1;34m30[0m:     todo_sql = [31m[1;31m"[0m[31mSELECT * FROM todos WHERE todo_list_id = $1[1;31m"[0m[31m[0m
    [1;34m31[0m:     todos_result = query(todo_sql, todo_list_id)
    [1;34m32[0m: 
    [1;34m33[0m:     todos = todos_result.map [32mdo[0m |todo_tuple|
    [1;34m34[0m:       { [35mid[0m: todo_tuple[[31m[1;31m"[0m[31mid[1;31m"[0m[31m[0m].to_i,
    [1;34m35[0m:         [35mname[0m: todo_tuple[[31m[1;31m"[0m[31mname[1;31m"[0m[31m[0m],
    [1;34m36[0m:         [35mcompleted[0m: todo_tuple[[31m[1;31m"[0m[31mcompleted[1;31m"[0m[31m[0m] == [31m[1;31m"[0m[31mt[1;31m"[0m[31m[0m }
    [1;34m37[0m:     [32mend[0m
    [1;34m38[0m: 
 => [1;34m39[0m:     binding.pry
    [1;34m40[0m: 
    [1;34m41[0m:     {[35mid[0m: todo_list_id, [35mname[0m: tuple[[31m[1;31m"[0m[31mname[1;31m"[0m[31m[0m], [35mtodos[0m: todos}
    [1;34m42[0m:   [32mend[0m
    [1;34m43[0m: [32mend[0m

