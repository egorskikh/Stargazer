# Stargazer

The Stargazer app was created to get closer to the stars with the help of NASA.

## Сontents in TabBar

* Astronomy Picture of the Day

![apodGif](https://user-images.githubusercontent.com/60622982/116113062-d3117380-a6c0-11eb-8f86-ab8db57ac43f.gif)


* 2: Near Earth Object Web Service

NeoWs (Near Earth Object Web Service) is a RESTful web service for near earth Asteroid information. With NeoWs a user can: search for Asteroids based on their closest approach date to Earth, lookup a specific Asteroid with its NASA JPL small body id, as well as browse the overall data-set.

* 3: Mars Rover Photos

Each rover has its own set of photos stored in the database, which can be queried separately. There are several possible queries that can be made against the API. Photos are organized by the sol (Martian rotation or day) on which they were taken, counting up from the rover's landing date. A photo taken on Curiosity's 1000th Martian sol exploring Mars, for example, will have a sol attribute of 1000. If instead you prefer to search by the Earth date on which a photo was taken, you can do that too.

* 4: Mars Weather

NASA’s InSight Mars lander takes continuous weather measurements (temperature, wind, pressure) on the surface of Mars at Elysium Planitia, a flat, smooth plain near Mars’ equator. Please note that there are sometimes problems with the sensors on Mars that result in missing data! If you see a long gap, a search result may bring up more information on whether it is a long-lasting problem.

