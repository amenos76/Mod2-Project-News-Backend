# Trending Stories


## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Contact](#contact)
* [License](#license)


## General info
Trending Stories is a website that pulls in all the top trending news stories, and refreshes as the day goes on! You can search for stories using the built in categories; Trending, Sports, Entertainment, and Technology. For a more taylored search, use the search option to find the stories you are looking for. There is also a My Feed feature that allows you to add and remove stories to a personalized feed specific to your choices. You can use this if you are in a rush and would like to read them later, or save them there to easily reference and share  with a friend. Lastly, to make things a little easier for you, there is an auto-scroll button that allows you to see all the articles scroll through hands free!


## Technologies
* Ruby - version 2.6.1
* Bootsnap - 1.4.2
* RestClient - 2.1.0
* SQLite3 - version 1.4
* API - Newsapi.org

## Setup
To run the site, install it locally by cloning the GitHub repository, and in your Terminal type:
```javascript
cd into the backend 
run bundle.install
run rails s 
```
``` javascript
cd into the frontend
run lite-server
``` 

## Features

* Browse the top trending stories!

![gif of highlights](https://media.giphy.com/media/C6wAbbicfLLyrlR79F/giphy.gif) 

* Search for specific topics using our dynamic search feature.

![gif of search](https://media.giphy.com/media/iPlT3KdCMj08GpR7fa/giphy.gif)

* Save stories to your personlized My Feed!

![gif add to feed](https://media.giphy.com/media/4WTiO9x0DJQRbnXL0j/giphy.gif) 

* Remove stories from your personlized My Feed.

![gif remove from feed](https://media.giphy.com/media/lXfWkdNTGVzxpisBHq/giphy.gif)

* Allow the site to do the work for you with our auto scroll button that can be conveniently turned on and off.

![gif of scroll](https://media.giphy.com/media/qEdUwkY5bYCZ4EeFBK/giphy.gif)

    

## Code Examples

``` javascript
document.addEventListener('click', activateCarousel);

let timer;

function activateCarousel(event){
    if (event.target === document.getElementById("on-button")) {
        carouselCards()
        console.log("Autoscroll turned on!")
    }
    if (event.target === document.getElementById("off-button")) {
        clearInterval(timer);
        console.log("Autoscroll turned off!")
    }
};

function carouselCards() {
    timer = setInterval(function() {
      const $parentContainer = document.querySelector('.container');
      const $divCard = $parentContainer.querySelectorAll('.item');
      $divCard.forEach((card) => {
          card.classList.toggle('sliding-now');
      })
      setTimeout(function() {
        $parentContainer.appendChild($divCard[0]);
      }, 5000);

    }, 5000);
  };
```

``` css
.item.sliding-now {
  animation: up 2s linear infinite forwards;
  animation-delay: 3s;
}

@keyframes up {
  from {
    transform: translateY(0);
  }
  to {
    transform: translateY(calc(-17.5em - 1em));
  }
}
```

## Status
Project is finished with option to expand features and further refactor code.


## Contact
Created by [Augie Menos](https://www.linkedin.com/in/augie-menos-9b8329b1/) and [Kevin Johnson](https://www.linkedin.com/in/kevin-johnson805/)


## License

Copyright (c) [2020] [Augie Menos and Kevin Johnson]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.