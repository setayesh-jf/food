# food


در این برنامه ما قصد داریم یک سامانه سفارش غذا در دانشگاه درست کنیم 
جداولی که درست شده ما جدول های استاد،دانشجو،منو روزانه ،غذا و سفارش نهایی طرف را اضافه کردیم 

به نظر من با جدا کردن ساخت جدول استاد و دانشجو با توجه به اینکه سوال تاکید کرده بود که کی دانشجو هست و کی استاد 
بنابراین شناسایی استاد یا دانشجو اوکی شد 
احراز هویت هر دو در همان جدول های خودشان قرار میگیرد مانند کد ملی،نام کاربری و رمز عبور آنها 
برای اینکه یک شخصی هر دو باشد 
فرض ta بودن را در نظر گرفتم و در جدول دانشجو 
یک بولین is ta تعریف کردم با مقدار پیش فرض false و اگر ta باشه true میشه 
در 
National id هر کدام unique بودن را قرار دادیم زیرا کد ملی منحصر به فرد 
چون میخواهیم کد ملی تکراری نداشته باشیم این کار رو میکنیم 
Primary key در 
Student وmaster
به کار رفته در قسمت شماره دانشجویی و یا شماره پرسنلی چون منحصر به فرد بودن اینها و عدم تکراری بودن و خودش این دو شماره را مقدار دهی کند 


در کل در کلاس دانشجو ما نام کاربری،پسورد،شماره ملی،شماره دانشجویی،رشته او و تشخیص ta بودن یا نبودن به شکل boolean 
در جدول استاد


نام کاربری ،رمر عبور،شماره ملی،کد پرسنلی ، دپارتمان و تحصیلات آکادمیک را ذکر کردیم جدول دیگر برای food بود 
یه آیدی غذا هم primary key دادیم زیرا منحصر به فرد بودن و غیر تکراری بودن را نمایان کنیم و مقدار دهی خودکار توسط همین کلید 
اسم غذا را هم آوردیم 


در جدول menu ما یک primary key برای آیدی منو داریم 
چون هر منو هر روز منحصر به فرد 
و مسئول آن را تغییر میدهد 
پس مقدار دهی پیش فرض توسط این کلید رخ میده در هنگام insert 
آیدی غذا را میگیم null نباشه «آیدی هر غذا از جدول food گرفته شده و تعیین »


روز و قیمت به واحد دسیمال تعریف کردیم
که مقدار قسمت با دورقم اعشار بیان میکند .«دو رقم اعشار یادم رفت🙈
یک foreign key  استفاده کردیم برای ارتباط گرفتن دو جدول food  و  menu با food id 

در آخرین جدول که سفارش هست ما شماره سفارش هم primary key گفتیم یه دلیل دلایلی چون خاص بودن و عدم تکراریت 

و مقدار دهی خودکار در آن صورت میگیرد 
ما در اینجا شماره دانشجویی و شماره پرسنلی را وارد میکنیم 

چون سفارش یا دانشجو میگیره یا استاد یا ta پس باید شماره دانشجویی و شماره پرسنلی هر دو موجود باشد 
شماره منو یا آیدی منو رو هم در اینجا تعریف کردیم null نباشه 
Amount که مقادیر را مشخص میکند مقدار پیش فرض اولیه 
۱ میشه و این مقدار بر حسب تعدادی که غذا برداشتیم حساب میشه 
روز سفارش هم تعریف کردیم که چه روزی هست و شرط null نبودن گذاشتیم یک قیمت کل یا total prices تعریف کردیم برای ضرب تعداد غذا در قیمت اولیه که در insert انجام میشه و مقدار دهی میشه 
Foreign key بین دانشجو و استاد و منو 

ایجاد کردیم که ارتباط داشته باشند با هم 
در آخر هم برای اطمینان از اینکه آیا دانشجو هست یا استاد 
با استفاده از check برای مشخص شدن وضعیت شرط می‌گذارد که  شماره دانشجویی و شماره پرسنلی استاد null نباشد 
در اصل در این تیکه آخر موجودیت این دو موجود را روشن می‌کنیم
و  دلیل دیگر این است از وارد شدن موجودیت های غیر مجاز خودداری کنیم و به همین دلیل است که محدودیت تعیین کردیم
