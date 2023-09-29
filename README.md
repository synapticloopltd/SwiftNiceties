# Swift Niceties

This is a collection of Swift extensions and classes/structs/enums for those 
that are familiar with Java method calls, and want to be able to use them, 
whilst they transition to using Swift in more depth.

## There are two parts

### Extensions

Extension extend the functionality of existing swift classes

### Replacement Classes

Where a class with an identical name exists in Swift, the class and functionality in SwiftNiceties is prepended (or namespaced with SN.  E.g. SNCalendar is a new class, rather than extending the swift Calendar class.





## This is NOT a bad idea

Yes, you should probably learn swift and do all of the convoluted things that 
swift wants you to do, but there are times when this is overly burdensome.

There are also times where the 

### Some examples

#### Getting a random number between 0 and 4

in Swift

```
let randomInt: Int = Int.random(in: 0..<5);
```

in SwiftNiceties 

```
let randomInt: Int = Random.nextInt(5);
```

in Java

```
Random random = new Random(System.currentTimeMillis());
int randomInt = random.nextInt(5);
```

#### Adding components to dates

in Swift

```
var date: Date = Date()
var dateComponent = DateComponents();
dateComponent.day = 1;

date = Calendar.current.date(byAdding: dateComponent, to: date)!;
print(date.timeIntervalSince1970);

```

in SwiftNiceties

```
var calendar: SNCalendar = SNCalendar.getInstance();
calendar.add(SNCalendar.DAY_OF_MONTH, 1);
print(calendar.getTimeInMillis);
```

in Java 

```
Calendar calendar = Calendar.getInstance();
calendar.add(Calendar.DAY_OF_MONTH, 1);
System.out.println(calendar.getTimeInMillis());
```
