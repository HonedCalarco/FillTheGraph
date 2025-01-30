### What This is
This is a simple set of shell scripts to fill your github contributions graph with noise.  For those who dont know that graph is just a colation of cloud backups of locally **SELF REPORTED** data.  The git commit command, the command that the graph is counting, has a date argument, meaning that this isnt even doing anything unintended.
### Why make this
I have heard that alot of technical recruiters not knowing how any of this works and being lazy just look at this graph as a judge of a coders value as a person, as it is not ment to be used like that why should I not abuse their incompotance.
### Why use this over all the other tools made to put an image on the graph
- All those tools are made for images so youd have to make a noise image
- Most of those tools are way to complicated or require root access so you have no clue what is going on under the hood.  This is just 3 easily readable bash scripts that dont require root access
- none of those tools have an easy way to continue to add new noise each new day.
- github only graphs a limited number of commits per push so all of those tools will have some parts of the graph cut off if you try to fill a full year with noise in one run.  This tool does the year in 8 pushs to get around that.
- This noise has been tuned, alittle bit, to make normal use of github add to the effect instead of detract from it
### how to use
0. make sure your ssh keys are setup to push to github with your account
1. Goto create a new repo on git hub
2. Mark it as private and give it a name
3. create the repo
4. Run FillTheGraph.sh passing in a dir name and the ssh URL as arguments. (the URL should look like something like "git@github.com:UserName/RepoName.git") It will create a directory of the given name as a sibling to the dir that you are currently in.
5. Run crontab -e and add the line that was spit out as described by the script.
6. reboot you PC before the end of the day tomarrow.

If it runs sucessfully and your graph does not update first make sure it was pushing with the right account, then toggle off and on Private contributions in the contribution settings above the graph.  You want it to be on but toggling it off than back on will refresh it.
