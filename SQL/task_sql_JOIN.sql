Таблица - client				Таблица - apartment		
id	first_name	last_name		id	adress	rooms
						
		Таблица - view				
		iapartment_id	client_id	date		

Составить запрос, который выдаст список фамилий клиентов, записанных на просмотр 2х и более 3-х комнатных квартир 

SELECT client.last_name
FROM client
INNER JOIN view ON client.id=view.client_id
INNER JOIN appartment ON view.appartment_id=appartment.id
WHERE appartment.rooms=3
GROUP BY last_name
HAVING COUNT(view.client_id)>=2;					