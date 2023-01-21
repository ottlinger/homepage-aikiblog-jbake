title=Autowired by name mit JUnit4 und Spring
date=2008-11-05
type=post
tags=Java, Spring, Autowired, jUnit
status=published
~~~~~~

Dieses JUnit4 ist einfach Klasse – keine unnützen setter mehr, die den Code verunreinigen und Tests lassen sich einfach durch Entfernen der *@Test*-Annotation ausschalten.

Neben dem ganz normalen Verdrahten der Beans per Beantyp ist manchmal das Verdrahten per Beanname nötig, was wie folgt umzusetzen ist:

```java
@Autowired
@Qualifier("applicationPrefixTestMagicMemberComponenten")
private MockMagicComponenten memberComponent;
```    
Diese Annotationen machen einfach Spass 🙂

Am Kopf der Klasse dazu fix den ApplicationContext verdrahtet:
```java
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:myApplicationTestContext.xml"})
public class ExampleTest {
```    

Setup-Methoden zur Erzeugung der Daten werden mit *@Before* markiert, während die Löschmethoden mittels *@After* markiert sind.
