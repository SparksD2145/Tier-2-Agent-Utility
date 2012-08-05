:: DEV NOTE -	Not certain why this command required users to
::				agree to terms and an agreement, not only does it
::				not matter if they go to the website or not,
::				but the code written here originally does not provide
::				a way to track whether or not the agent actually agrees.
::
::				I mean, it's just google.  Agents may need google to
::				look up laptop models to find where the wi-fi switch is,
::				so it's not really necessary.
::
::				Master_Status (5/31/12:04:08) - [Pending Removal Auth]
::				Dev_br_Status (5/31/12:04:09) - [Removed]
::
::				[TI]
::
:: END DEV NOTE
CALL %openbrowser% "http://www.google.com"