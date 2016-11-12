munsters = { "Herman" => { "age" => 32, "gender" => "male" } }
munsters_clone = munsters.clone
munsters_dup = munsters.dup

p munsters.object_id
p munsters['Herman']['age'].object_id

p munsters_clone.object_id
p munsters_clone['Herman']['age'].object_id

p munsters_dup.object_id
p munsters_dup['Herman']['age'].object_id

munsters_clone['Herman']['age'] = 100
munsters_dup['Herman']['age'] = 1000

p munsters
p munsters_clone
p munsters_dup
