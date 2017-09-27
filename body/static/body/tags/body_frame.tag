<body-frame>

  <div class="item">
    <img class="box" src="{ opts.src }" alt="">
    <span class="caption"><yield/></span>
  </div>

  <script>

  </script>

  <style>
  div {
    width: 120px; }

  div:hover > img {
    background-color: lightpink; }

  div:hover > span {
    color: red; }

  img {
    width: 100px;
    height: 100px;
    background-color: grey;
    color: #fff;
    border-radius: 5px;
    padding: 0.5em;
    font-size: 150%; }

  .caption {
    display: block; }

  </style>
</body-frame>
