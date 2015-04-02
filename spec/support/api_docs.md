### POST /notes.json

* Params: {"note"=>{"status"=>"Canceled", "message"=>"Game is rescheduled for tomorrow", "user_id"=>2}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 201
* Response: {"note":{"id":2,"status":"Canceled","message":"Game is rescheduled for tomorrow","team":{"id":2,"name":"farmbureau"},"user":{"id":2,"email":"farmer@farmbureau.com"}}} 

### POST /notes.json

* Params: {"note"=>{"status"=>"Canceled", "message"=>"Game's off", "user_id"=>3}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 201
* Response: {"note":{"id":3,"status":"Canceled","message":"Game's off","team":{"id":3,"name":"farmbureau"},"user":{"id":3,"email":"farmer@farmbureau.com"}}} 

### POST /notes.json

* Params: {"note"=>{"status"=>nil}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 422
* Response: {"errors":{"status":["can't be blank"],"message":["can't be blank"],"user":["can't be blank"]}} 

### POST /notes.json

* Params: {"note"=>{"message"=>nil}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 422
* Response: {"errors":{"status":["can't be blank"],"message":["can't be blank"],"user":["can't be blank"]}} 

### GET /notes/4.json

* Params: {"id"=>"4", "format"=>"json", "controller"=>"notes", "action"=>"show"}
* Response Status: 200
* Response: {"note":{"id":4,"status":"Canceled","message":"Game's off","team":{"id":4,"name":"smashingboxes"},"user":{"id":4,"email":"ian@smashingboxes.com"}}} 

### GET /users.json

* Params: {"user"=>{"email"=>"ian@smashingboxes.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":5,"email":"ian@smashingboxes.com","team":{"id":5,"name":"smashingboxes"},"notes":[]}} 

### GET /users.json

* Params: {"user"=>{"email"=>"farmer@farmbureau.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":6,"email":"farmer@farmbureau.com","team":{"id":6,"name":"farmbureau"},"notes":[]}} 

### GET /users.json

* Params: {"user"=>{"email"=>"new_user@team.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":8,"email":"new_user@team.com","team":{"id":8,"name":"team"},"notes":[]}} 

