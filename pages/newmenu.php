<?php // query.php
  require_once 'login.php';
  $conn = new mysqli($hn, $un, $pw, $db);
  if ($conn->connect_error) die("Fatal Error");

  $query  = "SELECT * FROM price_list";
  $result = $conn->query($query);
  if (!$result) die("Fatal Error");

  $rows = $result->num_rows;?>
  <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Меню "Время есть"</title>
    <link rel="stylesheet" href="../styles/newmenustyle.css" />
  </head>
  <body>
    <header>
      <div class="pos1"><img src="../img/admin.png" /></div>
      <div class="pos2"><h1>Кафе-столовая "Время есть"</h1></div>
    </header>
    <main class="menu">
    <div class="table_menu">
        <p class="head_menu">
            Меню на <?php echo longdate(time()); ?>.
        </p>
        <table>
        <thead>
            <tr>
                <th>Наименование</th>
                <th>Цена</th>
            </tr>
        </thead>
        <tbody>
<?php

for ($j = 0 ; $j < $rows ; ++$j)
{
    $row = $result->fetch_array(MYSQLI_ASSOC);
    $result->data_seek($j);?>
                <tr>
                    <td>
                        <?php
                        echo htmlspecialchars($row['name_dish']);
                        ?>
                    </td>
                    <td>
                        <?php
                        echo htmlspecialchars($row['price_dish']);
                        ?>
                    </td>
             <?php
      }
        
        $result->close();
        $conn->close();
        function longdate($timestamp)
        {
            return date("l F jS Y", $timestamp);
        }
        ?>
        </tbody>
        </table>
    </div> 
    </main>
    <footer class="site-footer">
      <div class="container_foot">
        <div class="left-column">
          <div class="logo-container">
            <div class="logo">
              <img src="../img/admin.png" alt="Время Есть" />
            </div>
            <h2>Время Есть</h2>
          </div>
        </div>
        <div class="right-column">
          <ul class="footer-menu">
            <li>
              <div class="footer-submenu-title">Услуги</div>
              <ul class="footer-submenu">
                <li><a href="../index.html">Кейтеринг</a></li>
                <li><a href="../index.html">Заказать банкетный зал</a></li>
                <li><a href="../index.html">Торты, пироги, пиццы на заказ</a></li>
              </ul>
            </li>
            <li>
              <div class="footer-submenu-title">О нас</div>
              <ul class="footer-submenu">
                <li><a href="../index.html">Акции</a></li>
                <li><a href="../index.html">Новости</a></li>
                <li><a href="../index.html">Отзывы</a></li>
              </ul>
            </li>
            <li>
              <div class="footer-submenu-title">Контакты</div>
              <ul class="footer-submenu">
                <li><a href="../index.html">Контакты</a></li>
                <li><a href="../index.html">Мы на карте</a></li>
                <li><a href="../index.html">Время работы</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </footer>
  </body>
</html>