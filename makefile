all: create create_tables load_tables
# aws/kubernetes scripts database
#
#
all: create create_tables load_tables done
create:
	@echo "Create database:"
	@touch build/cmd.db

create_tables:
	@echo "Create tables..."
	cd build &&f_run_sql.py cmd.db cr.links.ddl
	cd build && f_run_sql.py cmd.db cr.commands.ddl

load_tables:
	@echo "Loading data..."
	cd build && sqlite3 cmd.db < load_file

done:
	cd build && mv cmd.db ../ 
	@echo "DONE: database created and loaded"

clean: 
	rm cmd.db
