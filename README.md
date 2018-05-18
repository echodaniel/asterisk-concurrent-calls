# asterisk-concurrent-calls

Service which executes a detached 'watch' script that monitors call concurrency in Asterisk.

Outputs all calls into a CSV in one line for every 10 seconds of calls recorded. To show the screen session running once the service is started, run "screen -r" and you should see one called "CallConcurrency (Detached).* Other than seeing the service itself running, this is how you can test to make sure it's running correctly on your system.

To monitor calls other than SIP simply replace the section of the script itself that says SIP with DAHDI/PJSIP or whatever type of call/channel you'd like to monitor, I've tested it with all three and it works. Let me know if you test it with something and it works with/without your system! I'd appreciate any feedback.




*To safely detach without killing the process, type Ctrl+Shft+A+D.
