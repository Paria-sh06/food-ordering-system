# food-ordering-system
## هدف پروژه 
این پروژه یک دیتابیس را برای سیستم سفارش غذای دانشگاه طراحی میکند که در ان دانشجویان و اساتید با استفاده از ایدی خود از منوی روزانه غذای موردعلاقه خود را سفارش میدهند.
## شرح پروژه
در جدول students نام ، کدملی و شماره دانشجویی دانشجویان گرفته میشود که شماره دانشجویی یک primary key است چون باید یکتا باشد و دانشجویان با شماره دانشجویی خود میتوانند سفارش بدهند

در جدول teachers نیز نام ، کدملی ، شماره پرسنلی ، دپارتمان و رنک استاد گرفته میشود که شماره پرسنلی یک primary key است چون شماره پرسنلی اساتید باید متمایز باشد

جدول daily_menu ایدی منو و تاریخ ان گرفته میشود ایدی منو یک primery key  است. 

جدول meals که در ان اطلاعات غذا ها قرار داده میشود دارای فیلد های ایدی غذا(primary key) ،  اسم غذا و قیمت ان است.

جدول  dailt_menu_meals غذای هر روز منو را مشخص میکند که دارای فیلد های ایدی منو (یک foreign key متصل به ایدی منو در جدول daily_menu است تا مطمعن شویم ایدی منو وجود دارد و معتبر است) و ایدی غذا(یک foreign key متصل به جدول meals است تا از وجود و اعتبار غذاها مطمعن شویم) است. یک primary key ترکیبی از ایدی منو و ایدی غذا نیز وجود دارد تا مطعن شویم غذای تکراری در منو وجود ندارد. 

در جدول studentsorders که برای ثبت سفارشات دانشجویان است به هر سفارش یک ایدی منحصر به فرد اختصاص داده میشود و با گرفتن person_id شخص( که یک foreign key متصل به student_id در جدول students است تا مطعنم شودیم دانشجو مورد نظر قبل در دیتابیس ما ثبت نام شده و معتبر است) ایدی منو ای که از ان سفارش میدهد (یک foreign key  متصل به منو ایدی در جدول daily_menu تا ایدی منو های وارد شده معتبر باشند) و ایدی غذایی که سفارش میدهند (یک foreign key متصل به meal_id  در daily_menu_meals ) از انها گرفته و ثبت میشود. یک foodcount نیز برای شمارش اینکه دانشجو چه تعداد از یک غذا میخواهد سفارش دهد وجود دارد.

جدول teachersorders نیز مانند studentsorders است فقط اینکه persion_id در این جدول به teacher_id در جدول teachers متصل است. بقیه موارد مشابه جدول studentsorders  است .

![diagram](https://github.com/user-attachments/assets/b8a73bd0-8788-4f04-a44b-912bf9301447)


