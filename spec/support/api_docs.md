### POST /notes.json

* Params: {"note"=>{"status"=>"Delayed", "message"=>"Game is rescheduled for tomorrow", "user_id"=>3}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 201
* Response: {"note":{"id":2,"status":"Delayed","message":"Game is rescheduled for tomorrow","team":{"id":3,"name":"farmbureau"},"user":{"id":3,"email":"farmer@farmbureau.com"}}} 

### POST /notes.json

* Params: {"note"=>{"message"=>nil}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 422
* Response: {"errors":{"status":["can't be blank"],"message":["can't be blank"],"user":["can't be blank"]}} 

### POST /notes.json

* Params: {"note"=>{"status"=>nil}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 422
* Response: {"errors":{"status":["can't be blank"],"message":["can't be blank"],"user":["can't be blank"]}} 

### POST /notes.json

* Params: {"note"=>{"status"=>"Canceled", "message"=>"Game is delayed 1 hour", "user_id"=>4}, "format"=>"json", "controller"=>"notes", "action"=>"create"}
* Response Status: 201
* Response: {"note":{"id":3,"status":"Canceled","message":"Game is delayed 1 hour","team":{"id":4,"name":"smashingboxes"},"user":{"id":4,"email":"ian@smashingboxes.com"}}} 

### GET /notes/1.json

* Params: {"id"=>"1", "format"=>"json", "controller"=>"notes", "action"=>"show"}
* Response Status: 200
* Response: {"note":{"id":1,"status":"Rescheduled","message":"Game is delayed 1 hour","team":{"id":2,"name":"smashingboxes"},"user":{"id":2,"email":"ian@smashingboxes.com"}}} 

### GET /users.json

* Params: {"user"=>{"email"=>"farmer@farmbureau.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":5,"email":"farmer@farmbureau.com","team":{"id":5,"name":"farmbureau"},"notes":[]}} 

### GET /users.json

* Params: {"user"=>{"email"=>"ian@smashingboxes.com"}, "format"=>"json", "controller"=>"users", "action"=>"find_or_create"}
* Response Status: 200
* Response: {"user":{"id":6,"email":"ian@smashingboxes.com","team":{"id":6,"name":"smashingboxes"},"notes":[]}} 

