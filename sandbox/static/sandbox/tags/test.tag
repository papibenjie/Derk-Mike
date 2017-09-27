<test>

  <div>
    <h1>{ opts.name }</h1>
    <h2>{ nb!=0?nb:"None" }</h2>
    <button onclick={ handleClick } name="button">Add 1</button>
  </div>


  <script>
    this.nb = 0
    this.handleClick = function handleClick() {
      this.nb += 1
    }
  </script>

  <style>
    div {
      text-align: center;
      border-color: blue;
      border-style: solid;
      display: inline-block;
      padding: 1%;
      margin-right: 10px;
    }
    div:hover {
      border-color: red;
    }
    h1 {
      color: white
    }
    h2 {
      color: blue
    }
  </style>
</test>
