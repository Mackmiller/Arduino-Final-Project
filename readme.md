<p align="center">
  <img alt="Title" src="final_pic.png" />
</p>

# Arduino Final Project

The repository for my final project for my Physical Computing class while an undergrad at the University of Miami.

The project creates a flashing LED screen that lights up in time with the rhythmic groove of the Beatles' "Here Comes the Sun", seen [here](https://vimeo.com/243977097).

It won Best in Show at the 2017 Interactive Media Showcase at the University of Miami.


## Code

This project was built using Processing, C++, and Arduino


## Contributors

- [@mackmilllr](https://twitter.com/mackmilllr) Coder
- [@zevensuy](https://twitter.com/Zevensuy) Advisor

## Additional Notes

Ever go to a performance or event where people are supposed to be clapping to the beat and just aren't getting it? And the Doppler Effect can't be blamed?

For some people, understanding rhythm is more than just hearing someone else clap; an added visual element is necessary.

Goals: 1) Show user visual representation of rhythm/beat
       2) as few extra gizmos as possible (ex: no microphone or audio input necessary)
       3) Visually appealing UI
       4) Add element of happy song/happy character association from midterm

This project is based in Processing, and uses BeatWrite, which is an extension of the Minim library for Processing. StandardFirmata is also used to enable serial processing between arduino/processing.

Modifications/Complications:
1. MP3 file.
I found it best to use a MIDI file that I then converted to MP3. This allowed me to manipulate the MIDI file first using a notation software to get the project frequencies where I'd prefer them. I achieved this by changing registers of particular parts and also by simplifying the main melody so that the frequency would be more obvious for the rhythmic(and technically melodic) pattern. This is the route I took when I was not satisfied with playing around with the beat sensitivity.

2. 3 vs. 1 sound analysis
The LEDs were most responsive to only having one frequency threshold analyzed at once, instead of the three that it defaults to. If I had more time, it would have been fun trying to add in the additional frequency thresholds to have different lights blinking at different times while still having it make sense.

3. User Interface
I had a difficult time finding a way to contain the wires and arduino. I ended up using a ceramic tissue box holder, with the leds coming out through the hole, which is covered by a piece of yellow foam. For the presentation I tilted the box on its side to show what the inner workings were, but in theory the wires should hold if the box is upright. I also prefered the box on its side because the sun looks more sun-like, as opposed to being mistaken for something different, like a flower, in another orientaton.

4. Wiring
I also struggled to find the best way to connect that many LEDs to the breadboard. While my solution is not the most efficient, it is functional- I used standard LED lights from the basic arduino kit and attached a female connector end to the LED, and attached the male connector into the breadboard. I initially tried to solder several LEDs on one male connector, but the soldering seemed flimsy and unreliable.

5. Processing
I realized very quickly that using arduino as my main coding handler couldn't get me the results I wanted without perhaps extra gizmos added on the physical arduino. At this point I explored using Processing, with the assistance of the arduino library and StandardFirmata. I'm glad I am now familiar with Processing!

NEXT
I would like to add a sound component- maybe a microphone picks up noise and is able to blink the LED lights in the pattern that is clapped into the microphone, or something like that. I think I am definitely ready to add in an audio component to the idea of rhythmic visualization.

REAL LIFE APPLICATION

I think this idea would be a great start for a line of children's toys that could help jumpstart on a child's music education, especially in the areas of ear training and music theory, which tend to be put off until later. 
