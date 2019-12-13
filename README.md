# Lesson-10

## HW: 

Вам нужно будет сделать интеграцию с VK API (не SDK, именно чистое API). 
Нужно придерживаться всех принципов, изученных на паре, а это значит использовать MVC, нормальный нейминг, комментарии и остальные нюансы. 

Минимальное необходимый функционал:   
* Авторизация/выход. Экран показывается один раз, и после авторизации не показывается до выхода. 
* Список постов пользователя с **его личной** стены, который может содержать: 
  * аватар поста
  * заголовок
  * дату поста отформатированную по "вчера/сегодня в 06:45" или "7 минут назад"
  * текст поста
  * 1 фотку 
  * кол-во лайков, комментов, репостов
* Подгрузку постов по 10-15 штук при скролле (пагинация). 
* Кеширование новейших 10 постов в CoreData 

**Важно!**  
Для работы с сетью сделать менеджер NetworkManager или подобное инкапсулирование запросов в Model часть MVC.   
Не допускается применение библиотек и сторонних хелперов.   
Верстка на Autolayouts. 

Функционал на доп. баллы: 
* Лайк/дизлайк(повторный лайк) поста.
* Сделать механизм ресайзинга картинок, чтобы они всегда выглядили хорошо. 
* Сделать отображение "репостов" внутри поста пользователя. 

### Полезные ссылки: 
https://vk.com/dev/first_guide - API VK 
https://habr.com/ru/post/414221/ - Codable 
https://www.hackingwithswift.com/articles/119/codable-cheat-sheet - еще Codable (мало не бывает) 
https://www.raywenderlich.com/3244963-urlsession-tutorial-getting-started - URLSession для запросов в сеть
