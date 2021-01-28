import 'package:places/domain/sight.dart';

List<Sight> mocks = [];

/*
  * генерирует контент для заполнения
*/
void generateTestSights() {
//iconicBuildings
  mocks.add(
    new Sight(
        'Костел Сымона и Елены',
        53.8965302,
        27.5453701,
        'https://lh5.googleusercontent.com/p/AF1QipNbjNjul2G11PM4RDtcXh5MGh2uWhhD_qrrWLQc=w408-h306-k-no',
        'Красный костел, как его еще называют минчане, находится в самом центре города – на площади Независимости. Храм из красного кирпича в неоготическом стиле очень сильно выделяется на фоне окружающей его архитектуры, и это как будто делает костел еще величественнее и красивее.',
        SightType.iconicBuildings),
  );

  mocks.add(
    new Sight(
        'Кафедральный собор',
        53.9050742,
        27.5538739,
        'https://lh5.googleusercontent.com/p/AF1QipOP3V58gW-oDKFd3gRIdLK_1gJIQ5NJBtw_Lmol=w408-h270-k-no',
        'Самый «открыточный» храм города, который обычно изображают на всех видах сувениров из Минска. Собор в стиле барокко буквально возвышается над остальными зданиями Верхнего города, и его просто невозможно не увидеть, прогуливаясь по центру Минска.',
        SightType.iconicBuildings),
  );

  mocks.add(
    new Sight(
        'Церковь Александра Невского',
        53.9085861,
        27.5853243,
        'https://lh5.googleusercontent.com/p/AF1QipOKgsekESxzlmgYuorX3cCCUexIUYzxYa1qxE4=w426-h240-k-no',
        'Церковь в классическом византийском стиле прячется от туристов на военном кладбище Минска. Построили ее в память о солдатах-беларусах, погибших во время русско-турецкой войны (к слову, за одной из стен храма находится братская могила). Церковь интересна тем, что идеально сохранилась со времен постройки в 1898 году. И даже когда во время Второй мировой через центральный купол в храм залетела бомба, со зданием ничего не произошло – бомба просто не взорвалась. Верующие считают, что это настоящее чудо, по-другому объяснить произошедшее сложно.',
        SightType.iconicBuildings),
  );

//architecturalMonuments
  mocks.add(
    new Sight(
        'Ворота Минска',
        53.8918502,
        27.5493108,
        'https://lh5.googleusercontent.com/p/AF1QipM_r6tmIrKempD3C_R9f61135WHKkVKl7ch4DeL=w408-h271-k-no',
        'Если приехать в Минск на поезде, то первое, что увидишь, выйдя из главных дверей вокзала – это Ворота Минска – две высокие башни в стиле сталинского ампира. Построили их в начале 50-х на месте старых деревянных ворот, найденных тут при раскопках. На правой башне до сих пор висит герб бывшей БССР, а на левой – трофейные немецкие часы. Между прочим, это самые огромные часы в Беларуси – диаметр их циферблата составляет 3,5 метра. Также башни украшены скульптурами героев советского времени: рабочего, колхозницы, инженера и солдата – все по классике. Советуем ехать к Воротам Минска вечером – с подсветкой они выглядят особенно впечатляюще.',
        SightType.architecturalMonuments),
  );

  mocks.add(
    new Sight(
        'ГУМ',
        53.9004918,
        27.5557896,
        'https://lh5.googleusercontent.com/p/AF1QipNvccJLHuPIs5t-VOZTfVdZ94eeRfWhQjnILZnr=w408-h260-k-no',
        'Здание ГУМа находится на главной улице города – проспекте Независимости – и входит в архитектурный ансамбль Города Солнца. ГУМ открыли в 1951 году, и это был первый в городе большой универсальный магазин. Внутри универмаг выстроен с таким же послевоенным утопичным размахом, что и снаружи: широкая лестница, как во дворце, колонны и витражи, скульптуры праведных тружеников социализма. ГУМ был и остается одной из главных достопримечательностей Минска, и дело тут не только в уникальности самого здания. Такое яркое ностальгическое дыхание советского прошлого ты не почувствуешь ни в одном другом магазине: стройные ряды мужских костюмов, увесистые бобины ковров, сувениры из соломки и товары лучших беларусских производителей – шопинг для настоящих ценителей!',
        SightType.architecturalMonuments),
  );

//streetsAndDistricts
  mocks.add(
    new Sight(
        'Троицкое предместье',
        53.9083137,
        27.5548751,
        'https://lh5.googleusercontent.com/p/AF1QipMbHeCrbYWnDAMyqENpF6-9hKRNmLj5zhLouB5Z=w744-h240-k-no',
        'Компактный островок «старого» Минска, именем которого в городе любят называть все что угодно: от магазинов и ресторанов до хлеба. Известно, что уже в XVI веке на месте современного Троицкого предместья селились горожане и ремесленники. Но в 1809 году тут произошел разрушительный пожар, который полностью выжег местность. Новое Троицкое было спланировано и выстроено под контролем самого Александра I: на 10 улицах разжились помещики, торговцы и другие горожане.',
        SightType.streetsAndDistricts),
  );

  mocks.add(
    new Sight(
        'Верхний город',
        53.9036822,
        27.5507981,
        'https://lh5.googleusercontent.com/p/AF1QipNvjTDGHW-avaATUhW4_TUfh6Z293-qKGblNMO5=w408-h544-k-no',
        'Исторические сердце Минска, плотненько наполненное аутентичной застройкой XVI – XIX веков. Тут тебе и тот самый главный Кафедральный собор, и площадь Свободы с городской Ратушей и костелом Святого Иосифа, и несколько прилегающих улочек – Революционная, Интернациональная,  Герцена и другие. Верхний город – пожалуй, самое туристическое место в городе, но его нежно любят и местные. Летом здесь устаивают музыкальные движухи и праздники: Вечера классики у Ратуши, Форум уличных театров, дни национальных культур Грузии, Швеции, России и других стран. А зимой на площади Свободы проходят симпатичные рождественские ярмарки, где можно прикупить какой-нибудь сувенирчик made in Belarus.',
        SightType.streetsAndDistricts),
  );

//modernStructures
  mocks.add(
    new Sight(
        'Национальная библиотека Беларуси',
        53.9314742,
        27.6439675,
        'https://lh3.googleusercontent.com/proxy/bUzFkhqgZGGvIwQwsGqLhPY9JXxFGgdmVh5LQrTacFybGw8dProTG6tT-R2hfN6vRAir9Jq4TfLtSZpwaz5M7fDQZAHH_AVEquUAFnmAZ1eQ3_UfrfnJvZIzzyykj-VY81C1dLojvUikVjMomjUPxtQ2Roui-pY=w408-h272-k-no',
        'Огромный стеклянный ромбокубоктаэдр, который притягивает к себе туристов не хуже пирожных в магазине «Центральный». На то, чтобы отстроить громадную библиотеку в начале 2000-ных скидывались всем миром – получилось может и неоднозначно, но точно впечатляюще. Приезжай сюда, чтобы подняться на смотровую площадку или побывать с экскурсией внутри здания. А лучше подгоняй к библиотеке вечером – в это время она излучает всякие световые композиции и выглядит еще фотогеничней.',
        SightType.modernStructures),
  );

  mocks.add(
    new Sight(
        'Минск-Арена',
        53.9373321,
        27.4802392,
        'https://lh5.googleusercontent.com/p/AF1QipMdqhZdXEQ7UgJ13siqXkJgLzKDEKhZcM3lvupV=w426-h240-k-no',
        'Если услышишь, что какой-то крутой артист сумел собрать «арену» – знай, речь идет именно о ледовой арене этого спортивного комплекса. В состав «Минск-Арены» входят конькобежный стадион, велодром и тот самый ледовый в форме гигантской шайбы. Вмещает главная ледовая арена Беларуси целых 15 тысяч зрителей! Архитекторы называют «Минск-Арену» одним из самых удачных современных зданий в Минске. Здесь проходили главные матчи Чемпионата мира по хоккею в 2014 году, тут же снимали детское «Евровидение» в 2010-м, в арене проводит свои домашние матчи хоккейный клуб «Динамо», а еще выступают мировые звезды вроде Элтона Джона и Дженифер Лопес.',
        SightType.modernStructures),
  );

  mocks.add(
    new Sight(
        'Стадион «Динамо»',
        53.8951539,
        27.5581337,
        'https://lh5.googleusercontent.com/p/AF1QipM5DhSgdGMSdvZClSZhrGOCl5ZZqV5oSxuNzirs=w443-h240-k-no',
        'Главный беларусский стадион вообще-то имеет долгую историю – само здание было построено сразу после Второй мировой на месте разрушенного стадиона 1934 года. Но с 2012 по 2018 год тут прошла такая глобальная реконструкция, что теперь здание легко можно называть современной постройкой. Над трибунами стадиона надстроили огромный навес, и в сочетании со старыми стенами «Динамо» стал выглядеть весьма эклектично. А огромные фонари с подсветкой минчане уже успели ласково прозвать «мухобойками». Именно на главном стадионе страны минское «Динамо» ковало историческую победу в чемпионате СССР в 1982 году, а БАТЭ обыгрывал «Баварию» и сражался с «Ювентусом» и «Реалом» в Лиге чемпионов.',
        SightType.modernStructures),
  );

//theatersAndMuseums
  mocks.add(
    new Sight(
        'Театр Оперы и Балета',
        53.9103077,
        27.5593366,
        'https://lh5.googleusercontent.com/p/AF1QipP7ymv9c3NzYvsJTU46yMMiGrA46-YAHbUU4slN=w408-h271-k-no',
        'Большой театр Беларуси был построен еще до войны – в 1938 году. Но в первые же дни Второй мировой в него попала бомба, которая очень сильно повредила сооружение. В 1947 году его отремонтировали, а в конце 2000-х тут провели глобальную реконструкцию. Сегодня по величественному конструктивистскому зданию Оперного, похожему на огромный космический корабль, и не скажешь, какая нелегкая у него судьба. Отхватить билет в Большой театр тот еще квест, поэтому если решишь послушать тут классическую оперу или насладиться балетной постановкой – позаботься о квитках сильно заранее. Если к высокому пока особо не тянет – просто прогуляйся по уединенному и тихому скверу у театра.',
        SightType.theatersAndMuseums),
  );

  mocks.add(
    new Sight(
        'Театр Янки Купалы',
        53.9008774,
        27.5604835,
        'https://lh5.googleusercontent.com/p/AF1QipOpEZG723AkOPrHwBA8k3O9ziMeBVLrmlZtkzwL=w408-h306-k-no',
        'Здание старейшего театра Минска было открыт в 1890 году. На тот момент оно было супер-современным и оборудованным по последнему слову техники, а  горожане называли театр лучшим зданием в городе по красоте и изяществу. В 1917 году впервые на сцене театра поставили «Паўлiнку» Янки Купалы, которая и по сей день является визиткой Купаловского, и ежегодно театральный сезон здесь открывается именно «Паўлiнкай». Мы же от души рекомендуем посетить современные постановки театра – «Арт» и «Радзiва Прудок». Все спектакли, само собой, проходят на беларусском.',
        SightType.theatersAndMuseums),
  );

//parksAndNature
  mocks.add(
    new Sight(
        'Парк Победы',
        53.9234076,
        27.5336742,
        'https://lh5.googleusercontent.com/p/AF1QipO_YyC6g844k0e3N7zBogQcuSBmTTEgsS6Do7RX=w408-h544-k-no',
        'Здоровенный парк площадью 200 гектаров, где можно взять напрокат велосипед и прокатиться по длинной велодорожке, полюбоваться фонтаном в центре Комсомольского озера или устроить пикник в тени деревьев. Самое интересное и уединенное место в парке – Птичий остров, который является домом для огромного количества разных видов птиц. Все тропинки, лестницы и скамейки на острове сделаны из дерева – настоящая маленькая экосистема с нетронутой (хочется на это надеяться) руками человека природой.',
        SightType.parksAndNature),
  );

  mocks.add(
    new Sight(
        'Парк Челюскинцев',
        53.9219183,
        27.6146856,
        'https://lh5.googleusercontent.com/p/AF1QipNCLYnfe0ApqBTylwuVp__Ujg44T08bGuV61LH5=w408-h370-k-no',
        'Городской парк для прогулок и отдыха с аттракционами, детскими площадками и рекреационными зонами. На территории также есть танцевальная площадка, летняя эстрада и специально оборудованные места для интеллектуальных игр. Парк появился в 30-е гг. ХХ столетия, в 1974 году была проведена масштабная реконструкция и замена старых аттракционов. Более поздние реконструкции проводились в 2000-х гг.',
        SightType.parksAndNature),
  );

  mocks.add(
    new Sight(
        'Ботанический сад',
        53.9152809,
        27.6108669,
        'https://lh5.googleusercontent.com/p/AF1QipNkab1ep3C4GxV9jzTq66BgEbnxGpVwq6DXUNbt=w426-h240-k-no',
        'Туи, липы, клены, березы, черемуха, дубы, множество видов сирени, дендрарий, тропическая оранжерея, домашние и аптечные растения – Ботанический сад – идеальное место прогулок для любителей флоры. Здесь можно побродить в одиночестве или прийти специально на экскурсию. Второй вариант нам тоже очень нравится, потому что Ботсад – настоящий памятник ландшафтной архитектуры с множеством редких и древних растений – тем интереснее пройтись по саду, внимая рассказам научных сотрудников парка. А с 2018 года здесь начали проводить музыкальный фестиваль Stereo Weekend, и мы надеемся, что это станет хорошей городской традицией.',
        SightType.parksAndNature),
  );

  mocks.add(
    new Sight(
        'Лошицкий парк',
        53.857967,
        27.5731387,
        'https://lh5.googleusercontent.com/p/AF1QipMUCLHotSPT6PMuAjRVhsekMH4qKpL9_n5WnT4w=w408-h306-k-no',
        'Лошицкий парк – это целый усадебный комплекс XVIII века с княжеской резиденцией в стиле русского модерна и огромным массивом деревьев. Усадьба сохранилась вполне неплохо – сегодня там находится музей. А жемчужина усадебно-паркового комплекса – старинная каплица в стиле виленского барокко, построенная в начале XVIII века. Костела в округе не было, поэтому было решено возвести хотя бы небольшую каплицу. В начале ХХ века постройку взрывали, но она все равно выстояла и до сих пор прячется от минчан в гуще деревьев Лошицкого парка. Кстати, летом в этом парке часто проводят музыкальные ивенты и праздники – поглядывай в городские афиши, когда будешь в Минске.',
        SightType.parksAndNature),
  );

//museum
  mocks.add(
    new Sight(
        'Музей истории ВОВ',
        53.9161781,
        27.5357213,
        'https://lh5.googleusercontent.com/p/AF1QipNg5F_K1cauf2G21SfYUnO5XF8o93ckprSNhwiD=w408-h305-k-no',
        'Музей, где хранятся и выставляются экспонаты военного периода 1941-45 гг. Музейный коллектив ведет активную просветительскую и патриотическую деятельность: организует массовые тематические мероприятия, инициирует научные исследования, дает пресс-конференции в СМИ. Для посетителей организованы увлекательные экскурсии, во время которых можно узнать нюансы истории Великой Отечественной войны.',
        SightType.museum),
  );

  mocks.add(
    new Sight(
        'Дом-музей I съезда РСДРП',
        53.9078773,
        27.5694315,
        'https://lh5.googleusercontent.com/p/AF1QipPa6ek-f8IMV-DRuBNwcDO_Vyq0FBMVp9Iw9-bS=w408-h306-k-no',
        'Небольшая деревянная постройка на Захарьевской улице, где в марте 1898 года состоялся первый съезд членов социал-демократической партии (будущие большевики). Уже в 1923 году здесь был открыт мемориальный музей, однако здание было разрушено в период ВОВ. По указу Сталина его восстановили в 1948 году. В фондах хранятся документы, газетные выпуски, материалы партии. Внутри воссоздана обстановка конца XIX столетия.',
        SightType.museum),
  );

  print('added: ${mocks.length} items');
}