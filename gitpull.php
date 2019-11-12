<p>
<?php

$git_pull_command = "sh /var/www/" . $_SERVER['SERVER_NAME'] . "/gitpull.sh";
print $git_pull_command;
exec("git config --get remote.origin.url", $output);
exec($git_pull_command, $output);
echo '<pre>';
print_r($output);
echo '</pre>';

echo "Updated time is " . date("Y/m/d H:i:s") . "<br>";
echo "Today is " . date("l") . "<br>";

echo "<a target='_blank' href='" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "'>" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "</a><br>";
?>
</p>
<img src='data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAO8AAAAVCAIAAAAhGy6RAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
    jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAR2SURBVGhD7ZnLcWM7DEQdlwJSPIpGkXinYN4D
    QBJsAI1ruWY2o+JZ2Jf4NJq89Kfsr+/D4VPQ2/zf4fDvc27z4XM4t/nwOfS3+Xn/+ro/5+LvIJK3
    x2suFjRYkCozo65+svV63K5KeLrxxqwxAfMVuT+kbvdr1xsbBaV3qg9Id5vJ27m+RXAb5JFXQs2G
    BguoqffiyssvbrPIMqah1+s5r2BTNxnlvhEYsB/TNntBrDr8Dnqb5R2kM7XDzzfk+hUvoCu874bm
    ZUprHm9cKBXuz+QYFd1bpk6G24qE3aV8qy6MLbTpw/vU21zfhR03eX0BeOn70bUkBAQt8qJj9QX8
    CpDbhPA0sYHYGTRMseD6/mw6cPLoyGNH48UGnFEJ/XGmS4AzssedhSQJUvFm4iCcyMAqoAk7ynYU
    GuxItzma42wD71SjX9ldtUWDiXks6bA61NZFqafJYW9uj8dMF3eNvm8k5Xn5D8NfwqzkaP/tsX4T
    mtBR7mvk43aGzIjosx9MCXJxvjnKUgL1/Tie0nZo8Ipwm6XbXiL0iltUiualfi0wAeGI6auYVlNY
    nxTb7wj6geq2aovYNaya6oxcMCzLx0tsV2F3oJ2WnLUHPGxHx9OEtUGGjQox9ziJ/TNLg1ycBxku
    qpvxjtQeJ09okJO+Nwtxw7JCs3G6GnuD1aDNHkj7aE1PA/6p21fRG6jFMkbhOlIeEztQUgoGdZRj
    f9CgFJHZt+KyzPvQijpbSYe2NqfssA0QTXbCmvNxa0GDXJxPrASVXZgsMYc8yKG3+RrfpyMtOE6W
    XqNWZOGi7UaSxmAHXRPFI3MUomOTs/GTy+q0oWUqBQcU1/fSZMQaqechiQYN80UbCukQN0ljmmel
    sK/bbRmnQYcavHSteiOXHEsCVnQ7NMi5/N6sOtFfiWjgB3Z9tA42qeF9AmOxnmmxEd1pfzQ7iFWR
    5BADJaVg0J+Lje5C/ETnctOfhc4dAv4whjblyq4E/jCooMvoOPmn26FBTr3NjqqIOfmUtcT2+kmq
    L6oZJVUpUyI6wiTyKejBhFIdCSUlv5hbN2F+tGtf/ow6xeEO6EiG18/SXadD5jCcyakVxQsh+9+s
    TKzo6wV1XkzSIJVptaNEWGkPqP9Ot9LdZp05JEQsaQULUrjTsgi2U2ONqNR68Y7ODgEhKBvWmssE
    7c6KgWBfwHHF4Qi8HvLVW8wLXj+nCuNvc0NQn2ZTnmrAaM9DbKGhOluBAVq2i3YL6ml5dTGgQ1CG
    iPOJkTITDMGjEbazoEEOuc06AoaoWDwAKajqZhqJPUZoxDHj+cqyVBBBYM9HSWajbmgTHCrbWUkp
    NLgGaC8MMoe+HsI7vZr0L3N76EDXecyo2UyLDtQ3YWMfG6RokKpcSQ+0oh9KhRRL0OAV8TZbez/b
    GS8hDCuTPGvvaGqAyf0iJ7OmxA3poQk31+0UTO7/aHSzhagj3SsAj3gkZK5m73eZWx2rm/kvyZkE
    qViORYf3IN+bD4d/lHObD5/Duc2Hz2He5sPhE/j+/h9xXf2KBE/eIgAAAABJRU5ErkJggg==
    ' />
