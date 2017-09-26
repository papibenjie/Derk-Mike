<test>

  <h1 if={ state } >allo</h1>
  <button onclick={ handleClick } name="button"></button>


  <script>
    this.state = false
    this.handleClick = function handleClick() {
      if (this.state) {
        this.state = false
      }else {
        this.state = true
      }
    }
  </script>

  <style>

  </style>
</test>
