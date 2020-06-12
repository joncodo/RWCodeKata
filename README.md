# Pikachu Rewind

This is a coding test for a job at Rewind.

Your mission, should you choose to accept it, is to carve out 3 hours and create simple web app that manages a backup for the Detective Pikachu Pokémon card set (https://pokemontcg.io/cards?setCode=det1).

Be creative with this. We want to see a functional app that uses the API (https://docs.pokemontcg.io/). When in doubt, make an executive decision. Functionality is more important than the look and feel. If you finish early, feel free to polish it up.

## Your tasks
1. The home page must display three buttons labeled Create Backup, Purge Backup, and Search Backup.

2. When the Create Backup button is pressed, your application will back up all of the card information to a persistent data store, for each card, from the Detective Pikachu Pokémon card set.

3. When the Purge Backup button is pressed, your application will destroy your copy of the card information that was copied.

4. When the Search Backup button is pressed, your application will present the user with a way to search the backup of card information by name, hit point, and rarity. All cards that match the search criteria will be returned and presented to the user.

## Some tips
We typically let candidates chose their language of choice; however, since you do have RoR experience I’d like to see a solution using Rails. Feel free to roll in any gems you’d like to use.
Assume you only need to support Google Chrome.
