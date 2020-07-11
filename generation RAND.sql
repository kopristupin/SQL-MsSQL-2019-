

INSERT INTO fuelConsumption VALUES(' 2020-03-01',0,	0,0 )

DECLARE @i INT
SET @i=0;
WHILE  @i<=95
	BEGIN
	DECLARE @r INT
	DECLARE @date date;
	SET @r = 3120* @i +(CHECKSUM(NEWID()) %150);
	SET @date=DATEADD(day, @i, '20200302');
		INSERT INTO fuelConsumption VALUES ( @date, @r ,ABS(CHECKSUM(NEWID()) % (50))+ 200, 
		(@r - (SELECT counter FROM fuelConsumption WHERE date=(SELECT MAX(date) FROM fuelConsumption))))
		SET @i= @i+1;
	END;

	

DECLARE @i2 INT;
SET @i2=0
WHILE  @i2<=30
	BEGIN
		UPDATE fuelConsumption 
		SET SFOC = ABS(CHECKSUM(NEWID()) % (50))+ 200
		WHERE date=DATEADD(day, @i2, '20200429')
	SET @i2= @i2+1
	END

	SELECT date, SFOC FROM fuelConsumption WHERE date<='2020-06-02' and date>'2020-06-01'