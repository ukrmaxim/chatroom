amend:
	git commit --amend --no-edit

force:
	git push origin master -f

master:
	git push origin master

db:
	rails db:migrate
