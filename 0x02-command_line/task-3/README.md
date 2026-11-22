# Task 3: Finding Files & Searching File Contents

## 1. Purpose of find

The find command is used to locate files and directories in a filesystem based on conditions such as name and type.

## 2. Purpose of grep

The grep command is used to search for specific words or patterns inside files.

## 3. Finding a filename vs searching inside a file

Finding a filename means locating a file or directory by its name or type.

Searching inside a file means looking for specific words or patterns in the file's content.

## 4. Combined find and grep command

Command:

find practice/search-lab -type f -name "*.txt" -exec grep -Hni "JavaScript" {} +

Explanation:

- find locates all text files.
- -type f selects files only.
- -name "*.txt" selects files ending in .txt.
- -exec runs another command on the files found.
- grep searches for JavaScript inside those files.
- -H displays the filename.
- -n displays the line number.
- -i ignores uppercase and lowercase differences.
