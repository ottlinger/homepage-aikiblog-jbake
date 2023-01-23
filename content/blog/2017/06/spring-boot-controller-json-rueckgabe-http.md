title=SpringBoot – Controller erstellen mit JSON-Rückgabe und Standard-HTTP-code
date=2017-06-05
type=post
tags=SpringBoot, JSON, Controller
status=published
~~~~~~

Es ist einfach befreiend zu sehen wie einfach in einem [SpringBoot](http://projects.spring.io/spring-boot/)-Umfeld die Webentwicklung ist:

```java
@Controller
@RequestMapping("/foobar")
final class FooBarController {

  @Inject
  private FooBar fooBar;

  /**
  * @return the currently set {@link FooBar}.
  */
  @RequestMapping(method = RequestMethod.GET)
  public ResponseEntity parseInvocationContext() {
    return new ResponseEntity(fooBar.toString(), HttpStatus.OK);
  }

}
```
Die Methode gibt mit einem [200er](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) einfach ein Statusobjekt zurück und kann dieses ganz einfach als JSON anzeigen.
