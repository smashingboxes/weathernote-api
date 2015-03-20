### POST /notes.json

* Params: {"note"=>{"status"=>"Canceled", "message"=>"Game is rescheduled for tomorrow", "user_id"=>1}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 201
* Response: {"note":{"id":1,"status":"Canceled","message":"Game is rescheduled for tomorrow","team":{"id":1,"name":"farmbureau"},"user":{"id":1,"email":"farmer@farmbureau.com"}}} 

### POST /notes.json

* Params: {"note"=>{"status"=>"Delayed", "message"=>"Game is rescheduled for tomorrow", "user_id"=>2}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 201
* Response: {"note":{"id":2,"status":"Delayed","message":"Game is rescheduled for tomorrow","team":{"id":2,"name":"farmbureau"},"user":{"id":2,"email":"farmer@farmbureau.com"}}} 

### POST /notes.json

* Params: {"note"=>{"status"=>nil}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 422
* Response: {"errors":{"status":["can't be blank"],"message":["can't be blank"],"user":["can't be blank"]}} 

### POST /notes.json

* Params: {"note"=>{"message"=>nil}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 422
* Response: {"errors":{"status":["can't be blank"],"message":["can't be blank"],"user":["can't be blank"]}} 

### GET /users.json

* Params: {"user"=>{"email"=>"farmer@farmbureau.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":3,"email":"farmer@farmbureau.com","team":{"id":3,"name":"farmbureau"},"notes":[]}} 

### GET /users.json

* Params: {"user"=>{"email"=>"farmer@farmbureau.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":4,"email":"farmer@farmbureau.com","team":{"id":4,"name":"farmbureau"},"notes":[]}} 

