# Cucumber Quickstart Project

This project is used with AgileVelocity's Cucumber Quickstart
workshop to familiarize people with Cucumber and how to begin
using it.

## Requirements

* Ruby 1.9.3 or later
* Cucumber and its dependencies (documented below)

## Installing / Configuration

### Install Ruby

See the [Installing Ruby guide](https://www.ruby-lang.org/en/installation/).

To verify that Ruby is installed, open a Command Prompt (Windows) or
terminal/console window and type `ruby -v`. You should see output
similar to the following:

    ruby 1.9.3p545 (2014-02-24) [x86_64-darwin13.1.0]

or

    ruby 1.9.3p448 (2013-06-27) [i386-mingw32]

We mainly want to make sure that you have a working install of Ruby and
that it is a recent enough version for the code we will work with.

### Project Source

You need the project that contains the source files (which is likely
where you got these instructions). This is a public [Git repository](https://bitbucket.org/agilevelocity/cucumber_quickstart). If you are familiar with Git you can clone this repository, otherwise the web page provides a download link to get a zip file of the project that you can extract in a convenient place on your computer.

### Install Dependencies

Once Ruby is installed and verified and the project source has been
downloaded we will install one more thing to complete the dependencies.
 
1. Install the bundler gem `gem install bundler`
2. Open a Command Prompt or terminal in the root of this project.
3. Type `bundle` and let bundler install Cucumber and other
   dependencies. You should see some activity indicating that
dependencies are being installed.
4. Verify that Cucumber is installed by running `cucumber --version`. You should see
   output similar to the following: `1.3.14`
      
## Layout

### atm_class

This is the working directory for the class that proves the code that
will serve as a starting point.

### atm_done

This shows completed work from the class. 
