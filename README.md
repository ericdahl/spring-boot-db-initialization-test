spring-boot-db-initialization-test
==================================

test case showing bug with database not being initialized for tests

this project contains a single test which queries the in-memory h2 database to ensure that it's not empty

```bash
$ mvn test
...
2014-10-14 10:10:21.409  WARN 3435 --- [           main] o.s.b.a.jdbc.DataSourceInitializer       : Could not send event to complete DataSource initialization (ApplicationEventMulticaster not initialized - call 'refresh' before multicasting events via the context: org.springframework.web.context.support.GenericWebApplicationContext@21c783c5: startup
...
java.lang.AssertionError: 
Expected: is a value greater than <0>
     but: <0> was equal to <0>
	at org.hamcrest.MatcherAssert.assertThat(MatcherAssert.java:20)
	at org.hamcrest.MatcherAssert.assertThat(MatcherAssert.java:8)
	at org.testing.WidgetControllerTest.databaseShouldHaveBeenInitialized(WidgetControllerTest.java:42)

this test passes if any of the following are done:
- disabling @EnableCaching
- not autowiring @DataSource in th application
