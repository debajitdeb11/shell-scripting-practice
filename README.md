# Shell Script Practice Document

| Command | Description |
| :-------: | ----------- |
| `#!/bin/bash` | **Shebang.** Command for specify the script needs to be run in bash. |
| `echo args...` | `echo` used to print the arguments(`args...`) |
| `read args...` | Command used to take input/args from the user |
| `tr '[:lower:]' '[:upper:]'` | To convert text from lowercase to uppercase. Here the `lower` can `upper` can be interchange |
| `local` | Used to make variables inside a function scoped locally |

---

### Important Concepts

> Positional Arguments: Arguments are a specific positions. Commands can take in arguments at a specifiv position, counting from one (0 reserve for the shell)

`echo Hello There!`

| Argument | Position |
| :--------: | :--------: |
| echo | 0 (reserved) |
| Hello | 1 |
| There! | 2 |

> Piping: A pipe in Bash takes the standard output of one process and passes it as standard input into another process

`$ ls -al /bin/ | grep bash`

> Output redirection: Write to a file

- `>` symbol to write to a file
- `>>` symbol to append to a file

> Input Redirection: Input a file/text to a command

- `<` used to input a file
- `<<` used as to write something with delimiter
- `<<<` used to write something to console

> Test operator: Used to test a condition
```
[ 1 = 1 ]
echo $?

If output is 0 - Meaning the last command ran successfully
            1 - Failure

[ 1 -eq 1 ] : `-eq` equal flag

```
> Conditional STATEMENT

```
syntax:

    if [ input = "debajit" ]; then
        echo "Boss!"
    elif [ input = "bishal" ]; then
        echo "Not Boss, Still let you in"
    else
        echo "Invalid user"
    fi

```

> CASE STATEMENT

```
case EXPRESSION in

    PATTERN_1)
    STATEMENT
    ;;

    PATTERN_2)
    STATEMENT
    ;;

    *)
    STATEMENT)
    ;;

```

> Arrays

```
#!/bin/bash

NAME="DEBAJIT DEB"
AGE=25
ROLE="SOFTWARE ENGINEER"

MY_LIST=(${DEBAJIT} ${AGE} ${ROLE})

echo $MY_LIST 		# 1st element of the list

echo ${MY_LIST[@]} 	# Print all element of the list

echo ${MY_LIST[2]}	# 2nd element of the list

echo "--- Thank You! ---"
```

---
### Loops

- **For Loop**

    ```
    MY_LIST=(1 2 3 4 5)

    for item in ${MY_LIST[@]}
        do
            echo ${item}
        done
    ```

- **While loop**

    ```
    
    #!/bin/bash

    echo "Enter the value of n?"

    read N

    i=1
    SUM=0

    while [ $i -le $N ]
        do
            SUM=$(expr $i + $SUM)
            i=$(expr $i + 1)
        done

    echo "Total Sum = $SUM"

    ```

### Functions

```
#!/bin/bash
fun() {
    ...statement
}

fun
```