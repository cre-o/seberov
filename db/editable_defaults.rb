@home, @location, @standards, @footer, @contacts, @references = Hash.new

@home[:benefits] = <<-'HERE'
<ul class="benefits">
  <li>
    <h4 class="upcase">
      Проект Новые квартиры в Праге 4 - Усадьба Шеберов
    </h4>
    <p>
      расположен на улице К Шеберову в предместье Грнчире, которое формирует южную часть городского района Праги – Шеберов, прямо у костёла св. Прокопа.
    </p>
  </li>
  <li>
    <h4 class="upcase">
      Интересной чертой проекта Усадьба Шеберов является
    </h4>
    <p>
      спокойная атмосфера в круглосуточно охраняемом ареале, посреди исторической застройки и, в тоже время, прямо на краю охраняемой государством природной резервации.
    </p>
  </li>
  <li>
    <h4 class="upcase">
      Тишина сельской местности в природе и хорошая доступность до центра
    </h4>
    <p>
      Вы доедете до Вацлавской площади от нас на машине всего за 15 минут, поездка на автобусе до станции метро Опатов (линия С) займёт 7 минут.
    </p>
  </li>
  <li>
    <h4 class="upcase">
      Квартиры находится в спокойном частном секторе, с отличной инфраструктурой
    </h4>
    <p>
      В непосредственной близости находятся детский сад и начальная школа, участковый доктор, рестораны или магазины с разнообразным ассортиментом.
    </p>
  </li>
  <li>
    <h4 class="upcase">
      Широкие возможности проведения досуга, которые предлагает район Грнчире
    </h4>
    <p>
      Это могут быть пешие прогулки на близлежащие озёра, детские площадки или новый спортивный комплекс, велопрогулки по велосипедным дорожкам и многое другое.
    </p>
  </li>
</ul>
HERE

@home[:slider_image] = <<-'HERE'
<h1>
  New apartments in the private sector of Prague 4 from the builder. <br />only <strong>24 apartments</strong>, with a layout from <strong>2 to 5 bedrooms Left</strong>!
</h1>
<a class="choose-apartment" href="#"><em class="map"></em>choose an apartment</a>
HERE

@home[:our_projects] = <<-'HERE'
<h1 class="upcase">
  Our Projects:
</h1>
<div class="row">
  <div class="small-10 columns">
    <ul class="small-block-grid-3">
      <li>
        <a title="wtf1" href="#">
          <img src="http://placehold.it/210x54" alt="description">
        </a>
      </li>
      <li>
        <a title="wtf2" href="#">
          <img src="http://placehold.it/210x54" alt="description">
        </a>
      </li>
      <li>
        <a title="wtf3" href="#">
          <img src="http://placehold.it/210x54" alt="description">
        </a>
      </li>
    </ul>
  </div>
</div>
HERE

# Location page
@location[:body] = <<-'HERE'
<ul class="description">
  <li>
    <em class="rectangle"></em>Грнчире формируют южную часть Праги-Шеберов, не образуя непрерывную застройку - между двумя частями есть расстояние около 700 м. В Грнчире в последние годы построено много новых вилл, особенно на восточном и южном крае. Что касается размера населенных пунктов, Грнчире уже больше, чем Шеберов.
  </li>
  <li>
    <em class="rectangle"></em>Новая недвижимость в Чехии от застройщика Усадьба Шеберов благодаря своему уникальному расположению может предложить большое разнообразие проведения досуга. Это могут быть пешие прогулки на близлежащие озёра, детские площадки или новый спортивный комплекс, велопрогулки по велосипедным дорожкам и многое другое. Доехать до Вацлавской площади можно примерно за 15 минут (на машине), поездка на автобусе до станции метро Opatov занимает не более 7 минут.
  </li>
  <li>
    <em class="rectangle"></em>Новая недвижимость в Чехии от застройщика Усадьба Шеберов расположена недалеко районов Кунратисе и Пругонице, которые также предлагают большой спектр деятельности, включая лучшие рестораны Праги и самый большой Аквапарк в Чехии. Хотя Новостройки в Чехии от застройщика Усадьба Шеберов расположены в тихом районе, клиенты, которые примут решение купить новое жильё в Чехии, найдут здесь развитую городскую инфраструктуру, например, много престижных школ и детских садов (PORG, OPEN GATE, DINO, Sunny Canadian), Английскую гимназию. Не менее интересны также разнообразие магазинов в современных торговых центрах Честлице и Ходов.
  </li>
</ul>
HERE

@home[:procedure_of_purchasing] = <<-'HERE'
<ol class="steps small-block-grid-3">
  <li>
    <div class="step">
      1
    </div>
    <div class="info">
      <h5>
        Заявка
      </h5>
      <p>
        на сайте ли по телефону
      </p>
    </div>
  </li>
  <li>
    <div class="step">
      2
    </div>
    <div class="info">
      <h5>
        Осмотр дома и квартир
      </h5>
      <p>
        в удобное для вас время
      </p>
    </div>
  </li>
  <li>
    <div class="step">
      3
    </div>
    <div class="info">
      <h5>
        Первая оплата
      </h5>
      <p>
        115 000 Крон (с НДС) до 5 дней
        со дня подписания договора о резервации
      </p>
    </div>
  </li>
  <li>
    <div class="step">
      4
    </div>
    <div class="info">
      <h5>
        Вторая оплата
      </h5>
      <p>
        15% от полной стоимости  (с НДС) до 10 дней со дня
        подписания договора о будущей купле-продаже</p>
    </div>
  </li>
  <li>
    <div class="step">
      5
    </div>
    <div class="info">
      <h5>
        Последняя оплата
      </h5>
      <p>
        15% от полной стоимости  (с НДС) до 10 дней со дня
        подписания договора о будущей купле-продаже
      </p>
    </div>
  </li>
  <li>
    <div class="step">
      6
    </div>
    <div class="info">
      <h5>
        Въезд
      </h5>
      <p>
        в вашу новую квартиру. Мы оформляем все необходимые
        документы и делаем запись в кадастре недвижимости.
      </p>
    </div>
  </li>
</ol>
HERE

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
    <ul class="accordion" data-accordion="1">
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
  <ul class="accordion" data-accordion="1">
      <li class="accordion-navigation">
        <a href="#panel1b"> Окна </a>
        <div class="content" id="panel1b">
          Деревянные Евроокна из сосны, профиль IV 68, двойные стеклопакеты с коэффициентом теплопроводности Ug = 1,0 W/m2.K
          Мансардные окна типа "VELUX", двойные деревянные стеклопакеты с коэффициентом теплопроводности Ug = 1,1 W/m2.K, тройные стеклопакеты Ug = 0,7 W/m2.K
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel2b"> Входные двери </a>
        <div class="content" id="panel2b">
          Наружные – деревянные двери с защитой от взлома. Фурнитура с защитой от взлома, лак бронза
          Внутренние – комбинированные двери с защитой от взлома и пожара, плёнка имитация бука. Фурнитура с защитой от взлома, хром
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel3b"> Внутриквартирные двери </a>
        <div class="content" id="panel3b">
          SAPELI неостеклённые и частично остекленные в дверной коробке
          Шпон дуба, бука, махагони или ясеня
          Фурнитура – хром
        </div>
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
    <ul class="accordion" data-accordion="1">
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
<section class="long right-side">
  <header>
    <h1>
      Техническое оборудование здания
    </h1>
  </header>
  <div class="content">
  <ul class="accordion" data-accordion="1">
      <li class="accordion-navigation">
        <a href="#panel1b"> Водовод - пластиковые трубы </a>
        <div class="content" id="panel1b">
          У квартир с участками земли – вывод воды из колодца на террасу
      </li>
      <li class="accordion-navigation">
        <a href="#panel2b"> Канализация </a>
        <div class="content" id="panel2b">
          вертикальные трубы из пластмассы PVC HT, горизонтальные трубы из пластмассы PVC KG
        </div>
      </li>
      <li class="accordion-navigation">
        <a href="#panel3b"> Арматура </a>
        <div class="content" id="panel3b">
          <ul>
          <li> ванна акриловая </li>
          <li> душ кабина стеклянная, поддон – дроблёный мрамор </li>
          <li> керамическая раковина </li>
          <li> унитаз встроенный или приставной </li>
          <li> смеситель для ванны - хром </li>
          <li> смеситель для душа - хром </li>
          <li> смеситель для раковины - хром </li>
          <li> для стиральной машины подведены вода и канализация</li>
          <li> для кухонной раковины и посудомоечной машины подведена вода и канализация </li>
          </ul>
        </div>
        <li class="accordion-navigation">
          <a href="#panel4b"> Отопление </a>
          <div class="content" id="panel4b">
            <ul>
              <li> газовый котел с интегрированным или самостоятельным бойлером на 120 литров </li>
              <li> комнатный термостат в гостиной </li>
              <li> развод отопления – пластик REHAU </li>
              <li> Отопительные панели типа RADIK </li>
            </ul>
          </div>
        </li>
        <li class="accordion-navigation">
          <a href="#panel5b"> Электрика </a>
          <div class="content" id="panel5b">
          <ul>
              <li> кабель - медь </li>
              <li> розетки и выключатели – тип TANGO, белый цвет </li>
              <li> в каждой комнате развод для потолочных светильников </li>
              <li> электрощит в прихожей </li>
              <li> в гостиной розетки для телевизора, интернета и телефона </li>
              <li> домофон в прихожей – связан с калиткой и входной дверью </li>
              <li> наружная розетка для квартир с участком земли </li>
            </ul>
          </div>
        </li>
      </li>
    </ul>
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

@standards[:text] = <<-'HERE'
<h2>
  Новостройки квартир в Чехии от застройщика Усадьба Шеберов
</h2>
<p>
  Здание бывшей усадьбы, расположенное рядом с церковью Святого Прокопа, отслеживает историю не так далекую, как сама церковь, однако, иллюстрирует и помогает создать образ центра бывшего посёлка Грнчире. Несмотря на то, что способ использования недвижимости в Чехии Усадьба Шеберов с течением времени менялся, и как результат развития пригорода Праги, было сохранено богатое пространственное решение и достоинство двора средневековой усадьбы с исторической атмосферой. Именно сохранение исторической атмосферы и впечатления от наблюдаемого исторического развития недвижимости в Чехии является одним из ключевых принципов проекта Новостройки квартир в Чехии от застройщика Усадьба Шеберов, который придаст этому месту новую энергию и силы к жизни. Поврежденные первоначальные структуры здания будут заменены на новые, соответствующие действующим требованиям к качеству строительства - экологически чистыми и экономичными с точки зрения потребления энергии.
</p>
<p>
  В сравнении с актуальными проектами строительства новостроек в Чехии от застройщика в столице Праге, наш новый жилой комплекс является уникальным не только своим месторасположением, но и в смысле взаимных отношений соседей, живущих в просторах исторического здания: полузакрытого жилого комплекса с центральным входом во двор, задачей которого будет служить уже не конюшней для лошадей и экипажей, а «конюшней» для автомобилей жителей - как во дворе, так и в гаражах новостройки в Праге. Из этого же двора все дороги ведут к отдельным квартирам без потери возможностей как для непринуждённого соседского разговора, так и незаметного и спонтанного контроля чужих. Так как входы в отдельные квартиры ориентированы на общую центральную площадь, так и все квартиры ориентированы главными окнами наружу, где открываются прекрасные виды на нетронутую зелень охраняемого природного заповедника, является второй – изолированной от посторонних – характерной чертой нашего проекта Новостройки квартир в Чехии от застройщика Усадьба Шеберов.
</p>
<p>
  Просторное, эксклюзивное решение планировок квартир, сохраняющих конфиденциальность в сочетании со спонтанной идентификации с одним входом - одним адресом – одним двором, наличие гения места и исторических элементов этого вида строительства, все это создает предпосылки для качественной жилой среды с уникальным характером и атмосферой.
</p>
<span class="author right">Архитектор проекта Петр Марушиак</span>
HERE

@footer[:address] = <<-'HERE'
<p>
  K Šeberovu 508, Praha 4 - Šeberov<br />PO - PÁ: 12:00 - 18:00<br />prodej@statekseberov.cz
</p>
HERE

@footer[:credit] = <<-'HERE'
<h6>Hypotéky zajišťuje:</h6>
<p>GEPARD FINANCE a.s.<br />Na Příkopě 958/25<br />110 00 Praha 1 - Staré Město<br />tel: +420 603 950 299</p>
HERE

@footer[:investment] = <<-'HERE'
<h6>Investoři:</h6>
<p>
Stavokonsalt SF s.r.o.<br />K Šeberovu 508<br />Praha 4<br />149 00
</p>
HERE

@footer[:phone] = <<-'HERE'
<p>
  <span>+420 123 456 78</span>
</p>
HERE

@footer[:contact_last] = <<-'HERE'
<p>
 STAV-SV s.r.o.
 <br />
Před Rybníkem 111
 <br />
Praha 5
 <br />
150 00
</p>
HERE

# Contacts
@contacts[:main] = <<-'HERE'
<h2 class="subheader upcase">
    Přímý prodej od developera a investora
</h2>
<h3 class="upcase">
  John Doe
</h3>
<div class="contacts">
  tel: +420 603 933 909
  prodej@statekseberov.cz
  skype: statekseberov
</div>
HERE

@contacts[:authors] = <<-'HERE'
<div class="small-2 columns credit">
  <h5>
    Hypotéky zajišťuje:
  </h5>
  <p>
    GEPARD FINANCE a.s.
    Na Příkopě 958/25
    110 00 Praha 1 - Staré Město
    tel: +420 603 950 299
  </p>
  <div class="logo-small">
    <img src="http://placehold.it/400x400" alt="description">
  </div>
</div>
<div class="small-3 columns investment">
  <h5>
    Investoři
  </h5>
  <p class="first">
    Stavokonsalt SF s.r.o.
    K Šeberovu 508
    Praha 4
    149 00
  </p>
  <p class="second">
    STAV-SV s.r.o.
    Před Rybníkem 111
    Praha 5
    150 00
  </p>
</div>
<div class="small-3 columns architect">
  <h5>
    Architekt
  </h5>
  <p>
    NAUTILA ARCHITEKTI
    Na bitevní pláni 1155/48
    140 00 Praha 4 - Nusle<br><a href="http://www.nautilaarchitekti.cz">http://www.nautilaarchitekti.cz</a>
  </p>
  <div class="logo-small">
    <img src="http://placehold.it/400x400" alt="description">
  </div>
</div>
<div class="small-2 columns">
  <h5>
    Materiál pro stavbu dodává
  </h5>
  <p>
    IZOMAT Praha s.r.o.,
    Praha 4 149 00 - Hrnčíře
    K Labeškám E190<br><a href="izomat.cz">http://izomat.cz</a>
  </p>
  <div class="logo-small">
    <img src="http://placehold.it/400x400" alt="description">
  </div>
  <div class="logo-small"></div>
</div>
<div class="small-2 columns">
  <h5>
    Главный поставщик стройматериалов
  </h5>
  <p>
    Stavitelstvi SMID s.r.o.
    Na Roudné 1550/176b
    301 00 Pilsen<br><a href="http://www.stavitelstvi-smid.cz/">http://www.stavitelstvi-smid.cz/</a>
    </p><div class="logo-small">
      <img src="http://placehold.it/400x400" alt="description">
    </div>
  <p></p>
</div>
HERE

@references[:body] = <<-'HERE'
<div class="row">
  <div class="small-12 columns">
    <h1 class="upcase">
      Референции. НОВАЯ НЕДВИЖИМОСТЬ В ПРАГЕ ОТ ЗАСТРОЙЩИКА.
    </h1>
  </div>
</div>
<div class="row">
  <div class="small-12 columns">
    <section>
      <header>
        <h1 class="upcase">
          Завершение строительства проекта Новая недвижимость в Праге 5 Репорие в садах:
        </h1>
        <h3>
          • Проект застройки 99-и особняков Новая недвижимость в Праге Řeporyje в садах.
        </h3>
      </header>
      <div class="content">
        Низкоэнергетические современные дома от застройщика Новая недвижимость в Праге Řeporyje в садах, имеющие собственный палисадник, гараж и парковочное место, расположены в районе Прага 5 ул. Ve Výhledu / Horšovská и идеально совмещают жизнь в личном доме с преимуществами предместья чешской столицы Прага. Более подробную информацию Вы найдёте на www.reporyjevzahradach.cz
      </div>
      <ul class="small-block-grid-6">
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
      </ul>
    </section>
  </div>
</div>
<div class="row">
  <div class="small-12 columns">
    <section>
      <header>
        <h3>
          • Недвижимость в Праге 4
        </h3>
      </header>
      <div class="content">
        18 современных особняков Hrnčíře в садах находится в районе улиц V Úhoru и U Hrnčíř. Это тихая окраина котеджей столичного района Hrnčíře, которая находиться в южной части района Праги 4 - Šeberov. Ввод в эксплуатацию 12.2015.
      </div>
      <ul class="small-block-grid-6">
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
      </ul>
    </section>
  </div>
</div>
<div class="row">
  <div class="small-12 columns">
    <section>
      <header>
        <h3>
          • На 2015 год мы готовим:
        </h3>
      </header>
      <div class="content">
        Строительство и продажу квартир в 3 жилых домах и 4 вилл в солнечной Хорватии.
      </div>
      <ul class="small-block-grid-6">
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
      </ul>
    </section>
  </div>
</div>
<div class="row">
  <div class="small-12 columns">
    <section>
      <header>
        <h3>
          Инвестирование в новую недвижимость в Праге было начато в 1999 году.
          за этот период были реализованы следующие проекты строительства
          новой недвижимости в Праге:
        </h3>
      </header>
      <div class="content">
        • Вилла в Добреёвицих, Прага - восток. Ввод в эксплуатацию - весна 2008
      </div>
      <ul class="small-block-grid-6">
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
      </ul>
    </section>
  </div>
</div>
<div class="row">
  <div class="small-12 columns">
    <section>
      <div class="content">
        • Новые квартиры в Праге 4 в улице Цигларова в категории от 1 + kk до 3 + kk.
        Тридцати квартирный жилой дом также включал 26 гаражных мест и был
        введён в эксплуатацию осенью 2007 года.
      </div>
      <ul class="small-block-grid-6">
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
      </ul>
    </section>
  </div>
</div>
<div class="row">
  <div class="small-12 columns">
    <section>
      <div class="content">
        • Новые квартиры повышенной комфортности в Праге 6 в 28 квартирном жилом доме на
        углу улиц Над Завьеркой и Смирицкего с подземным гаражом на 40 машин.
        Ввод в эксплуатацию - 2004 год.
      </div>
      <ul class="small-block-grid-6">
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
      </ul>
    </section>
  </div>
</div>
<div class="row">
  <div class="small-12 columns">
    <section>
      <div class="content">
        • Две виллы в Праге 4 на улице Леснэго и вилла в Праге 5 на улице
        Пред рыбникем, ввод в эксплуатацию - 2003.
      </div>
      <ul class="small-block-grid-6">
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
         <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
      </ul>
    </section>
  </div>
</div>
<div class="row">
  <div class="small-12 columns">
    <section>
      <div class="content">
        • Новые квартиры повышенной комфортности в Праге 5 в восьми квартирном жилом доме на улице Бутовицка, коммерческими площадями на первом этаже и подземным гаражом на 10 машин. Введён в эксплуатацию в 2001 году.
      </div>
      <ul class="small-block-grid-6">
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
        <li>
          <img src="http://placehold.it/400x400" alt="description">
        </li>
      </ul>
    </section>
  </div>
</div>
HERE
