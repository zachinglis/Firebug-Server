# Firebug Server

This is a very rudimentary script I banged out because the iPhone Firebug was not helping. You can not explore HTML easily and as I was debugging what a 3rd Party Video service injects into my code on the iPhone, this was born.

## How To Use

Simply paste the following into the header. Replace the <server-url> and <context> argument with your own:
  
  <script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
      $.post('<server-url>/bugs', {
        bug: {
          url: window.location.pathname,
          content: $('body').html(),
          context: <context>
        }
      });
      alert("Bugged!");
    });
  </script>

* Server URL should be that of your network name. Such as mine is <http://kratos-iv.local:3000>
* Context argument could be anything you want. The URL is automatically stored but you can change it to add notes or store any Javascript variables.

## Bugs & Patches

Please report any on Github and feel free to fork and submit your own patches. I will second my warning about this being rudimentary. The bug page is scaffolded and code highlighting has not even been added.

## Credits

"Zach Inglis":http://zachinglis.com