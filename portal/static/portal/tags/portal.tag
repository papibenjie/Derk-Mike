<portal>

  <div id="portal-container">
    <div id="portal-title-container">
      <h1>MIKE! MIKE!</h1>
    </div>
    <img id="mike-img" src="{this.opts.src}" height="100" width="100">
    <portal-nav></portal-nav>
  </div>

  <script>

  </script>

  <style>
  #portal-container {
    min-height: 300px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center; }

  #portal-title-container {
    position: relative;
    height: 100%;
  font-family: "Cinzel Decorative"; }

  #mike-img {
    margin-bottom: 50px;
    margin-top: 50px;
    border-radius: 50%;
    border-style: solid;
    border-color: black;
   }
   #mike-img:hover {

     border-color: blue;
    }

  </style>
</portal>

<portal-nav>
  <ul id="portal-nav">
    <li><a href="/that_mike">Ce mike</a></li>
    <li><a href="#">Parlons-en</a></li>
    <li><a href="#">Que dire</a></li>
  </ul>

  <style>
  #portal-nav {
    border: 1px solid #ccc;
    border-width: 1px 0;
    list-style: none;
    margin: 0;
    padding: 0;
    text-align: center; }
    #portal-nav li {
      display: inline; }
      #portal-nav li a:hover {
        background-color: lightpink;
        opacity: 0.5;}
      #portal-nav li a {
        display: inline-block;
        padding: 10px; }

  </style>

</portal-nav>
