<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Low balane</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
h3
{
margin-left:600px;
margin-top:300px;
color:red;
font-weight:bold;}
html,
body,
.ag-primary-block {
  height: 100%;
}
.ag-primary-block {
  background-color: #000;
  overflow: hidden;

  position: relative;
}
.ag-primary_btn-wrap {
  position: absolute;
  bottom: 100px;
  left: 0;
  right: 0;
}
.ag-base-btn {
  display: table;
  height: 68px;
  line-height: 66px;
  min-width: 210px;
  margin: 0 auto;
  padding: 0 15px;
  border: 1px solid #005230;
  background-color: #005230;

  cursor: pointer;

  text-transform: uppercase;
  text-align: center;
  font-weight: normal;
  font-size: 18px;
  color: #F9F9F9;

  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;

  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  -o-box-shadow: none;
  box-shadow: none;

  -webkit-transition: background 0.2s ease-out;
  -moz-transition: background 0.2s ease-out;
  -o-transition: background 0.2s ease-out;
  transition: background 0.2s ease-out;

  position: relative;
  z-index: 1000;
}
.ag-base-btn:hover {
  border: 1px solid #00673f;
  background-color: #00673f;

  text-decoration: none;

  color: #F9F9F9;
}

.ag-money_icon {
  position: absolute;
  left: 50%;
  bottom: -15px;

  -webkit-transform: rotate(0deg);
  -moz-transform: rotate(0deg);
  -ms-transform: rotate(0deg);
  -o-transform: rotate(0deg);
  transform: rotate(0deg);

  -webkit-transition: -webkit-transform 0.2s ease-out;
  -moz-transition: -moz-transform 0.2s ease-out;
  -o-transition: -o-transform 0.2s ease-out;
  transition: transform 0.2s ease-out;
}

.js-ag-animation .ag-money_icon {
  -webkit-transform: translate(-50%, 0) rotate(360deg);
  -moz-transform: translate(-50%, 0) rotate(360deg);
  -ms-transform: translate(-50%, 0) rotate(360deg);
  -o-transform: translate(-50%, 0) rotate(360deg);
  transform: translate(-50%, 0) rotate(360deg);
}

.ag-money_icon-right-1 {
  width: 180px;

  -webkit-transform: translate(-465%, -305%);
  -moz-transform: translate(-465%, -305%);
  -ms-transform: translate(-465%, -305%);
  -o-transform: translate(-465%, -305%);
  transform: translate(-465%, -305%);
}
.js-money_anim {
  -webkit-animation: an-money 5s linear infinite;
  -moz-animation: an-money 5s linear infinite;
  -o-animation: an-money 5s linear infinite;
  animation: an-money 5s linear infinite;
}
.ag-money_anim-right-2 {
  -webkit-animation-duration: 7s;
  -moz-animation-duration: 7s;
  -o-animation-duration: 7s;
  animation-duration: 7s;

  -webkit-animation-timing-function: ease-out;
  -moz-animation-timing-function: ease-out;
  -o-animation-timing-function: ease-out;
  animation-timing-function: ease-out;
}
.ag-money_anim-right-3 {
  -webkit-animation-duration: 6s;
  -moz-animation-duration: 6s;
  -o-animation-duration: 6s;
  animation-duration: 6s;

  -webkit-animation-direction: reverse;
  -moz-animation-direction: reverse;
  -o-animation-direction: reverse;
  animation-direction: reverse;
}
.ag-money_anim-right-4 {
  -webkit-animation-duration: 9s;
  -moz-animation-duration: 9s;
  -o-animation-duration: 9s;
  animation-duration: 9s;
}
.ag-money_anim-right-5 {
  -webkit-animation-direction: reverse;
  -moz-animation-direction: reverse;
  -o-animation-direction: reverse;
  animation-direction: reverse;
}
.ag-money_anim-right-6 {
  -webkit-animation-timing-function: ease-out;
  -moz-animation-timing-function: ease-out;
  -o-animation-timing-function: ease-out;
  animation-timing-function: ease-out;
}

.ag-money_anim-left-2 {
  -webkit-animation-duration: 10s;
  -moz-animation-duration: 10s;
  -o-animation-duration: 10s;
  animation-duration: 10s;

  -webkit-animation-direction: reverse;
  -moz-animation-direction: reverse;
  -o-animation-direction: reverse;
  animation-direction: reverse;
}
.ag-money_anim-left-3 {
  -webkit-animation-duration: 4s;
  -moz-animation-duration: 4s;
  -o-animation-duration: 4s;
  animation-duration: 4s;

  -webkit-animation-timing-function: ease-out;
  -moz-animation-timing-function: ease-out;
  -o-animation-timing-function: ease-out;
  animation-timing-function: ease-out;
}
.ag-money_anim-left-4 {
  -webkit-animation-duration: 9s;
  -moz-animation-duration: 9s;
  -o-animation-duration: 9s;
  animation-duration: 9s;

  -webkit-animation-timing-function: ease-out;
  -moz-animation-timing-function: ease-out;
  -o-animation-timing-function: ease-out;
  animation-timing-function: ease-out;
}
.ag-money_anim-left-5 {
  -webkit-animation-duration: 8s;
  -moz-animation-duration: 8s;
  -o-animation-duration: 8s;
  animation-duration: 8s;

  -webkit-animation-timing-function: ease-in-out;
  -moz-animation-timing-function: ease-in-out;
  -o-animation-timing-function: ease-in-out;
  animation-timing-function: ease-in-out;

  -webkit-animation-direction: reverse;
  -moz-animation-direction: reverse;
  -o-animation-direction: reverse;
  animation-direction: reverse;
}
.ag-money_anim-left-6 {
  -webkit-animation-timing-function: ease-in-out;
  -moz-animation-timing-function: ease-in-out;
  -o-animation-timing-function: ease-in-out;
  animation-timing-function: ease-in-out;
}
.ag-money_anim-left-7 {
  -webkit-animation-timing-function: ease-in-out;
  -moz-animation-timing-function: ease-in-out;
  -o-animation-timing-function: ease-in-out;
  animation-timing-function: ease-in-out;

  -webkit-animation-direction: reverse;
  -moz-animation-direction: reverse;
  -o-animation-direction: reverse;
  animation-direction: reverse;
}

.ag-money_icon-right-2 {
  width: 180px;

  -webkit-transform: translate(-200%, -320%);
  -moz-transform: translate(-200%, -320%);
  -ms-transform: translate(-200%, -320%);
  -o-transform: translate(-200%, -320%);
  transform: translate(-200%, -320%);
}
.ag-money_icon-right-3 {
  width: 180px;

  -webkit-transform: translate(-345%, -190%);
  -moz-transform: translate(-345%, -190%);
  -ms-transform: translate(-345%, -190%);
  -o-transform: translate(-345%, -190%);
  transform: translate(-345%, -190%);
}
.ag-money_icon-right-4 {
  width: 150px;

  -webkit-transform: translate(-310%, -85%);
  -moz-transform: translate(-310%, -85%);
  -ms-transform: translate(-310%, -85%);
  -o-transform: translate(-310%, -85%);
  transform: translate(-310%, -85%);
}
.ag-money_icon-right-5 {
  width: 150px;

  -webkit-transform: translate(-530%, -10%);
  -moz-transform: translate(-530%, -10%);
  -ms-transform: translate(-530%, -10%);
  -o-transform: translate(-530%, -10%);
  transform: translate(-530%, -10%);
}
.ag-money_icon-right-6 {
  width: 180px;

  -webkit-transform: translate(-240%, 50%);
  -moz-transform: translate(-240%, 50%);
  -ms-transform: translate(-240%, 50%);
  -o-transform: translate(-240%, 50%);
  transform: translate(-240%, 50%);
}

.ag-money_icon-left-1 {
  width: 180px;

  -webkit-transform: translate(95%, -310%);
  -moz-transform: translate(95%, -310%);
  -ms-transform: translate(95%, -310%);
  -o-transform: translate(95%, -310%);
  transform: translate(95%, -310%);
}
.ag-money_icon-left-2 {
  width: 180px;

  -webkit-transform: translate(340%, -320%);
  -moz-transform: translate(340%, -320%);
  -ms-transform: translate(340%, -320%);
  -o-transform: translate(340%, -320%);
  transform: translate(340%, -320%);
}
.ag-money_icon-left-3 {
  width: 180px;

  -webkit-transform: translate(150%, -195%);
  -moz-transform: translate(150%, -195%);
  -ms-transform: translate(150%, -195%);
  -o-transform: translate(150%, -195%);
  transform: translate(150%, -195%);
}
.ag-money_icon-left-4 {
  width: 150px;

  -webkit-transform: translate(365%, -130%);
  -moz-transform: translate(365%, -130%);
  -ms-transform: translate(365%, -130%);
  -o-transform: translate(365%, -130%);
  transform: translate(365%, -130%);
}
.ag-money_icon-left-5 {
  width: 150px;

  -webkit-transform: translate(215%, -90%);
  -moz-transform: translate(215%, -90%);
  -ms-transform: translate(215%, -90%);
  -o-transform: translate(215%, -90%);
  transform: translate(215%, -90%);
}
.ag-money_icon-left-6 {
  width: 180px;

  -webkit-transform: translate(115%, 50%);
  -moz-transform: translate(115%, 50%);
  -ms-transform: translate(115%, 50%);
  -o-transform: translate(115%, 50%);
  transform: translate(115%, 50%);
}
.ag-money_icon-left-7 {
  width: 180px;

  -webkit-transform: translate(340%, 50%);
  -moz-transform: translate(340%, 50%);
  -ms-transform: translate(340%, 50%);
  -o-transform: translate(340%, 50%);
  transform: translate(340%, 50%);
}

@-webkit-keyframes an-money {
    0%, 100% {
      -webkit-transform: translate(0);
      transform: translate(0);
    }
    25% {
      -webkit-transform: translate(10px, 0);
      transform: translate(10px, 0);
    }
    50% {
      -webkit-transform: translate(10px, 10px);
      transform: translate(10px, 10px);
    }
    75% {
      -webkit-transform: translate(0, 10px);
      transform: translate(0, 10px);
    }
  }
  @-moz-keyframes an-money {
    0%, 100% {
      -moz-transform: translate(0);
      transform: translate(0);
    }
    25% {
      -moz-transform: translate(10px, 0);
      transform: translate(10px, 0);
    }
    50% {
      -moz-transform: translate(10px, 10px);
      transform: translate(10px, 10px);
    }
    75% {
      -moz-transform: translate(0, 10px);
      transform: translate(0, 10px);
    }
  }
  @-o-keyframes an-money {
    0%, 100% {
      -o-transform: translate(0);
      transform: translate(0);
    }
    25% {
      -o-transform: translate(10px, 0);
      transform: translate(10px, 0);
    }
    50% {
      -o-transform: translate(10px, 10px);
      transform: translate(10px, 10px);
    }
    75% {
      -o-transform: translate(0, 10px);
      transform: translate(0, 10px);
    }
  }
  @keyframes an-money {
    0%, 100% {
      -webkit-transform: translate(0);
      -moz-transform: translate(0);
      -o-transform: translate(0);
      transform: translate(0);
    }
    25% {
      -webkit-transform: translate(10px, 0);
      -moz-transform: translate(10px, 0);
      -o-transform: translate(10px, 0);
      transform: translate(10px, 0);
    }
    50% {
      -webkit-transform: translate(10px, 10px);
      -moz-transform: translate(10px, 10px);
      -o-transform: translate(10px, 10px);
      transform: translate(10px, 10px);
    }
    75% {
      -webkit-transform: translate(0, 10px);
      -moz-transform: translate(0, 10px);
      -o-transform: translate(0, 10px);
      transform: translate(0, 10px);
    }
  }

 @media only screen and (max-width: 479px) {
   .ag-money_icon-right-2 {
     -webkit-transform: translate(-105%, -260%);
     -moz-transform: translate(-105%, -260%);
     -ms-transform: translate(-105%, -260%);
     -o-transform: translate(-105%, -260%);
     transform: translate(-105%, -260%);
   }
   .ag-money_icon-right-3 {
     -webkit-transform: translate(-175%, -160%);
     -moz-transform: translate(-175%, -160%);
     -ms-transform: translate(-175%, -160%);
     -o-transform: translate(-175%, -160%);
     transform: translate(-175%, -160%);
   }
   .ag-money_icon-right-4 {
     -webkit-transform: translate(-255%, -85%);
     -moz-transform: translate(-255%, -85%);
     -ms-transform: translate(-255%, -85%);
     -o-transform: translate(-255%, -85%);
     transform: translate(-255%, -85%);
   }
   .ag-money_icon-left-1 {
     width: 115px;

     -webkit-transform: translate(35%, -260%);
     -moz-transform: translate(35%, -260%);
     -ms-transform: translate(35%, -260%);
     -o-transform: translate(35%, -260%);
     transform: translate(35%, -260%);
   }
   .ag-money_icon-left-3 {
     -webkit-transform: translate(60%, -165%);
     -moz-transform: translate(60%, -165%);
     -ms-transform: translate(60%, -165%);
     -o-transform: translate(60%, -165%);
     transform: translate(60%, -165%);
   }
   .ag-money_icon-left-5 {
     -webkit-transform: translate(150%, -90%);
     -moz-transform: translate(150%, -90%);
     -ms-transform: translate(150%, -90%);
     -o-transform: translate(150%, -90%);
     transform: translate(150%, -90%);
   }
   .ag-money_icon-right-6 {
     width: 115px;

     -webkit-transform: translate(-135%, 50%);
     -moz-transform: translate(-135%, 50%);
     -ms-transform: translate(-135%, 50%);
     -o-transform: translate(-135%, 50%);
     transform: translate(-135%, 50%);
   }
   .ag-money_icon-left-6 {
     width: 130px;

     -webkit-transform: translate(30%, 50%);
     -moz-transform: translate(30%, 50%);
     -ms-transform: translate(30%, 50%);
     -o-transform: translate(30%, 50%);
     transform: translate(30%, 50%);
   }
}

@media (min-width: 768px) and (max-width: 979px) {
  .ag-money_icon-right-2 {
    -webkit-transform: translate(-110%, -320%);
    -moz-transform: translate(-110%, -320%);
    -ms-transform: translate(-110%, -320%);
    -o-transform: translate(-110%, -320%);
    transform: translate(-110%, -320%);
  }
  .ag-money_icon-right-3 {
    -webkit-transform: translate(-205%, -190%);
    -moz-transform: translate(-205%, -190%);
    -ms-transform: translate(-205%, -190%);
    -o-transform: translate(-205%, -190%);
    transform: translate(-205%, -190%);
  }
  .ag-money_icon-right-4 {
    -webkit-transform: translate(-245%, -85%);
    -moz-transform: translate(-245%, -85%);
    -ms-transform: translate(-245%, -85%);
    -o-transform: translate(-245%, -85%);
    transform: translate(-245%, -85%);
  }
  .ag-money_icon-right-6 {
    -webkit-transform: translate(-195%, 50%);
    -moz-transform: translate(-195%, 50%);
    -ms-transform: translate(-195%, 50%);
    -o-transform: translate(-195%, 50%);
    transform: translate(-195%, 50%);
  }

  .ag-money_icon-left-1 {
    -webkit-transform: translate(30%, -310%);
    -moz-transform: translate(30%, -310%);
    -ms-transform: translate(30%, -310%);
    -o-transform: translate(30%, -310%);
    transform: translate(30%, -310%);
  }
  .ag-money_icon-left-3 {
    -webkit-transform: translate(125%, -195%);
    -moz-transform: translate(125%, -195%);
    -ms-transform: translate(125%, -195%);
    -o-transform: translate(125%, -195%);
    transform: translate(125%, -195%);
  }
  .ag-money_icon-left-5 {
    -webkit-transform: translate(150%, -90%);
    -moz-transform: translate(150%, -90%);
    -ms-transform: translate(150%, -90%);
    -o-transform: translate(150%, -90%);
    transform: translate(150%, -90%);
  }
  .ag-money_icon-left-6 {
    -webkit-transform: translate(90%, 50%);
    -moz-transform: translate(90%, 50%);
    -ms-transform: translate(90%, 50%);
    -o-transform: translate(90%, 50%);
    transform: translate(90%, 50%);
  }
}

@media (min-width: 980px) and (max-width: 1161px) {
  .ag-money_icon-right-3 {
    -webkit-transform: translate(-260%, -190%);
    -moz-transform: translate(-260%, -190%);
    -ms-transform: translate(-260%, -190%);
    -o-transform: translate(-260%, -190%);
    transform: translate(-260%, -190%);
  }
  .ag-money_icon-right-4 {
    -webkit-transform: translate(-250%, -85%);
    -moz-transform: translate(-250%, -85%);
    -ms-transform: translate(-250%, -85%);
    -o-transform: translate(-250%, -85%);
    transform: translate(-250%, -85%);
  }
}

@media only screen and (max-height: 700px) and (max-width: 479px) {
  .ag-money_icon-right-2 {
    -webkit-transform: translate(-105%, -220%);
    -moz-transform: translate(-105%, -220%);
    -ms-transform: translate(-105%, -220%);
    -o-transform: translate(-105%, -220%);
    transform: translate(-105%, -220%);
  }
  .ag-money_icon-right-3 {
    width: 120px;

    -webkit-transform: translate(-170%, -125%);
    -moz-transform: translate(-170%, -125%);
    -ms-transform: translate(-170%, -125%);
    -o-transform: translate(-170%, -125%);
    transform: translate(-170%, -125%);
  }
  .ag-money_icon-right-4 {
    -webkit-transform: translate(-255%, -85%);
    -moz-transform: translate(-255%, -85%);
    -ms-transform: translate(-255%, -85%);
    -o-transform: translate(-255%, -85%);
    transform: translate(-255%, -85%);
  }
  .ag-money_icon-left-1 {
    width: 115px;

    -webkit-transform: translate(35%, -235%);
    -moz-transform: translate(35%, -235%);
    -ms-transform: translate(35%, -235%);
    -o-transform: translate(35%, -235%);
    transform: translate(35%, -235%);
  }
  .ag-money_icon-left-3 {
    width: 130px;

    -webkit-transform: translate(60%, -135%);
    -moz-transform: translate(60%, -135%);
    -ms-transform: translate(60%, -135%);
    -o-transform: translate(60%, -135%);
    transform: translate(60%, -135%);
  }
  .ag-money_icon-left-5 {
    -webkit-transform: translate(150%, -90%);
    -moz-transform: translate(150%, -90%);
    -ms-transform: translate(150%, -90%);
    -o-transform: translate(150%, -90%);
    transform: translate(150%, -90%);
  }
  .ag-money_icon-right-6 {
    width: 115px;

    -webkit-transform: translate(-135%, 50%);
    -moz-transform: translate(-135%, 50%);
    -ms-transform: translate(-135%, 50%);
    -o-transform: translate(-135%, 50%);
    transform: translate(-135%, 50%);
  }
  .ag-money_icon-left-6 {
    width: 130px;

    -webkit-transform: translate(30%, 50%);
    -moz-transform: translate(30%, 50%);
    -ms-transform: translate(30%, 50%);
    -o-transform: translate(30%, 50%);
    transform: translate(30%, 50%);
  }
}
</style>
</head>
<body>
<div class="ag-primary-block">
<div class="js-primary_btn-wrap ag-primary_btn-wrap">
<h3>Insuffient balance</h3>
        <a href="updateWallet.jsp" class="js-primary_btn ag-base-btn ag-primary_btn">Recharge your wallet!</a>

        <div class="js-money_anim ag-money_anim-right-1">
          <svg class="ag-money_icon ag-money_icon-right-1">
            <use xlink:href="#svg-money_right-1"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-right-2">
          <svg class="ag-money_icon ag-money_icon-right-2">
            <use xlink:href="#svg-money_right-2"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-right-3">
          <svg class="ag-money_icon ag-money_icon-right-3">
            <use xlink:href="#svg-money_right-3"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-right-4">
          <svg class="ag-money_icon ag-money_icon-right-4">
            <use xlink:href="#svg-money_right-4"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-right-5">
          <svg class="ag-money_icon ag-money_icon-right-5">
            <use xlink:href="#svg-money_right-5"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-right-6">
          <svg class="ag-money_icon ag-money_icon-right-6">
            <use xlink:href="#svg-money_right-6"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-left-1">
          <svg class="ag-money_icon ag-money_icon-left-1">
            <use xlink:href="#svg-money_left-1"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-left-2">
          <svg class="ag-money_icon ag-money_icon-left-2">
            <use xlink:href="#svg-money_left-2"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-left-3">
          <svg class="ag-money_icon ag-money_icon-left-3">
            <use xlink:href="#svg-money_left-3"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-left-4">
          <svg class="ag-money_icon ag-money_icon-left-4">
            <use xlink:href="#svg-money_left-4"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-left-5">
          <svg class="ag-money_icon ag-money_icon-left-5">
            <use xlink:href="#svg-money_left-5"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-left-6">
          <svg class="ag-money_icon ag-money_icon-left-6">
            <use xlink:href="#svg-money_left-6"></use>
          </svg>
        </div>

        <div class="js-money_anim ag-money_anim-left-7">
          <svg class="ag-money_icon ag-money_icon-left-7">
            <use xlink:href="#svg-money_left-7"></use>
          </svg>
        </div>
      </div>
  </div>


<svg xmlns="http://www.w3.org/2000/svg" style="display: none">
    <symbol id="svg-money_right-1" viewBox="0 0 184 180">
      <g>
        <path d="M33.913 136.662C70.7859 103.997 115.735 99.9238 146 114.268C152.8 101.207 165.341 88.9068 183.391 82.1705C161.787 52.7454 118.165 32.8537 67.5624 39.2707C45.6784 68.1666 34.1809 102.409 33.913 136.662Z" fill="#A8F6B0"/>
        <path d="M36.4926 128.439C73.3096 99.6996 116.14 96.9667 145.391 110.938C152.067 99.2848 163.22 88.449 178.683 81.6884C156.452 54.7188 114.62 37.4207 66.8016 44.1727C48.5798 69.5747 38.2889 98.8602 36.4926 128.439Z" fill="#26C281"/>
        <path d="M77.2136 59.4328C81.8619 58.9315 87.7577 56.0453 93.7791 52.2782C116.289 52.9399 136.615 59.2045 152.802 69.2074C151.593 72.7867 152.841 76.0929 156.073 78.2983C159.329 80.5375 162.391 82.9369 165.251 85.4745C158.62 89.9193 153.068 95.149 148.601 100.773C145.383 98.9651 141.996 97.3405 138.458 95.9139C135.05 94.5189 130.569 95.1584 126.61 97.5306C108.891 93.3047 88.3759 93.9819 67.6491 100.961C66.3304 97.5668 63.5364 95.9439 59.3842 97.5003C53.9169 99.5774 48.4506 102.078 43.0451 105.018C46.2557 90.378 51.6249 76.0495 59.08 62.5139C65.1908 61.0755 71.2498 60.0558 77.2136 59.4328Z" fill="#A8F6B0"/>
        <path d="M92.3766 74.4391C83.664 89.1116 87.2603 99.8718 95.6318 98.7322C104.18 97.6731 114.975 88.3459 123.85 77.7976C132.563 67.2392 136.399 57.0281 127.787 54.0267C119.268 50.9502 101.033 59.7408 92.3766 74.4391Z" fill="#26C281"/>
        <path d="M132.283 82.1199C129.001 85.9844 129.722 90.0013 133.186 91.1321C136.67 92.2646 141.484 90.5824 144.61 87.3438C147.715 84.1034 148.115 80.0903 144.792 78.3377C141.485 76.5758 135.549 78.2541 132.283 82.1199Z" fill="#26C281"/>
        <path d="M65.2438 80.3731C62.2876 87.1382 63.9672 91.481 68.218 90.225C72.4923 88.9734 77.9636 83.256 81.1712 77.3113C84.3544 71.3726 83.9155 66.8435 79.4002 67.2755C74.8989 67.7006 68.1865 73.6096 65.2438 80.3731Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_right-2" viewBox="0 0 190 206">
      <g>
        <path d="M32.4989 37.5657C84.648 50.2207 136.908 80.8201 177.98 129.615C167.397 147.509 155.403 163.915 142.277 178.641C109.731 134.145 66.5332 106.105 23.7729 93.9867C28.5668 76.0278 31.5412 57.1196 32.4989 37.5657Z" fill="#A8F6B0"/>
        <path d="M35.558 41.9832C84.9246 54.8347 134.197 84.0502 173.447 129.851C164.183 145.457 153.83 159.92 142.582 173.11C110.516 130.859 68.857 103.795 27.3712 91.4708C31.5451 75.6348 34.3196 59.0739 35.558 41.9832Z" fill="#26C281"/>
        <path d="M51.6248 87.1108C56.1164 88.9361 59.5623 92.6457 61.2379 96.8672C82.8226 107.167 103.799 121.462 122.836 139.813C127.163 139.189 132.108 140.919 136.118 145.207C140.149 149.511 144.074 154.003 147.883 158.685C153.069 151.829 158.024 144.684 162.724 137.255C158.524 132.388 154.204 127.714 149.773 123.24C145.499 118.911 142.614 113.292 141.374 107.718C119.501 88.1416 95.5815 72.9537 70.9916 62.1233C67.2514 63.7297 62.5659 63.753 57.814 61.9256C51.5155 59.5023 45.1866 57.364 38.8438 55.5083C37.7045 64.1301 36.1715 72.5963 34.2687 80.876C40.0686 82.6836 45.8617 84.764 51.6248 87.1108Z" fill="#A8F6B0"/>
        <path d="M81.8084 87.4345C85.5333 76.3145 96.5162 71.1908 106.934 77.7262C117.341 84.2225 121.742 99.6429 116.337 110.309C110.955 121.014 99.1745 123.354 90.4338 117.325C81.6828 111.244 78.0846 98.6138 81.8084 87.4345Z" fill="#26C281"/>
        <path d="M128.234 118.08C130.409 113.97 135.607 113.549 139.847 117.496C144.086 121.434 145.512 128.159 143.045 132.156C140.579 136.162 135.388 136.022 131.445 132.2C127.493 128.364 126.059 122.2 128.234 118.08Z" fill="#26C281"/>
        <path d="M54.7312 72.9622C55.7528 68.5733 60.402 66.4328 65.2248 68.5001C70.0464 70.5591 72.9607 76.014 71.6295 80.3579C70.3027 84.7079 65.4857 86.3455 60.9707 84.3337C56.4544 82.3137 53.7132 77.3625 54.7312 72.9622Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_right-3" viewBox="0 0 177 103">
      <g>
        <path d="M0 76.755C11.9147 26.4081 72.4817 -11.8779 146.002 3.39979C161.351 23.8025 170.964 43.6166 176.197 60.9038C117.539 35.0911 64.9722 62.1185 57.5377 102.227C43.7372 92.0177 24.5605 82.6487 0 76.755Z" fill="#A8F6B0"/>
        <path d="M5.30125 74.7905C18.3594 27.8703 75.1886 -7.11651 144.24 6.21911C157.384 23.8025 166.165 40.8985 171.481 56.1836C114.701 33.9776 64.6723 59.5466 55.5282 97.8363C42.9349 88.8609 26.1988 80.5866 5.30125 74.7905Z" fill="#26C281"/>
        <path d="M53.8336 72.8635C56.203 69.2268 60.3945 67.3485 64.5711 67.2998C79.0239 51.5085 102.287 41.4759 129.734 41.967C131.395 39.1439 135.621 37.3931 141.9 38.2254C148.195 39.0577 154.632 40.4073 161.148 42.3119C157.455 34.51 152.859 26.3669 147.262 18.0476C140.097 16.6267 133.037 15.7607 126.154 15.4195C119.496 15.0708 112.102 13.3612 105.316 10.8156C73.9964 13.5637 47.8313 27.0492 31.2939 46.2785C32.4786 50.3163 31.7363 54.7065 29.1869 58.6806C25.7902 63.9443 23.0458 69.5193 21.0026 75.3041C30.6303 79.0008 39.1558 83.2073 46.5903 87.6912C48.3486 82.495 50.7818 77.5199 53.8336 72.8635Z" fill="#A8F6B0"/>
        <path d="M61.1069 45.881C50.8005 38.439 47.2314 26.5693 58.1863 20.8369C69.0475 15.0258 88.7379 19.8996 97.3571 29.3961C106.126 38.8851 102.238 47.5006 93.0494 51.2835C83.7066 55.0401 71.5144 53.443 61.1069 45.881Z" fill="#26C281"/>
        <path d="M110.738 25.6808C107.438 21.8904 109.216 18.1 115.409 17.8564C121.588 17.5902 129.48 21.313 132.374 25.4746C135.287 29.6473 132.464 32.3729 126.69 32.2717C120.898 32.1517 114.052 29.4974 110.738 25.6808Z" fill="#26C281"/>
        <path d="M40.5767 65.2452C36.2202 62.8308 34.3719 57.6532 37.4237 53.8404C40.4567 50.02 47.0514 49.364 51.1942 52.142C55.3632 54.9201 55.6969 59.7715 52.8813 63.2319C50.0395 66.6849 44.9594 67.6671 40.5767 65.2452Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_right-4" viewBox="0 0 165 124">
      <g>
        <path d="M163.829 0C167.724 42.8112 140.708 95.2501 84.8913 123.845C51.5429 113.801 22.2698 95.0289 0 69.9361C61.1594 73.0028 105.86 39.0058 118.93 1.41342C131.875 5.40999 147.614 5.7399 163.829 0Z" fill="#A8F6B0"/>
        <path d="M160.957 3.69287C162.412 44.8844 135.339 93.518 82.3044 120.174C53.6949 110.966 28.2646 95.2013 7.98938 74.495C65.9582 73.9813 107.675 40.8429 120.508 4.50642C132.441 7.75316 146.448 8.0231 160.957 3.69287Z" fill="#26C281"/>
        <path d="M122.559 24.9168C120.62 28.7634 116.703 31.8039 112.144 33.1911C99.4679 50.9582 79.7475 66.3296 54.5234 75.3012C55.5807 79.1553 53.6236 82.7545 47.895 84.4903C42.1364 86.2074 36.134 87.6096 29.9217 88.6593C41.0679 97.1173 53.305 104.301 66.3969 110.014C72.3055 107.581 77.9442 104.855 83.2942 101.882C88.483 99.0219 95.9774 97.2673 103.697 96.2888C125.869 79.504 141.064 58.239 148.694 36.5765C146.441 34.1171 145.904 30.4505 147.078 26.2965C148.623 20.789 149.676 15.2816 150.25 9.84534C142.74 10.9101 135.471 10.8538 128.662 9.89032C127.11 14.9479 125.074 19.9792 122.559 24.9168Z" fill="#A8F6B0"/>
        <path d="M121.899 49.4097C134.567 51.3742 142.511 58.1414 136.554 67.3229C130.702 76.5233 110.531 82.0607 95.1526 76.6957C79.7437 71.3757 77.1681 60.882 85.6973 55.1796C94.3278 49.3309 109.111 47.5201 121.899 49.4097Z" fill="#26C281"/>
        <path d="M85.9073 85.3037C92.0409 87.5532 93.758 91.606 89.0716 94.6165C84.4039 97.6308 74.7799 97.7808 68.2902 94.6803C61.7855 91.5835 61.1481 87.167 66.1682 85.0113C71.207 82.8443 79.7513 83.058 85.9073 85.3037Z" fill="#26C281"/>
        <path d="M136.142 25.9514C140.367 26.1051 142.961 29.3256 141.376 33.5546C139.805 37.7798 134.177 41.1091 129.39 40.5805C124.591 40.0593 122.911 36.2465 125.041 32.4074C127.185 28.5458 131.898 25.8052 136.142 25.9514Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_right-5" viewBox="0 0 117 122">
      <g>
        <path d="M9.91238 8.71778C42.9701 17.6196 76.0734 26.3592 109.215 34.9409C105.477 49.3855 106.85 64.6954 113.129 78.2692C82.0532 92.633 50.9074 106.849 19.6951 120.913C3.56884 85.7614 0.116565 46.1142 9.91238 8.71778Z" fill="#A8F6B0"/>
        <path d="M10.3707 16.0961C42.3715 23.2642 74.4076 30.2823 106.472 37.1547C103.651 50.3379 104.886 64.083 110.032 76.5738C79.7032 89.0515 49.3208 101.391 18.8771 113.593C6.25721 82.6942 3.29108 48.6987 10.3707 16.0961Z" fill="#26C281"/>
        <path d="M27.1043 86.507C30.4407 85.7301 34.1891 88.3754 37.7732 92.7372C53.8951 87.8232 70.01 82.8722 86.1062 77.8814C87.0521 73.6998 89.7389 70.7834 93.2454 69.9722C96.7791 69.1285 100.313 68.2848 103.846 67.4411C102.242 60.754 101.633 53.8675 102.038 47.0057C98.4123 46.7887 94.7862 46.5717 91.1561 46.3512C87.66 46.1563 84.5843 43.8716 82.887 40.0991C66.0436 37.9712 49.2009 35.8093 32.3654 33.6017C29.6435 38.2492 26.4922 41.2755 23.174 41.0494C18.8006 40.727 14.4271 40.4046 10.057 40.0781C8.9206 56.6885 10.3516 73.3823 14.2993 89.558C18.574 88.5417 22.8374 87.5264 27.1043 86.507Z" fill="#A8F6B0"/>
        <path d="M43.0864 62.5309C41.4673 44.386 50.2391 30.9003 57.3125 32.4762C64.5043 33.9886 68.0863 46.4631 69.4334 60.2809C70.564 74.1183 69.2485 87.0106 62.4132 89.7197C55.7061 92.4737 44.6794 80.6781 43.0864 62.5309Z" fill="#26C281"/>
        <path d="M78.1701 57.7005C77.8128 52.6395 80.7331 48.6441 84.1169 48.8041C87.5155 48.9626 90.1246 52.5771 90.4376 56.8591C90.7282 61.1431 88.6534 65.0807 85.3062 65.6967C81.9749 66.3225 78.5203 62.7659 78.1701 57.7005Z" fill="#26C281"/>
        <path d="M22.7426 61.3227C22.1846 53.3022 25.2189 46.9098 28.6006 47.0887C32.0043 47.2619 34.5022 53.3033 35.0158 60.5448C35.4999 67.7927 33.8458 74.0864 30.4931 74.6841C27.1636 75.2872 23.2818 69.3449 22.7426 61.3227Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_right-6" viewBox="0 0 179 105">
      <g>
        <path d="M178.631 40.0406C137.896 74.9749 82.5331 99.5166 18.9368 104.349C10.595 85.3075 4.28524 65.9882 0 46.7328C55.127 46.3091 103.119 27.6273 137.934 0C149.71 14.3816 163.319 27.841 178.631 40.0406Z" fill="#A8F6B0"/>
        <path d="M173.258 39.9431C133.99 72.5042 81.4946 95.4301 21.3925 100.533C14.1379 83.8978 8.44677 67.0455 4.31149 50.212C57.3353 48.866 103.637 30.8628 137.874 4.39026C148.289 17.0285 160.11 28.9545 173.258 39.9431Z" fill="#26C281"/>
        <path d="M127.245 26.6224C123.14 29.2018 118.116 29.8316 113.711 28.7257C92.7419 40.228 68.8863 48.9034 42.8712 53.6348C40.8504 57.5114 36.5576 60.5144 30.7353 61.2643C24.8866 62.0216 18.9481 62.584 12.9232 62.9401C15.4576 71.1544 18.3632 79.35 21.6474 87.5043C28.0509 86.9382 34.3682 86.1622 40.588 85.1799C46.5978 84.2389 52.8438 85.1799 58.0926 87.4294C86.7583 81.1121 113.058 70.5696 136.213 56.9378C137.094 52.9637 139.812 49.1471 144.071 46.3578C149.717 42.6611 155.15 38.7733 160.361 34.7093C154.029 28.7482 148.053 22.5584 142.444 16.1774C137.589 19.829 132.516 23.3157 127.245 26.6224Z" fill="#A8F6B0"/>
        <path d="M109.351 50.9317C116.2 60.4507 113.943 72.3579 102.553 76.9956C91.201 81.6483 76.1146 76.2121 70.6147 65.5946C65.0697 54.9733 70.0523 44.0446 80.0512 40.4717C90.0988 36.9213 102.452 41.379 109.351 50.9317Z" fill="#26C281"/>
        <path d="M57.3578 70.7121C59.4235 74.8774 56.7279 79.3426 51.048 80.4786C45.3756 81.6183 39.0846 78.8477 37.2812 74.51C35.4704 70.1685 38.6159 66.037 44.0221 65.0697C49.4434 64.1024 55.2845 66.5393 57.3578 70.7121Z" fill="#26C281"/>
        <path d="M136.914 37.4086C139.88 40.8015 138.901 45.8254 134.406 48.5322C129.918 51.2428 123.788 50.4217 121.04 46.8038C118.285 43.1859 119.769 38.3196 124.04 35.8302C128.317 33.3445 133.937 34.0119 136.914 37.4086Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_left-1" viewBox="0 0 155 154">
      <g>
        <path d="M148.319 80.0209C118.594 97.0055 88.9512 114.137 59.3921 131.408C51.8634 118.526 40.0986 108.633 26.0773 103.43C37.9987 71.3374 50.0739 39.3008 62.3036 7.32535C98.5183 20.8955 128.911 46.5878 148.319 80.0209Z" fill="#A8F6B0"/>
        <path d="M142.794 75.1099C115.041 92.5794 87.3678 110.18 59.7777 127.904C52.4875 116.564 41.9236 107.683 29.4696 102.449C42.19 72.2218 55.0461 42.0544 68.0426 11.9412C98.773 24.9662 124.838 46.9919 142.794 75.1099Z" fill="#26C281"/>
        <path d="M81.2969 36.9546C79.4776 39.8573 74.954 40.6226 69.3373 40.0544C61.3639 54.9034 53.4216 69.7735 45.5206 84.6587C47.7968 88.2917 47.9463 92.2544 46.0305 95.3012C44.1184 98.3903 42.2063 101.479 40.2942 104.568C46.1452 108.182 51.4312 112.637 55.9798 117.791C58.7051 115.389 61.4304 112.988 64.161 110.585C66.7785 108.26 70.5706 107.712 74.4336 109.192C87.882 98.8305 101.354 88.4933 114.853 78.1935C113.508 72.9782 113.611 68.6102 116.124 66.432C119.454 63.5782 122.783 60.7244 126.114 57.876C115.213 45.2917 102.432 34.4578 88.2303 25.7652C85.9142 29.499 83.6053 33.2242 81.2969 36.9546Z" fill="#A8F6B0"/>
        <path d="M86.8578 65.2276C100.795 76.9583 104.077 92.7075 97.9487 96.5749C91.7809 100.571 80.4478 94.2461 69.7532 85.3933C59.1984 76.374 51.045 66.3011 53.9845 59.5616C56.8014 52.8807 72.9374 53.4767 86.8578 65.2276Z" fill="#26C281"/>
        <path d="M65.3741 93.3815C69.1946 96.7199 69.9389 101.612 67.4258 103.884C64.903 106.167 60.5047 105.442 57.2646 102.625C54.0391 99.7904 52.7357 95.5347 54.676 92.7386C56.5981 89.9467 61.5555 90.0349 65.3741 93.3815Z" fill="#26C281"/>
        <path d="M102.141 51.746C108.19 57.0425 110.543 63.7159 108.018 65.9724C105.481 68.2485 99.4512 65.7233 93.9829 60.9482C88.5311 56.1477 85.2686 50.5172 87.2258 47.7302C89.1627 44.9557 96.1045 46.4352 102.141 51.746Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_left-2" viewBox="0 0 199 146">
      <g>
        <path d="M188.971 62.3243C140.882 38.5089 81.1778 28.3714 18.3526 39.3644C14.962 59.8748 13.6091 80.1533 14.2026 99.8709C67.733 86.6927 118.85 92.968 159.4 111.161C167.267 94.3204 177.139 77.9217 188.971 62.3243Z" fill="#A8F6B0"/>
        <path d="M183.788 63.7431C137.705 41.8663 81.1787 32.5879 21.6734 42.458C18.7432 60.3677 17.3817 78.1029 17.5235 95.4363C69.2429 83.6704 118.554 89.7048 158.26 106.921C165.238 92.1055 173.754 77.6337 183.788 63.7431Z" fill="#26C281"/>
        <path d="M142.478 87.9949C137.864 86.507 132.84 87.135 128.843 89.2927C105.686 83.3141 80.4282 80.7868 54.0495 82.6141C51.1355 79.3552 46.235 77.503 40.4074 78.2115C34.5526 78.9193 28.6586 79.8381 22.7319 80.9781C23.1633 72.3925 23.959 63.7336 25.1318 55.0213C31.4773 53.9915 37.7909 53.1864 44.0609 52.6052C50.1173 52.0358 55.9386 49.5841 60.4709 46.1102C89.8093 45.1665 117.897 48.9008 143.697 56.4044C145.53 60.0386 149.105 63.0674 153.921 64.7209C160.304 66.9116 166.527 69.3404 172.579 71.9945C167.912 79.3325 163.646 86.8044 159.783 94.3711C154.178 92.0289 148.402 89.9002 142.478 87.9949Z" fill="#A8F6B0"/>
        <path d="M119.144 68.8466C123.436 57.9329 118.313 46.9494 106.132 45.2625C93.9827 43.5517 80.7019 52.539 77.9888 64.1846C75.2331 75.8449 82.7558 85.2082 93.3269 86.2061C103.94 87.1702 114.813 79.805 119.144 68.8466Z" fill="#26C281"/>
        <path d="M63.8796 62.493C64.8548 57.947 61.1418 54.284 55.3571 54.5832C49.5788 54.8769 44.1648 59.1127 43.4864 63.7611C42.8016 68.415 46.8684 71.6437 52.3463 71.2485C57.8387 70.8496 62.8989 67.048 63.8796 62.493Z" fill="#26C281"/>
        <path d="M149.19 75.1582C151.228 71.1389 149.041 66.5113 144.017 64.996C139 63.4752 133.262 65.782 131.49 69.9657C129.712 74.1512 132.35 78.5014 137.102 79.8614C141.861 81.2159 147.143 79.1838 149.19 75.1582Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_left-3" viewBox="0 0 185 176">
      <g>
        <path d="M153.5 130.133C114.225 100.399 69.0962 99.7928 40.0235 116.421C32.2393 103.921 18.7907 92.621 0.275481 87.292C19.5548 56.2934 61.5186 33.1078 112.465 35.6167C136.505 62.7452 150.6 96.0029 153.5 130.133Z" fill="#A8F6B0"/>
        <path d="M150.296 122.133C111.379 96.3086 68.4656 96.8756 40.3742 113.054C32.8226 101.948 20.8697 92.0015 4.93324 86.4493C25.0248 57.8509 65.4043 37.3888 113.6 40.4457C133.72 64.372 146.232 92.78 150.296 122.133Z" fill="#26C281"/>
        <path d="M104.392 56.4609C99.7185 56.3185 93.6184 53.894 87.3252 50.6008C64.9333 52.9905 45.1487 60.7989 29.7782 72.0162C31.2589 75.492 30.2682 78.8843 27.2154 81.3316C24.1414 83.8145 21.2726 86.4421 18.6163 89.192C25.5693 93.114 31.5071 97.9015 36.3928 103.166C39.4624 101.116 42.7144 99.2355 46.1325 97.5412C49.423 95.8885 53.94 96.1817 58.0696 98.2425C75.4117 92.6674 95.9177 91.7658 117.12 97.1312C118.173 93.6457 120.835 91.8129 125.094 93.0456C130.705 94.6964 136.347 96.7689 141.963 99.2857C137.636 84.9353 131.182 71.0618 122.708 58.1393C116.505 57.1748 110.386 56.6238 104.392 56.4609Z" fill="#A8F6B0"/>
        <path d="M90.4269 72.5882C100.241 86.5477 97.4827 97.5524 89.0484 97.0596C80.4437 96.6607 68.9646 88.1907 59.305 78.3557C49.8056 68.4982 45.1966 58.6122 53.5529 54.9577C61.8099 51.2356 80.6666 58.5987 90.4269 72.5882Z" fill="#26C281"/>
        <path d="M51.2289 83.3135C54.7983 86.9143 54.3877 90.9748 51.0216 92.3684C47.6345 93.7653 42.7057 92.4581 39.34 89.4693C35.9952 86.4772 35.2874 82.5067 38.4665 80.5038C41.6281 78.4929 47.6753 79.7101 51.2289 83.3135Z" fill="#26C281"/>
        <path d="M117.936 76.4193C121.403 82.9372 120.062 87.3963 115.727 86.4707C111.369 85.5513 105.475 80.2713 101.82 74.5907C98.1897 68.9142 98.2792 64.3649 102.814 64.4486C107.335 64.5264 114.482 69.902 117.936 76.4193Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_left-4" viewBox="0 0 133 137">
      <g>
        <path d="M93.0602 134.216C65.2438 114.259 37.3277 94.4369 9.32014 74.7496C17.8989 62.5419 21.9968 47.7269 20.8916 32.812C55.0338 30.2928 89.1893 27.9367 123.354 25.7464C126.09 64.3232 115.38 102.652 93.0602 134.216Z" fill="#A8F6B0"/>
        <path d="M95.2256 127.148C67.7889 109.185 40.2665 91.3501 12.6664 73.6417C19.9431 62.2925 23.62 48.9908 23.1952 35.4883C55.9743 34.4719 88.7554 33.6037 121.546 32.8859C122.494 66.2492 113.317 99.1167 95.2256 127.148Z" fill="#26C281"/>
        <path d="M104.319 55.3494C100.923 54.9035 98.344 51.109 96.5226 45.7655C79.7023 44.6967 62.8756 43.665 46.0525 42.6772C43.6966 46.2591 40.1558 48.0445 36.588 47.5708C32.9833 47.1181 29.3787 46.6654 25.774 46.2127C24.9242 53.0368 23.0732 59.6977 20.2808 65.9788C23.599 67.457 26.9172 68.9352 30.238 70.418C33.4423 71.8298 35.5182 75.0502 35.7806 79.1785C50.8001 87.0932 65.807 95.0395 80.791 103.026C84.9734 99.6325 88.9875 97.9075 92.0143 99.2859C95.9951 101.126 99.9759 102.965 103.952 104.808C110.857 89.6576 115.387 73.5267 117.379 56.9959C113.02 56.4442 108.672 55.8955 104.319 55.3494Z" fill="#A8F6B0"/>
        <path d="M80.9272 72.1745C76.0626 89.7299 63.1089 99.2699 57.0414 95.3074C50.8407 91.3627 51.8739 78.4253 55.4716 65.0163C59.2789 51.665 65.0437 40.0586 72.3952 39.926C79.6423 39.7063 85.8171 54.626 80.9272 72.1745Z" fill="#26C281"/>
        <path d="M46.3855 64.3599C44.9404 69.2233 40.8016 71.9367 37.6902 70.5971C34.5644 69.2536 33.3929 64.9525 34.6056 60.8339C35.8399 56.7213 39.1668 53.7648 42.5169 54.3651C45.8555 54.9506 47.8388 59.4949 46.3855 64.3599Z" fill="#26C281"/>
        <path d="M99.547 80.459C97.2491 88.1635 92.1608 93.0808 89.058 91.7242C85.9325 90.3652 85.7185 83.8313 87.784 76.8716C89.8795 69.9163 93.641 64.6062 96.9897 65.2256C100.319 65.8319 101.863 72.7595 99.547 80.459Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_left-5" viewBox="0 0 205 165">
      <g>
        <path d="M189.668 104.914C138.715 121.75 78.1789 123.414 17.5165 103.718C17.036 82.9347 18.5406 62.6669 21.8936 43.2275C73.0466 63.7831 124.538 64.7389 167.239 52.4129C172.667 70.1905 180.141 87.8116 189.668 104.914Z" fill="#A8F6B0"/>
        <path d="M184.736 102.783C136.04 117.98 78.7712 119.239 21.2383 101.121C20.8489 82.977 21.9882 65.2262 24.5596 48.084C74.1177 66.9873 123.787 67.9284 165.515 56.451C170.347 72.0989 176.75 87.6221 184.736 102.783Z" fill="#26C281"/>
        <path d="M147.236 72.9769C142.458 73.8029 137.572 72.4765 133.918 69.7795C110.151 72.4512 84.7881 71.4112 58.9264 65.9023C55.5841 68.7202 50.4723 69.8668 44.8017 68.348C39.104 66.8261 33.3971 65.0897 27.6889 63.1298C26.9119 71.691 26.4853 80.376 26.4246 89.1666C32.5629 91.0762 38.7012 92.7588 44.8277 94.2137C50.7444 95.6269 56.1643 98.8707 60.1646 102.946C89.0807 107.995 117.414 108.237 144.012 104.426C146.337 101.085 150.301 98.5874 155.301 97.6256C161.928 96.3517 168.43 94.8198 174.795 93.0408C171.203 85.1207 168.027 77.1243 165.264 69.0907C159.385 70.6236 153.368 71.9212 147.236 72.9769Z" fill="#A8F6B0"/>
        <path d="M121.446 88.6631C124.165 100.071 117.553 110.227 105.255 110.189C92.9864 110.179 81.0972 99.4181 80.0443 87.5071C78.9512 75.5755 87.7128 67.3599 98.3194 67.8544C108.962 68.3882 118.695 77.2056 121.446 88.6631Z" fill="#26C281"/>
        <path d="M65.8373 87.2032C66.1654 91.841 61.9752 94.947 56.2897 93.8395C50.6097 92.7383 45.8433 87.785 45.8235 83.0874C45.7982 78.3835 50.2777 75.7571 55.646 76.9167C61.0281 78.082 65.5051 82.5556 65.8373 87.2032Z" fill="#26C281"/>
        <path d="M152.081 86.628C153.535 90.8934 150.721 95.1686 145.534 95.9643C140.353 96.7663 134.995 93.6776 133.828 89.2868C132.654 84.8932 135.876 80.956 140.772 80.2759C145.673 79.6022 150.618 82.355 152.081 86.628Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_left-6" viewBox="0 0 200 179">
      <g>
        <path d="M0.338331 65.07C13.7673 105.907 59.3889 143.302 121.971 147.374C148.587 124.911 167.997 96.057 178.468 64.1831C123.558 91.289 69.0311 77.843 42.1057 48.5339C31.8123 57.3435 17.4992 63.8974 0.338331 65.07Z" fill="#A8F6B0"/>
        <path d="M4.44072 67.3185C19.4663 105.699 63.6281 139.58 122.888 142.979C145.487 123.165 162.563 98.5963 172.947 71.5403C119.542 94.0931 68.0955 80.2497 41.8857 51.9994C32.2235 59.7188 19.4762 65.5298 4.44072 67.3185Z" fill="#26C281"/>
        <path d="M48.1102 71.5453C51.4169 74.3056 56.2201 75.5399 60.955 75.0022C79.6448 86.2732 103.848 92.5475 130.561 90.7626C131.121 94.7196 134.347 97.2454 140.294 96.5631C146.261 95.8517 152.326 94.7545 158.444 93.2505C151.574 105.44 143.197 116.893 133.451 127.336C127.062 127.45 120.805 127.188 114.714 126.585C108.816 126.02 101.241 127.387 93.7682 129.555C66.7532 122.957 44.3619 109.476 28.7561 92.6263C29.8471 89.4742 28.8828 85.8963 26.156 82.55C22.5509 78.1091 19.3966 73.4732 16.711 68.712C24.0257 66.7065 30.6749 63.7675 36.5405 60.1791C39.9737 64.2041 43.8404 68.013 48.1102 71.5453Z" fill="#A8F6B0"/>
        <path d="M58.4439 93.7612C47.598 100.596 42.995 109.962 52.109 116.022C61.1342 122.141 81.8446 119.211 93.8276 108.18C105.856 97.1771 104.052 86.5235 93.9592 84.6779C83.7157 82.7382 69.4297 86.9478 58.4439 93.7612Z" fill="#26C281"/>
        <path d="M105.731 112.408C100.996 116.908 101.03 121.31 106.526 122.211C112.007 123.124 120.899 119.439 125.623 114.016C130.363 108.59 129.194 104.284 123.73 104.299C118.245 104.312 110.489 107.902 105.731 112.408Z" fill="#26C281"/>
        <path d="M36.0555 77.8898C32.2388 79.7091 31.137 83.6951 34.2721 86.9463C37.3919 90.2001 43.8788 91.0203 48.0626 88.6336C52.2597 86.2493 52.2868 82.083 48.8076 79.4055C45.3058 76.7133 39.8923 76.07 36.0555 77.8898Z" fill="#26C281"/>
      </g>
    </symbol>

    <symbol id="svg-money_left-7" viewBox="0 0 191 130">
      <g>
        <path d="M186.313 53.7123C166.391 101.46 100.416 129.416 30.347 102.416C18.5105 79.7936 12.2388 58.6827 9.87821 40.7756C63.5735 75.7605 119.828 57.617 133.669 19.2458C145.631 31.5579 163.034 43.9132 186.313 53.7123Z" fill="#A8F6B0"/>
        <path d="M180.764 54.791C160.268 98.972 98.517 124.278 32.543 99.9194C22.4246 80.437 16.5333 62.1432 13.7666 46.1982C66.1935 77.3196 119.706 60.2034 134.94 23.9038C145.911 34.8029 161.083 45.6822 180.764 54.791Z" fill="#26C281"/>
        <path d="M132.562 48.821C129.634 52.0252 125.193 53.1988 121.064 52.5695C104.241 65.8075 79.6586 71.9341 52.6544 66.9977C50.5577 69.514 46.1044 70.5564 40.0428 68.7165C33.9663 66.8743 27.8332 64.4984 21.7124 61.5622C24.091 69.8598 27.3058 78.6405 31.4798 87.7576C38.319 90.3217 45.1447 92.3213 51.8816 93.7744C58.3953 95.1984 65.4134 98.0845 71.6965 101.697C103.048 104.065 131.054 95.0021 150.491 78.7098C149.977 74.5333 151.421 70.3216 154.582 66.8136C158.787 62.1705 162.399 57.1145 165.354 51.7376C156.453 46.5284 148.723 40.9948 142.114 35.3644C139.536 40.2066 136.328 44.7212 132.562 48.821Z" fill="#A8F6B0"/>
        <path d="M121.008 74.2664C129.971 83.2815 131.568 95.5729 119.828 99.4526C108.168 103.425 89.5289 95.4222 82.5641 84.6534C75.4501 73.8678 80.6838 65.9969 90.3648 63.7546C100.193 61.5631 111.965 65.1165 121.008 74.2664Z" fill="#26C281"/>
        <path d="M68.7581 86.1494C71.3988 90.4246 69.0305 93.8766 62.8795 93.1125C56.7395 92.373 49.556 87.4194 47.375 82.8436C45.1773 78.2536 48.4051 76.0219 54.0858 77.0583C59.7821 78.1161 66.1068 81.8457 68.7581 86.1494Z" fill="#26C281"/>
        <path d="M144.407 58.4884C148.314 61.5775 149.298 66.9862 145.669 70.2536C142.056 73.5314 135.442 73.1092 131.805 69.696C128.142 66.2785 128.599 61.4372 131.939 58.4793C135.303 55.533 140.475 55.3877 144.407 58.4884Z" fill="#26C281"/>
      </g>
    </symbol>
  </svg>
</body>
<script>
(function ($) {
	  $(function () {

	    $('.js-primary_btn').hover(function() {
	      $(this).parent('.js-primary_btn-wrap').addClass('js-ag-animation');
	      $(this).parent('.js-primary_btn-wrap').children('.js-money_anim').removeClass('js-money_anim');
	    }, function() {
	      $(this).parent('.js-primary_btn-wrap').removeClass('js-ag-animation');
	      $(this).parent('.js-primary_btn-wrap').children('div').addClass('js-money_anim');
	    });

	  });
	})(jQuery);</script>
</html>