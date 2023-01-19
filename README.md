## Exam application ##
# Introduction #
The common man has few tools. I feel special. I have a lot of different kinds of tools. Unfortunately, I don't have a single dedicated storage space yet.
I have to improvise. Now I have several spots. Basement, garden shed, wardrobe, hall closet, cupboard, desk, bookcase, even my car.
Keeping order is very difficult, especially since I am constantly buying new things. Sometimes my friends and family borrow one or more tools.
I often forget who and what borrowed from me. I know I have some precision pliers, but I can't find them. Finally my friend returned it after a few months.
The main purpose of this app is to support me. I am planning to access my app from my mobile phone.
# Architecture #
Backend - Java 11, Spring Boot 2.7.2, My SQL database by default placed locally.
Frontend - JSP, JSTL,  HTML, CSS (Bootstrap).
# Configuration #

tools/src/main/resources/application.properties - here is database configuration, replace url (hostname/IP, port, name of schema), username and pasword according to uour database.

http://localhost:8080/tool/list/ - homepage for tools


First of all you need create some tools, create users (like colleagues, family members, or neighbours) from Utilities menu. After that you can rent particular tool.
There is no delete ability. Only create and edit. Why? Due to the traceability of history.

<img src="https://github.com/pawsko/tools/blob/main//media/Tools.png">
<img src="https://github.com/pawsko/tools/blob/main/media/Tools_utils.png">
<img src="https://github.com/pawsko/tools/blob/main/media/Users.png">
<img src="https://github.com/pawsko/tools/blob/main/media/Users_utils.png">
<img src="https://github.com/pawsko/tools/blob/main/media/Rentals.png">
<img src="https://github.com/pawsko/tools/blob/main/media/Rentals_utils.png">
