
--keep track of procedure sample--
CREATE PROCEDURE dbo.UpdateDimproductInventory1
    @prod_inv_id INT,
    @prod_name VARCHAR(100),
    @prod_type VARCHAR(100),
    @prod_price DECIMAL(10,2),
    @prod_stock INT,
    @brand_id INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the product already exists
    IF NOT EXISTS (
        SELECT 1 FROM dbo.Dimproduct_inventory1 WHERE prod_inv_id = @prod_inv_id
    )
    BEGIN
        -- Insert new product
        INSERT INTO dbo.Dimproduct_inventory1
        (prod_inv_id, prod_name, prod_type, prod_price, prod_stock, brand_id)
        VALUES
        (@prod_inv_id, @prod_name, @prod_type, @prod_price, @prod_stock, @brand_id)
    END
    ELSE
    BEGIN
        -- Update existing product
        UPDATE dbo.Dimproduct_inventory1
        SET 
            prod_name = @prod_name,
            prod_type = @prod_type,
            prod_price = @prod_price,
            prod_stock = @prod_stock,
            brand_id = @brand_id
        WHERE prod_inv_id = @prod_inv_id
    END
END;


select * from dbo.Dimproduct_inventory1


EXEC dbo.UpdateDimproductInventory1 ?, ?, ?, ?, ?, ?

-- Complete update query for all 100 records
UPDATE Dimproduct_inventory1
SET 
    prod_name = CASE prod_inv_id
        WHEN 1 THEN 'Wireless Mouse V1'
        WHEN 2 THEN 'Bluetooth Speaker X2'
        WHEN 3 THEN 'LED Monitor Pro'
        WHEN 4 THEN 'Laptop Stand Plus'
        WHEN 5 THEN 'USB-C Charger Fast'
        WHEN 6 THEN 'Gaming Keyboard RGB'
        WHEN 7 THEN 'Smartphone Case Shield'
        WHEN 8 THEN 'Noise Cancelling Headphones QC'
        WHEN 9 THEN 'Webcam HD'
        WHEN 10 THEN 'Portable SSD Extreme'
        WHEN 11 THEN 'Wireless Mouse V2'
        WHEN 12 THEN 'Bluetooth Speaker X3'
        WHEN 13 THEN 'LED Monitor Ultra'
        WHEN 14 THEN 'Laptop Stand Lite'
        WHEN 15 THEN 'USB-C Charger Turbo'
        WHEN 16 THEN 'Gaming Keyboard Mech'
        WHEN 17 THEN 'Smartphone Case Armor'
        WHEN 18 THEN 'Noise Cancelling Headphones Pro'
        WHEN 19 THEN 'Webcam 4K'
        WHEN 20 THEN 'Portable SSD Ultra'
        WHEN 21 THEN 'Wireless Mouse V3'
        WHEN 22 THEN 'Bluetooth Speaker X4'
        WHEN 23 THEN 'LED Monitor Slim'
        WHEN 24 THEN 'Laptop Stand Flex'
        WHEN 25 THEN 'USB-C Charger Rapid'
        WHEN 26 THEN 'Gaming Keyboard TKL'
        WHEN 27 THEN 'Smartphone Case Tough'
        WHEN 28 THEN 'Noise Cancelling Headphones Elite'
        WHEN 29 THEN 'Webcam Pro'
        WHEN 30 THEN 'Portable SSD Max'
        WHEN 31 THEN 'Wireless Mouse V4'
        WHEN 32 THEN 'Bluetooth Speaker X5'
        WHEN 33 THEN 'LED Monitor Curved'
        WHEN 34 THEN 'Laptop Stand Adjust'
        WHEN 35 THEN 'USB-C Charger Power'
        WHEN 36 THEN 'Gaming Keyboard Macro'
        WHEN 37 THEN 'Smartphone Case Defender'
        WHEN 38 THEN 'Noise Cancelling Headphones Air'
        WHEN 39 THEN 'Webcam Stream'
        WHEN 40 THEN 'Portable SSD Lightning'
        WHEN 41 THEN 'Wireless Mouse V5'
        WHEN 42 THEN 'Bluetooth Speaker X6'
        WHEN 43 THEN 'LED Monitor Wide'
        WHEN 44 THEN 'Laptop Stand Fold'
        WHEN 45 THEN 'USB-C Charger Quick'
        WHEN 46 THEN 'Gaming Keyboard Silent'
        WHEN 47 THEN 'Smartphone Case Armor Plus'
        WHEN 48 THEN 'Noise Cancelling Headphones Pro X'
        WHEN 49 THEN 'Webcam Conference'
        WHEN 50 THEN 'Portable SSD Thunder'
        WHEN 51 THEN 'Wireless Mouse V6'
        WHEN 52 THEN 'Bluetooth Speaker X7'
        WHEN 53 THEN 'LED Monitor Flat'
        WHEN 54 THEN 'Laptop Stand Travel'
        WHEN 55 THEN 'USB-C Charger Super'
        WHEN 56 THEN 'Gaming Keyboard Compact'
        WHEN 57 THEN 'Smartphone Case Rugged'
        WHEN 58 THEN 'Noise Cancelling Headphones Studio'
        WHEN 59 THEN 'Webcam Business'
        WHEN 60 THEN 'Portable SSD Blaze'
        WHEN 61 THEN 'Wireless Mouse V7'
        WHEN 62 THEN 'Bluetooth Speaker X8'
        WHEN 63 THEN 'LED Monitor Frameless'
        WHEN 64 THEN 'Laptop Stand Ergo'
        WHEN 65 THEN 'USB-C Charger Hyper'
        WHEN 66 THEN 'Gaming Keyboard Wireless'
        WHEN 67 THEN 'Smartphone Case Impact'
        WHEN 68 THEN 'Noise Cancelling Headphones Travel'
        WHEN 69 THEN 'Webcam HD Pro'
        WHEN 70 THEN 'Portable SSD Fury'
        WHEN 71 THEN 'Wireless Mouse V8'
        WHEN 72 THEN 'Bluetooth Speaker X9'
        WHEN 73 THEN 'LED Monitor Edge'
        WHEN 74 THEN 'Laptop Stand Mobile'
        WHEN 75 THEN 'USB-C Charger Turbo Plus'
        WHEN 76 THEN 'Gaming Keyboard RGB Pro'
        WHEN 77 THEN 'Smartphone Case Ultra'
        WHEN 78 THEN 'Noise Cancelling Headphones Pure'
        WHEN 79 THEN 'Webcam 4K Pro'
        WHEN 80 THEN 'Portable SSD Nitro'
        WHEN 81 THEN 'Wireless Mouse V9'
        WHEN 82 THEN 'Bluetooth Speaker X10'
        WHEN 83 THEN 'LED Monitor UltraWide'
        WHEN 84 THEN 'Laptop Stand Executive'
        WHEN 85 THEN 'USB-C Charger Speed'
        WHEN 86 THEN 'Gaming Keyboard Tenkeyless'
        WHEN 87 THEN 'Smartphone Case Titan'
        WHEN 88 THEN 'Noise Cancelling Headphones Prime'
        WHEN 89 THEN 'Webcam Full HD'
        WHEN 90 THEN 'Portable SSD Vortex'
        WHEN 91 THEN 'Wireless Mouse V10'
        WHEN 92 THEN 'Bluetooth Speaker X11'
        WHEN 93 THEN 'LED Monitor Professional'
        WHEN 94 THEN 'Laptop Stand Premium'
        WHEN 95 THEN 'USB-C Charger Fast Plus'
        WHEN 96 THEN 'Gaming Keyboard Mechanical'
        WHEN 97 THEN 'Smartphone Case Guardian'
        WHEN 98 THEN 'Noise Cancelling Headphones Supreme'
        WHEN 99 THEN 'Webcam Enterprise'
        WHEN 100 THEN 'Portable SSD Quantum'
        ELSE prod_name
    END,
    prod_type = CASE prod_inv_id
        WHEN 1 THEN 'Electronics A'
        WHEN 2 THEN 'Accessories B'
        WHEN 3 THEN 'Peripherals C'
        WHEN 4 THEN 'Storage D'
        WHEN 5 THEN 'Mobile E'
        WHEN 6 THEN 'Audio F'
        WHEN 7 THEN 'Display G'
        WHEN 8 THEN 'Computer Parts H'
        WHEN 9 THEN 'Charging I'
        WHEN 10 THEN 'Input Devices J'
        WHEN 11 THEN 'Electronics K'
        WHEN 12 THEN 'Accessories L'
        WHEN 13 THEN 'Peripherals M'
        WHEN 14 THEN 'Storage N'
        WHEN 15 THEN 'Mobile O'
        WHEN 16 THEN 'Audio P'
        WHEN 17 THEN 'Display Q'
        WHEN 18 THEN 'Computer Parts R'
        WHEN 19 THEN 'Charging S'
        WHEN 20 THEN 'Input Devices T'
        WHEN 21 THEN 'Electronics U'
        WHEN 22 THEN 'Accessories V'
        WHEN 23 THEN 'Peripherals W'
        WHEN 24 THEN 'Storage X'
        WHEN 25 THEN 'Mobile Y'
        WHEN 26 THEN 'Audio Z'
        WHEN 27 THEN 'Display AA'
        WHEN 28 THEN 'Computer Parts BB'
        WHEN 29 THEN 'Charging CC'
        WHEN 30 THEN 'Input Devices DD'
        WHEN 31 THEN 'Electronics EE'
        WHEN 32 THEN 'Accessories FF'
        WHEN 33 THEN 'Peripherals GG'
        WHEN 34 THEN 'Storage HH'
        WHEN 35 THEN 'Mobile II'
        WHEN 36 THEN 'Audio JJ'
        WHEN 37 THEN 'Display KK'
        WHEN 38 THEN 'Computer Parts LL'
        WHEN 39 THEN 'Charging MM'
        WHEN 40 THEN 'Input Devices NN'
        WHEN 41 THEN 'Electronics OO'
        WHEN 42 THEN 'Accessories PP'
        WHEN 43 THEN 'Peripherals QQ'
        WHEN 44 THEN 'Storage RR'
        WHEN 45 THEN 'Mobile SS'
        WHEN 46 THEN 'Audio TT'
        WHEN 47 THEN 'Display UU'
        WHEN 48 THEN 'Computer Parts VV'
        WHEN 49 THEN 'Charging WW'
        WHEN 50 THEN 'Input Devices XX'
        WHEN 51 THEN 'Electronics YY'
        WHEN 52 THEN 'Accessories ZZ'
        WHEN 53 THEN 'Peripherals AAA'
        WHEN 54 THEN 'Storage BBB'
        WHEN 55 THEN 'Mobile CCC'
        WHEN 56 THEN 'Audio DDD'
        WHEN 57 THEN 'Display EEE'
        WHEN 58 THEN 'Computer Parts FFF'
        WHEN 59 THEN 'Charging GGG'
        WHEN 60 THEN 'Input Devices HHH'
        WHEN 61 THEN 'Electronics III'
        WHEN 62 THEN 'Accessories JJJ'
        WHEN 63 THEN 'Peripherals KKK'
        WHEN 64 THEN 'Storage LLL'
        WHEN 65 THEN 'Mobile MMM'
        WHEN 66 THEN 'Audio NNN'
        WHEN 67 THEN 'Display OOO'
        WHEN 68 THEN 'Computer Parts PPP'
        WHEN 69 THEN 'Charging QQQ'
        WHEN 70 THEN 'Input Devices RRR'
        WHEN 71 THEN 'Electronics SSS'
        WHEN 72 THEN 'Accessories TTT'
        WHEN 73 THEN 'Peripherals UUU'
        WHEN 74 THEN 'Storage VVV'
        WHEN 75 THEN 'Mobile WWW'
        WHEN 76 THEN 'Audio XXX'
        WHEN 77 THEN 'Display YYY'
        WHEN 78 THEN 'Computer Parts ZZZ'
        WHEN 79 THEN 'Charging AAAA'
        WHEN 80 THEN 'Input Devices BBBB'
        WHEN 81 THEN 'Electronics CCCC'
        WHEN 82 THEN 'Accessories DDDD'
        WHEN 83 THEN 'Peripherals EEEE'
        WHEN 84 THEN 'Storage FFFF'
        WHEN 85 THEN 'Mobile GGGG'
        WHEN 86 THEN 'Audio HHHH'
        WHEN 87 THEN 'Display IIII'
        WHEN 88 THEN 'Computer Parts JJJJ'
        WHEN 89 THEN 'Charging KKKK'
        WHEN 90 THEN 'Input Devices LLLL'
        WHEN 91 THEN 'Electronics MMMM'
        WHEN 92 THEN 'Accessories NNNN'
        WHEN 93 THEN 'Peripherals OOOO'
        WHEN 94 THEN 'Storage PPPP'
        WHEN 95 THEN 'Mobile QQQQ'
        WHEN 96 THEN 'Audio RRRR'
        WHEN 97 THEN 'Display SSSS'
        WHEN 98 THEN 'Computer Parts TTTT'
        WHEN 99 THEN 'Charging UUUU'
        WHEN 100 THEN 'Input Devices VVVV'
        ELSE prod_type
    END
WHERE prod_inv_id BETWEEN 1 AND 100;


--service permission grant query--
-- Create login if not already present
CREATE LOGIN [NT Service\MSSQLServerOLAPService] FROM WINDOWS;

-- Grant access to the database

CREATE USER [NT Service\MSSQLServerOLAPService] FOR LOGIN [NT Service\MSSQLServerOLAPService];
ALTER ROLE db_datareader ADD MEMBER [NT Service\MSSQLServerOLAPService];