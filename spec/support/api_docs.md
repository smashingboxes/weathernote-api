### POST /notes.json

* Params: {"note"=>{"status"=>"Rescheduled", "message"=>"Game is rescheduled for tomorrow", "user_id"=>9}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 201
* Response: {"note":{"id":4,"status":"Rescheduled","message":"Game is rescheduled for tomorrow","team":{"id":8,"name":"smashingboxes"},"user":{"id":9,"email":"ian@smashingboxes.com"}}} 

### POST /notes.json

* Params: {"note"=>{"status"=>"Delayed", "message"=>"Game is delayed 1 hour", "user_id"=>8}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 201
* Response: {"note":{"id":3,"status":"Delayed","message":"Game is delayed 1 hour","team":{"id":7,"name":"smashingboxes"},"user":{"id":8,"email":"ian@smashingboxes.com"}}} 

### POST /notes.json

* Params: {"note"=>{"status"=>nil}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 422
* Response: {"errors":{"status":["can't be blank"],"message":["can't be blank"],"user":["can't be blank"]}} 

### POST /notes.json

* Params: {"note"=>{"message"=>nil}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 422
* Response: {"errors":{"status":["can't be blank"],"message":["can't be blank"],"user":["can't be blank"]}} 

### GET /notes/2.json

* Params: {"id"=>"2", "format"=>"json", "controller"=>"notes", "action"=>"show"}
* Response Status: 200
* Response: {"note":{"id":2,"status":"Rescheduled","message":"Game's off","team":{"id":6,"name":"farmbureau"},"user":{"id":7,"email":"farmer@farmbureau.com"}}} 

### GET /users.json

* Params: {"user"=>{"email"=>"new_user@team.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":3,"email":"new_user@team.com","team":{"id":2,"name":"smashingboxes"},"notes":[]}} 

### GET /users.json

* Params: {"user"=>{"email"=>"ian@smashingboxes.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":4,"email":"ian@smashingboxes.com","team":{"id":3,"name":"smashingboxes"},"notes":[]}} 

### GET /users.json

* Params: {"user"=>{"email"=>"ian@smashingboxes.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":1,"email":"ian@smashingboxes.com","team":{"id":1,"name":"smashingboxes"},"notes":[]}} 

