			Veil of the Crowd System

	*(Capital City – Social Masking & Identity Diffusion Layer)*

	This system governs how player visibility and recognition are affected by population density inside "Capital City".
	It does not hide the player physically — it reduces social clarity in the eyes of NPCs.

---

	System Purpose : In a crowded city, individuals are harder to track, remember, and identify.

	This system simulates :
* anonymity in dense crowds
* delayed recognition
* weakened memory retention by NPCs
* reduced enforcement precision

	It creates a natural stealth layer without invisibility mechanics.

---

	Core Rule : 

```lua id="mask_core"
RecognitionSpeed = BaseRecognition × CrowdDensityFactor × ZoneAwareness × TimeModifier
```

	Higher crowd density = slower and less accurate recognition.

---

		Crowd Density Interaction

	This system is directly dependent on :
* Crowd Flow & Density System
* Harbor Pulse System
* Whisper Network System
* ️ Guard Shift System

---

		High Masking Windows

	Market Peak (12:00 – 14:00) : 
* Central District crowded
* East Academy movement overlap
* merchant congestion high

	Effects :
* guards take longer to identify targets
* witnesses confuse descriptions
* illegal actions harder to trace

---

	West Side Night Surge (18:00 – 22:00) : 
* taverns full
* docks active
* smuggling activity increased

	Effects :
* strongest anonymity window in the city
* bribes more effective
* guard identification accuracy reduced

---

		Low Masking Windows

	Morning Flow (05:00 – 09:00) : 
* sparse population
* structured movement

	Effects :
* instant recognition
* high enforcement accuracy
* low stealth viability

---

	Deep Night (02:00 – 05:00) : 
* low crowd density overall
* patrol dominance increases

	Effects :
* no crowd protection
* guards identify targets instantly
* strongest surveillance state

---

		Recognition Delay System

	When masked by crowds :

* NPCs remember vague features first
* identity confirmation takes time
* reports become inconsistent

	Example :

> "I saw someone in dark armor…"
	> instead of
> "It was that player specifically"

---

		Guard Identification Behavior

	Guards do NOT instantly recognize players in crowds.

	They rely on :
* repeated sightings
* witness confirmation
* proximity duration
* behavioral anomalies

	This feeds :

* NPC Suspicion System
* Civic Offense System

---

		Criminal Advantage Layer

	Veil of the Crowd allows :
* faster escape from minor crimes
* reduced bounty accuracy in dense zones
* delayed guard response time
* misdirection via NPC confusion

	But NOT immunity.

---

		Counter-Systems**

	Guard Shift System : 
* high alert shifts reduce masking effectiveness

	NPC Suspicion System : 
* repeated exposure reduces anonymity over time

	Bounty System : 
* formal recognition overrides crowd masking

	Whisper Network : 
* rumors can bypass masking entirely

---

	Zone Synergy Effects : 

| Zone    | Masking Strength                   |
| ------- | ---------------------------------- |
| Central | medium                             |
| East    | low–medium                         |
| West    | very high                          |
| Docks   | variable (highest during arrivals) |

---

		Progressive Exposure System

	Even in crowds, repeated actions weaken masking : 
* same location repetition → recognition increases
* same NPC witnesses → faster identification
* repeated crimes → “signature behavior” forms

---

	System Outputs : 

| System          | Effect                                 |
| --------------- | -------------------------------------- |
| NPC Suspicion   | identification delay scaling           |
| Civic Offense   | witness ambiguity                      |
| Guard Alert     | response speed reduction/increase      |
| Bounty System   | tracking precision modifier            |
| Whisper Network | rumor distortion vs anonymity conflict |
| Crowd System    | core multiplier                        |

---

	What This System Achieves : 

* makes stealth social instead of visual
* turns crowds into gameplay mechanics
* rewards timing and awareness
* supports smuggling, crime, and infiltration systems
* creates believable “lost in the city” moments

---
