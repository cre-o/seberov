@standards = Hash.new
@standards[:section1] = <<-'HERE'
<section class="left-side">
  <header>
    <h1>
      Земляные работы
    </h1>
  </header>
  <div class="content">
    <ul>
      <li>
        траншеи для фундаментов - земляные работы проводятся с помощью механизации и ручной финальной зачистки
      </li>
      <li>
        котлован для подземного гаража выполнен открытым способом
      </li>
      <li>
        использование вынутого грунта производится в соответствии с его качеством либо для озеленения прилегающей территории,  либо вывозится на складирование в специально предназначенные для этого места
      </li>
    </ul>
  </div>
</section>
HERE

@standards[:section2] = <<-'HERE'
<section class="right-side">
  <header class="text-right">
    <h1>
      Фундамент
    </h1>
  </header>
  <div class="content">
    <ul>
      <li>
        защита фундамента  подсыпкой гравия
      </li>
      <li>
        фундаменты выполнены из бетона и дополнены бетонными блоками пролитыми бетонной смесью с усилением арматурой
      </li>
      <li>
        в основе подземного гаража - монолитная железобетонная плита, подвальные стены подземного гаража из водонепроницаемого бетона (белая ванна)
      </li>
    </ul>
  </div>
</section>
HERE

@standards[:section3] = <<-'HERE'
<section class="left-side">
  <header>
    <h1>
      Горизонтальные конструкции
    </h1>
  </header>
  <div class="content">
    <ul>
      <li>
        гипсокартонные подвесные потолки или гипсовая штукатурка
      </li>
      <li>
        керамические панели, усиленные железобетонными балками
      </li>
      <li>
        акустическая изоляция – твержёный пенопласт типа EPS 150 S
        толщиной 3 см, изоляционная подкладка peMAX толщиной 2 мм
      </li>
      <li>
        разделительная пленка
      </li>
      <li>
        цементная стяжка
      </li>
      <li>
        гидроизоляция ванных комнат
      </li>
      <li>
        покрытие пола
      </li>
    </ul>
  </div>
</section>
HERE

@standards[:section4] = <<-'HERE'
<section class="right-side long">
  <header>
    <h1>
      Конструкция стен
    </h1>
  </header>
  <div class="content">
    <ul class="accordion" data-accordion="">
      <li class="accordion-navigation">
        <a href="#panel1a"> несущие внешние стены</a>
        <div class="content" id="panel1a">
          Wtf?
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel2a"> несущие внутренние стены</a>
        <div class="content active" id="panel2a">
          <ul>
            <li>
              кирпич типа Porotherm 24 P + D
            </li>
            <li>
              стены между квартирами - кирпич типа Porotherm  AKU 30
            </li>
            <li>
              железобетонные стены или столбы
            </li>
          </ul>
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel3a"> внутренние перегородки</a>
        <div class="content" id="panel3a">
          Wtf?
        </div>
      </li>
    </ul>
  </div>
</section>
HERE

@standards[:section5] = <<-'HERE'
<section class="left-side">
  <header>
    <h1>
      Кровля
    </h1>
  </header>
  <div class="content">
    <ul>
      <li>
        керамическая черепица Tondach
      </li>
      <li>
        система надстропильной теплоизоляции THERMANO толщины 140 mm, экстратвёрдый пенопласт PIR
      </li>
      <li>
        несущая конструкция крыши – фермы из клееного бруса в сочетании с деревянными стропилами KVH
      </li>
      <li>
        подвесные потолки гипсокартонные с части видимой конструкции крыши (деревянные стропила)
      </li>
    </ul>
  </div>
</section>
HERE

@standards[:section6] = <<-'HERE'
<section class="long right-side">
  <header>
    <h1>
      Окна, двери
    </h1>
  </header>
  <div class="content">
    <ul>
      <li>
        керамическая черепица Tondach
      </li>
      <li>
        система надстропильной теплоизоляции THERMANO толщины 140 mm, экстратвёрдый пенопласт PIR
      </li>
      <li>
        несущая конструкция крыши – фермы из клееного бруса в сочетании с деревянными стропилами KVH
      </li>
      <li>
        подвесные потолки гипсокартонные с части видимой конструкции крыши (деревянные стропила)
      </li>
    </ul>
  </div>
</section>
HERE

@standards[:section7] = <<-'HERE'
<section class="long left-side">
  <header class="text-right">
    <h1>
      Отделка
    </h1>
  </header>
  <div class="content">
    <ul class="accordion" data-accordion="">
      <li class="accordion-navigation">
        <a href="#panel1b"> наружная всепогодная штукатурка</a>
        <div class="content" id="panel1b">
          Wtf?
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel2b"> внутренняя штукатурка</a>
        <div class="content" id="panel2b">
          Wtf?
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel3b"> облицовочная плитка</a>
        <div class="content" id="panel3b">
          Wtf?
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel4b"> напольная плитка</a>
        <div class="content" id="panel4b">
          <ul>
            <li>
              в ванной комнате
            </li>
            <li>
              в туалете
            </li>
            <li>
              в коридорах
            </li>
            <li>
              в подсобных помещениях, кладовых
            </li>
            <li>
              в подъездах, колясочной
            </li>
          </ul>
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel5b"> покрытия пола</a>
      </li>
    </ul>
  </div>
</section>
HERE

@standards[:section8] = <<-'HERE'
<section class="right-side">
  <header class="text-right">
    <h1>
      Столярные элементы
    </h1>
  </header>
  <div class="content">
    <p>
      Внутренние лестницы в квартирах кроме галереи изготовлены из монолитного железобетона, ступеньки обложены
      массивным  многослойным лепленым деревом с финальным покрытием бук
      Перила внутренних лестниц - деревянные, не профилированные столбики, поручень из профилированного дерева бук
      Внутренние лестницы и перила галереи поставляются под заказ за дополнительную оплату.
    </p>
  </div>
</section>
HERE

@standards[:section9] = <<-'HERE'
<section class="left-side">
  <header>
    <h1>
      Водосточные и кровельные конструкции
    </h1>
  </header>
  <div class="content">
    <p>
      Покрытие крыши над мансардными окнами и надкровельные элементы выполнены из меди, замансардное корыто из
      пластифицированной ПВХ пленки
      Наружные подоконники выполнены из механически окрашенного листа LINDAB медь
    </p>
  </div>
</section>
HERE

@standards[:section10] = <<-'HERE'
<section class="right-side">
  <header class="text-right">
    <h1>
      Техническое оборудование здания
    </h1>
  </header>
  <div class="content">
    Контент
  </div>
</section>
HERE

@standards[:section11] = <<-'HERE'
<section class="left-side">
  <header>
    <h1>
      Покрытие коммуникаций
    </h1>
  </header>
  <div class="content">
    <p>
      Целый двор, вкл. парковку и тротуары вымощена плиткой
    </p>
  </div>
</section>
HERE

@standards[:section12] = <<-'HERE'
<section class="right-side">
  <header class="text-right">
    <h1>
      Надстандарт
    </h1>
  </header>
  <div class="content">
    Изменения в этом списке стандартов можно осуществлять исходя из пожеланий заказчика. Изменения в стандартах будут оценены дополнительно.
  </div>
</section>
HERE
