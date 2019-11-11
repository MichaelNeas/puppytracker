# PuppyTracker

[Finished Tut](https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/)

## Glossary

### action

    A piece of code that’s linked to an event that can occur in your app. 

### activity viewer

    Part of the Xcode toolbar that displays messages about the build process and other information. 

### adaptive interface

    A user interface (UI) that automatically adjusts so that it looks good in the context of the available screen space. 

### adopt

    To indicate that a class, structure, or enumeration conforms to a protocol. 

### application programming interface (API)

    A set of functions, classes, protocols, and other components that define how pieces of software should interact with each other. 

### app delegate

    An object in your app (specifically, an instance of the AppDelegate class) that creates the window where your app’s content is drawn and that provides a place to respond to state transitions within the app. 

### application object

    An object in your app that’s responsible for managing the life cycle of the app, communicating with its delegate, the app delegate, during state transitions within the app. 

### argument

    A value you pass in to a function, method, or initializer to satisfy one of its parameters. 

### array

    A data type that stores multiple values of the same type in an ordered list. 

### Attributes inspector

    An inspector that you use to customize visual attributes of a user interface (UI) element in a storyboard. 

### asset catalog

    A tool to manage assets like images that are used by your app as part of its user interface (UI). 

### assistant editor

    In Xcode, a secondary editor window that appears side-by-side with your primary editor. 

### Auto Layout

    A layout engine that helps lay out your user interface (UI) based on the constraints you specify. 

### base class

    A class that’s at the root of its class hierarchy, meaning that it has no superclass. 

### canvas

    The background of a storyboard where you add and arrange user interface (UI) elements. 

### class

    A piece of code that describes the behavior and properties common to any particular type of object, essentially providing a blueprint for the object. 

### clean

    Removes all the product files, as well as any object files or other intermediate files created during the build process. 

### class hierarchy

    A hierarchical representation of a class’s relationships to its superclass and subclasses. 

### closed range operator

    An operator (...) that lets you create a range of numbers that includes both the lower and upper values. 

### closure

    A self-contained block of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages. 

### Cocoa Touch

    The set of Apple frameworks and technologies used to develop iOS apps. 

### code completion

    A feature of Xcode that infers what you’re trying to type from context and provides suggestions that you can select. 

### completion handler

    A closure that’s passed as a parameter to a method that calls the closure when it finishes executing. 

### comment

    A piece of text in a source code file that doesn’t get compiled as part of the program but provides context or other useful information about individual pieces of code. 

### conditional statement

    A control flow statement that checks whether a condition is true before executing a piece of code. 

### conform to

    For a class, structure, or enumeration to satisfy the requirements of a protocol. 

### console

    A tool for debugging and for logging information for debugging purposes. 

### constant

    A value that’s initialized once and cannot change, indicated in Swift by the let keyword. 

### constraint

    In Auto Layout, a rule that explains where one element should be located relative to another, what size it should be, or which of two elements should shrink first when something reduces the space available for each of them. 

### content view

    A view object that’s located at the top of a view hierarchy, serving as a container for the subviews in its hierarchy. 

### control

    A specialized type of view (specifically, an instance of the UIControl class or one of its subclasses) that responds to user input. 

### convenience initializer

    A secondary initializer, which adds additional behavior or customization, but must eventually call through to a designated initializer. 

### data model

    The representation or structure of data within an app. 

### data source

    An object that manages the app’s data model, providing a view object with the information it needs to display that data. 

### delegate

    An object that acts on behalf of, or in coordination with, another object. 

### designated initializer

    One of the primary initializers for a class; a convenience initializer within a class must ultimately call through to a designated initializer. 

### destination view controller

    The view controller whose contents are displayed at the end of a segue. 

### downcast

    To attempt to cast an object to one of its subclass types. 

### entry point

    Where control enters a program or piece of code. 

### enumeration

    A data type that defines a group of related values and enables you to work with those values in a type-safe way within your code. 

### event-driven programming

    A category of programming in which the flow of the app is determined by events: system events and user actions. 

### extension

    A capability to add functionality to an existing type. 

### failable initializer

    An initializer that could return nil after initialization. 

### first responder

    An object that is first to receive many kinds of app events, including key events, motion events, and action messages, among others. 

### fix-it

    A suggested fix for a compiler error in Xcode. 

### forced type cast operator

    An operator (as!) that attempts a downcast and force-unwraps the result. 

### force-unwrap operator

    An operator (!) placed after an optional value to access its underlying value. 

### function

    A reusable, named piece of code that can be referred to from many places in a program. 

### Functions menu

    In Xcode, a jump menu that lets you navigate directly to a specific declaration or section in a source code file. 

### gesture recognizer

    An object that you attach to a view that allows the view to respond to actions the way a control does. 

### global

    A constant, variable, or function defined at the top-level scope of a program. 

### guard

    A guard statement declares a condition that must be true in order for the code after the guard statement to be executed. Using a guard statement for requirements improves the readability of your code, compared to doing the same check with an if statement. 

### half-open range operator

    An operator (..<) that lets you create a range of numbers that includes the lower but not the upper value. 

### Identity inspector

    An inspector that you use to edit properties of an object in a storyboard related to that object’s identity, such as what class the object belongs to. 

### identity operator

    An operator (===) that tests whether two object references both refer to the same object instance. 

### immutable

    A value that cannot be changed (or mutated) after it’s initialized, like a constant. 

### implement

    To define the behavior of something in code. 

### implicitly unwrapped optional

    An optional that can also be used like a nonoptional value, without the need to unwrap the optional value each time it is accessed, because it’s assumed to always have a value after that value is initially set. 

### inheritance

    When a class is a subclass of another class, it gets all of its behavior (methods, properties, and other characteristics) from its superclass. 

### initializer

    A method that handles the process of preparing an instance of a class, structure, or enumeration for use, which involves setting an initial value for its properties and performing any other required setup. 

### inspector pane

    An area in Xcode that displays inspectors, such as the Attributes inspector, Identity inspector, and Size inspector. 

### instance

    A specific occurrence of a class (that is, an object), structure, or enumeration. 

### integrated development environment (IDE)

    A software application that provides a set of tools for software development. 

### Interface Builder

    The graphical environment for building a user interface (UI) in Xcode. 

### intrinsic content size

    The minimum size needed to display all the content in a view without clipping or distorting that content. 

### iterate

    To perform repeatedly. 

### library pane

    An area in Xcode that displays one of the ready-to-use libraries of resources for your project, like the Object library. 

### local

    A constant or variable defined only within a particular, limited scope, like a loop, conditional statement, or function. 

### loop

    A control flow statement that executes the same piece of code multiple times. 

### method

    A reusable, named piece of code that’s associated with a particular class, structure, or enumeration. 

### modal segue

    A segue in which one view controller presents another view controller as its child. The user must interact with the presented controller, and dismiss it before returning to the app’s main flow. Use modal segues to present tasks that the user must complete before continuing. 

### Model-View-Controller (MVC)

    A pattern of app design in which view controllers serve as the communication pipeline between views and the data model. 

### mutable

    A value that is able to be changed (or mutated) after it’s initialized, like a variable. 

### navigation controller

    A specialized view controller subclass that manages transitions backward and forward through a series of view controllers. 

### navigation stack

    The set of view controllers managed by a particular navigation controller. 

### nil

    The absence of a value or no value. 

### nil coalescing operator

    An operator (??) placed between two values, a ?? b, that unwraps an optional a if it contains a value, or returns a default value b if a is nil. 

### object

    An instance of a class. 

### Object library

    Part of the Xcode workspace window that shows a list of objects that can be added to a storyboard, including each object’s name, description, and visual representation. 

### optional

    A value that contains either an underlying value or nil to indicate that the value is missing. 

### optional binding

    The process of attempting to assign an optional value to a constant in a conditional statement to see if the optional contains an underlying value. 

### optional type cast operator

    An operator (as?) that attempts a downcast and returns the result as an optional value. 

### outlet

    A reference to an object in a storyboard from a source code file. 

### outline view

    A pane in a storyboard that lets you see a hierarchical representation of the objects in your storyboard. 

### override

    To replace an implementation of a method defined on a superclass. 

### parameter

    An additional piece of information that must be passed into a function, method, or initializer when it’s called. 

### playground

    A type of file in which you can change and play around with Swift code directly in Xcode and see the immediate results. 

### project navigator

    Part of the Xcode workspace window that displays all the files in your project. 

### property

    A piece of data encapsulated within a class, structure, or enumeration. 

### property observer

    A piece of code that’s called every time the value of a property is set. Use property observers to observe and respond to changes in the property’s value. 

### protocol

    A blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. 

### read-only

    A value that can only be viewed (read) but never changed (written). 

### read-write

    A value that can be both viewed (read) and changed (written). 

### resize handles

    Small white squares that appear on a user interface (UI) element’s borders when it’s selected so you can change its size on the canvas. 

### root view controller

    The first item added to a the navigation stack of a navigation controller. The root view controller is never popped off (removed from) the stack. 

### run loop

    An event processing loop that you use to schedule work and coordinate the receipt of incoming events in your app. 

### runtime

    The period during which a program is executing. 

### scene

    A storyboard representation of a screen of content in your app. 

### scene dock

    A bar that contains information related to a scene in a storyboard. 

### segue

    A transition from one scene to another in a storyboard. 

### show segue

    A segue that varies the way new content is displayed based on the target view controller. For navigation controllers, the show segue pushes new content on top of the current view controller stack. Use a navigation controller and show segues to navigate through hierarchical data. 

### Simulator

    An app in Xcode that simulates the behavior and appearance of running an app on a device. 

### Size inspector

    An inspector that you use to edit the size and position of a user interface (UI) element in a storyboard. 

### source view controller

    The view controller whose contents are displayed at the beginning of a segue. 

### storyboard

    A file that contains a visual representation of the app’s UI (user interface), showing screens of content and the transitions between them, that you work on in Interface Builder. 

### storyboard entry point

    The first scene that’s shown from a storyboard when an app starts. 

### string interpolation

    The process of inserting string representations of constants, variables, literals, and expressions into longer strings. 

### structure

    A data type that’s similar to a class, but doesn’t support inheritance and is passed by value instead of by reference. 

### subclass

    A class that’s a child of another class (known as its superclass). 

### subview

    A view that is enclosed by another view (known as its superview). 

### superclass

    A class that’s a parent of another class (known as its subclass). 

### superview

    A view that encloses another view (known as its subview). 

### Swift standard library

    A set of data types and capabilities designed for Swift and baked into the language. 

### target

    The object that receives the action message in the target-action pattern. 

### target-action

    A design pattern in which one object sends a message to another object when a specific event occurs. 

### tuple

    A grouping of values. 

### type casting

    A way to check the type of an object, and to treat that object as if it’s a different superclass or subclass from somewhere else in its own class hierarchy. 

### type inference

    The ability of the Swift compiler to determine the type of a value from context, without an explicit type declaration. 

### UIKit

    A Cocoa Touch framework for working with the user interface (UI) layer of an iOS app. 

### underscore

    A representation of a wildcard in Swift (_). 

### unit test

    A piece of code written specifically to test a small, self-contained piece of behavior in your app to make sure it behaves correctly. 

### unwrap

    To extract an underlying value from an optional. 

### user interface (UI)

    The layer of visual elements that lets a user interact with a piece of software. 

### utility area

    An area in Xcode that displays the inspector pane and . 

### unwind segue

    A type of segue used to implement backward navigation. 

### variable

    A value that can change after it’s been initialized, indicated in Swift by the var keyword. 

### view

    An object that’s used to construct your user interface (UI) and display content to the user. 

### view controller

    An object that manages a set of views and coordinates the flow of information between the app’s data model and the views that display that data. 

### view hierarchy

    A hierarchical representation of views relative to other views. 

### workspace window

    The Xcode window, which you use to manage and navigate through the files and resources in your project. 