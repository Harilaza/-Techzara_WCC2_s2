# <h1>TECHZARA_WCC2_s2</h1>

# <h3>AppName: TechXToys</h3>
# <h4> tech: Laravel </h4>

# prerequis : 
<p>port 8000 is used by laravel server so it's better to respect that</p>
<p>composer</p>
<p>xampp ou lampp ou mampp</p>

# Getting started:
<p>copy the .env.example and rename it to .env</p>
<p>create database 'exchange' and import the file 'exchange.sql' into database <b>OR</b> migrate if you want empty database</p>
<p> run command :'composer install' into your app directory</p>
<p>create a symbolic link to access storage folder => "php artisan storage:link"</p>
<p>run : php artisan serve</p>

# Accomplished :

<ol>
    <li>
    Create user who want to exchange a toy by giving  :
        <ul>
            <li>name's user</li>
            <li>contact's user</li>
            <li>toy's name that he want to exchange, provide with some image(s) for description</li>
            <li>toy's name that the user want to exchange his own toy </li>
        </ul>
        <p><b><u>N.B:</u></b> If a user was already proposed a toy before, it will not duplicate the user's data like name and contact but will only add a new toy related to this user. </p>
    </li>
    <li>List all toys</li>
    <li>List all toy with active and/or deactive status, provide with pagination. Each page contain originally 10 items; but it is <b>allowed to change the number of pagination</b></li>
    <li>
        Can switch status state active to deactive and vice versa.
        <ul>
            <b><u>N.B:</u></b>
            <li>It allows to deactivate/active a status if it is in active/deactive status only</li>
            <li>if you try to deactivate an items who is already in deactive state, it will send a message which notified it</li>
            <li>if you try to activate an items who is already in active state, it will send a message which notified it</li>
        </ul>
    </li>
    <li> image is accessible in the browser by his URI</li>
</ol>

# Endpoint :

<ol>
    <li>
        <p>create user : </p>
        <ul>
            <li><b><u>METHOD:</u> POST</b></li>
            <li><b><u>LINK:</u> http://127.0.0.1:8000/api/addToy</b></li>
            <li>
                <b><u>BODY:</u>  
                <ul>
                    <li>user_name (string 50)</li>
                    <li>contact (int composed of 12 number, eg: 261 XX XX XXX XX )</li>
                    <li>toy_name (string 50)</li>
                    <li>toy_images[] (file type)</li>
                    <li>exchange_to (string 50)</li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <p>List of active toys (default state, and paginate by 10)</p>
        <ul>
            <li><b><u>METHOD:</u> GET</b></li>
            <li><b><u>LINK:</u> http://127.0.0.1:8000/api/listActiveToy</b></li>
            <li><b><u>LINK to next page :</u> http://127.0.0.1:8000/api/listActiveToy?page=$pageIndex</b> nb: $pageIndex: eg:2</li>
            <li><b><u>LINK to specified number of pagination :</u> http://127.0.0.1:8000/api/listActiveToy/per_page=$nbrOfPagination?page=$pageIndex</b> $nbrOfPagination: eg:5</li>
        </ul>
    </li>
    <li>
        <p>List of deactive toys (default paginate by 10)</p>
        <ul>
            <li><b><u>METHOD:</u> GET</b></li>
            <li><b><u>LINK:</u> http://127.0.0.1:8000/api/listDeactiveToy</b></li>
            <li><b><u>LINK to next page :</u> http://127.0.0.1:8000/api/listDeactiveToy?page=$pageIndex</b> nb: $pageIndex: eg:2</li>
            <li><b><u>LINK to specified number of pagination :</u> http://127.0.0.1:8000/api/listDeactiveToy/per_page=$nbrOfPagination?page=$pageIndex</b> $nbrOfPagination: eg:5</li>
        </ul>
    </li>
    <li>
        <p>List of all toys (default paginate by 10) </p>
        <ul>
            <li><b><u>METHOD:</u> GET</b></li>
            <li><b><u>LINK:</u> http://127.0.0.1:8000/api/listAllToy</b></li>
            <li><b><u>LINK to next page :</u> http://127.0.0.1:8000/api/listAllToy?page=$pageIndex</b> nb: $pageIndex: eg:2</li>
            <li><b><u>LINK to specified number of pagination :</u> http://127.0.0.1:8000/api/listAllToy/per_page=$nbrOfPagination?page=$pageIndex</b> $nbrOfPagination: eg:5</li>
        </ul>
    </li>
    <li>
        <p>Deactivate toy status </p>
        <ul>
            <li><b><u>METHOD:</u> PUT</b></li>
            <li><b><u>LINK:</u> http://127.0.0.1:8000/api/deactivate/$toyId</b> nb: $toyId: eg: 11</li>
            <p>if toy n°11 is already deactive, it sent a notification about it</p>
        </ul>
    </li>
    <li>
        <p>Reactivate toy status </p>
        <ul>
            <li><b><u>METHOD:</u> PUT</b></li>
            <li><b><u>LINK:</u> http://127.0.0.1:8000/api/reactive/$toyId</b> nb: $toyId: eg: 11</li>
            <p>if toy n°11 is already active, it sent a notification about it</p>
        </ul>
    </li>
   
</ol>


# perspective of amelioration

<p>A toy which is deactivate during a certain amount of time will be deleted automatically</p>
