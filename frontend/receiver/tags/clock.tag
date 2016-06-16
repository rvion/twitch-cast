<clock>

  <div>{ hours }:{ minutes }</div>

  <script>
    var self = this;

    function zpad(what, n) {
      what = what + ''; // Make it a string

      if (what.length >= n)
        return what;

      return new Array(n - what.length + 1).join('0') + what;
    }

    refresh() {
      var now = new Date();

      self.hours = zpad(now.getHours(), 2);
      self.minutes = zpad(now.getMinutes(), 2);

      self.update();
    }

    this.on('mount', function() {
      setInterval(self.refresh, 1000);
    })
  </script>

</clock>
