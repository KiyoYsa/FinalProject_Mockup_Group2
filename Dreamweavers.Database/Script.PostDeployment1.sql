/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

SET IDENTITY_INSERT Artisans ON;

MERGE INTO Artisans AS target
USING (VALUES
    (1, 
     'Lang Dulay',
     'Lang Dulay was a renowned T’boli master weaver from Lake Sebu and a recipient of the Gawad Manlilikha ng Bayan (National Living Treasure) award. Known as one of the most respected dreamweavers, she began envisioning intricate T’nalak patterns in her dreams at age 12, which she later transformed into sacred woven designs. Throughout her life, she dedicated herself to preserving and passing on the art of T’nalak weaving to younger generations. She also founded the Lang Dulay Weaving Center, where her family continues her legacy after her passing in 2015.',
     'Lake Sebu',
     'https://www.wheninmanila.com/wp-content/uploads/2015/05/Lang_dulay2.jpg'
    ),

    (2,
     'Maria "Oyog" Todi',
     'Maria Oyog Todi is a T’boli artisan and cultural leader from Lake Sebu, dedicated to preserving her community’s traditions. She is the founder of the Lake Sebu School of Living Tradition (SLT), where she teaches young T’boli students through storytelling, dancing, and traditional arts. Guiding around 65 learners, she encourages pride in their identity and helps pass down cultural knowledge.',
     'Lake Sebu',
     'https://cdn.prod.website-files.com/5e182252b1025a15c98521cb/62a7ead97cbe7fd428f6afc2__MG_0138.jpg'
    ),

    (3,
     'Barbara Kibed Ofong',
     'Barbara Kibed Ofong is a T’boli master weaver from Lake Sebu, known for her expertise in creating T’nalak, a sacred handwoven cloth. As a dreamweaver, her designs are inspired by dreams and reflect the community’s spiritual beliefs. She has created over 90 intricate patterns and is recognized as a National Living Treasure (GAMABA awardee).',
     'Lake Sebu',
     'https://outoftownblog.com/wp-content/uploads/2025/03/Barbara-Ofoing-showing-her-creations-700x933.jpg'
    )

) AS source (ArtisanID, ArtisanName, ArtisanBio, ArtisanLocation, ProfileImage)

ON target.ArtisanID = source.ArtisanID

WHEN MATCHED THEN
    UPDATE SET
        ArtisanName = source.ArtisanName,
        ArtisanBio = source.ArtisanBio,
        ArtisanLocation = source.ArtisanLocation,
        ProfileImage = source.ProfileImage

WHEN NOT MATCHED THEN
    INSERT (ArtisanID, ArtisanName, ArtisanBio, ArtisanLocation, ProfileImage)
    VALUES (source.ArtisanID, source.ArtisanName, source.ArtisanBio, source.ArtisanLocation, source.ProfileImage);

SET IDENTITY_INSERT Artisans OFF;


/* for patterns db*/

MERGE INTO Patterns AS Target
USING (VALUES 
    ('Kafi (Frog)', 
     'Symbol of Life & Rain', 
     'In T’boli culture, the Kafi is a sacred herald of the rainy season. Its song signals the arrival of life-giving water to the abaca plantations of Lake Sebu. Weaving this pattern is a prayer for abundance and a tribute to the natural cycles that sustain the community.'),

    ('Sigul (Snake)', 
     'Symbol of Protection', 
     'Mirroring the zig-zag mountain paths of South Cotabato, the Sigul represents the protection of the ancestors. Historically, these textiles were worn by travelers and warriors to ward off malevolent spirits (Busao) during journeys through the deep highlands.'),

    ('Kleng (Crab)', 
     'Symbol of Family Unity', 
     'The Kleng is an intricate, interlocking design representing the inseparable ties of the T’boli family unit. It symbolizes resilience and the ability to navigate different worlds—moving between the lake and the land while remaining rooted in tradition.') 
) 
AS Source (PatternName, SpiritualMeaning, History)
ON Target.PatternName = Source.PatternName

WHEN MATCHED THEN
    UPDATE SET 
        SpiritualMeaning = Source.SpiritualMeaning,
        History = Source.History

WHEN NOT MATCHED BY TARGET THEN
    INSERT (PatternName, SpiritualMeaning, History)
    VALUES (Source.PatternName, Source.SpiritualMeaning, Source.History)

WHEN NOT MATCHED BY SOURCE THEN
    DELETE;

/* for categories db*/
MERGE INTO Categories AS target
USING (VALUES
    ('All'),
    ('Cloth'),
    ('Malong'),
    ('Clothing'),
    ('Bags'),
    ('Home')
) AS source (CategoryName)
ON target.CategoryName = source.CategoryName
WHEN MATCHED THEN
    UPDATE SET CategoryName = source.CategoryName
WHEN NOT MATCHED THEN
    INSERT (CategoryName)
    VALUES (source.CategoryName);


/* for users db*/
SET IDENTITY_INSERT Users ON;

MERGE INTO Users AS target
USING (VALUES
    (1, 1, 'lang_dulay', 'TnalakMaster123', 'Admin'),      -- Lang Dulay (Admin/Legacy)
    (2, 2, 'maria_todi', 'SLT_LakeSebu', 'Dreamweaver'),   -- Maria Oyog Todi
    (3, 3, 'barbara_ofong', 'Dreamweaver90', 'Dreamweaver'),-- Barbara Kibed Ofong
    (4, NULL, 'test_admin', 'TestAdmin', 'Admin')      -- Test Admin account
) AS source (UserID, ArtisanID, Username, [Password], [Role])

ON target.UserID = source.UserID

WHEN MATCHED THEN
    UPDATE SET
        ArtisanID = source.ArtisanID,
        Username = source.Username,
        [Password] = source.Password,
        [Role] = source.[Role]

WHEN NOT MATCHED THEN
    INSERT (UserID, ArtisanID, Username, [Password], [Role])
    VALUES (source.UserID, source.ArtisanID, source.Username, source.Password, source.Role)

WHEN NOT MATCHED BY SOURCE THEN
    DELETE;

SET IDENTITY_INSERT Users OFF;

/* for crafts db*/
MERGE INTO Crafts AS target
USING (VALUES
-- CLOTH (CategoryID = 2)
(1, 1, 2, 'Bed Klagan Dark Red', 'Handwoven T’nalak in dark red.', 'Queen Size', 'Available', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print2.png'),

(1, 1, 2, 'Bed Duon Blata Dark Blue/Light Blue/Natural', 'Handwoven T’nalak in light and dark blue.', 'Queen Size', 'Available', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print4-.png'),

(1, 1, 2, 'Bed Duon Blata Dark Rust', 'Handwoven T’nalak in light and dark rust.', 'Queen Size', 'Available', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print6-.png'),

(1, 1, 2, 'Bed Klagan Dark Yellow/Light Yellow/Natural', 'Handwoven T’nalak in light and dark yellow.', 'Queen Size', 'Available', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/tinalak_traditional_print7.png'),

-- MALONG (CategoryID = 3)
(2, 2, 3, 'Handwoven Malong - Black and Gold', 'Traditional woven garment in black and gold.', 'Single Size', 'Available', 'https://narrastudio.com/cdn/shop/files/DSCF8477.jpg?v=1772860763&width=750'),

(2, 2, 3, 'Handwoven Malong - Gold and Fuchsia', 'Traditional woven garment in gold and fuchsia.', 'Single Size', 'Available', 'https://narrastudio.com/cdn/shop/files/DSCF8527.jpg?v=1772775577&width=750'),

(2, 2, 3, 'Handwoven Malong - Purple', 'Traditional woven garment in purple.', 'Single Size', 'Available', 'https://narrastudio.com/cdn/shop/files/DSCF8408.jpg?v=1772860900&width=750'),

(2, 2, 3, 'Handwoven Malong - Golden Orange', 'Traditional woven garment in golden orange.', 'Single Size', 'Available', 'https://narrastudio.com/cdn/shop/files/DSCF8434.jpg?v=1772860874&width=750'),

-- CLOTHING (CategoryID = 4)
(3, 3, 4, 'Heritage Poncho', 'Cotton T’nalak poncho from Cotabato with traditional Filipino patterns.', 'Medium', 'Available', 'https://pinas-sadya.com/cdn/shop/files/Pinas_Sadya_0547_2_0e448b5b-d36f-4e96-9765-cfb503510538.jpg?v=1745384929&width=823'),

(3, 3, 4, 'Oldrose Top in Tnalak Cotton', 'Cotton T’nalak top in old rose with traditional Filipino patterns, soft and practical for everyday wear.', 'Medium', 'Available', 'https://pinas-sadya.com/cdn/shop/files/012-8461.jpg?v=1756951948&width=823'),

(3, 3, 4, 'Modern Filipiniana Black Tnalak', 'T’nalak wrap-around top in gray and off-white stripes made from premium abaca.', 'Medium', 'Available', 'https://pinas-sadya.com/cdn/shop/files/1_595dae4d-7852-4fe3-b23d-4e9cfee38203.jpg?v=1720965887&width=823'),

-- BAGS (CategoryID = 5)
(2, 2, 5, 'Tnalak Tote Bag with Kalinga Straps', 'T’nalak tote bag with Kalinga-style straps.', 'Standard', 'Available', 'https://pinas-sadya.com/cdn/shop/files/012-7582.jpg?v=1756965973&width=823'),

(2, 2, 5, 'Manila Tote Bag with Black Tnalak', 'T’nalak tote bag inspired by Filipino traditions.', 'Standard', 'Available', 'https://pinas-sadya.com/cdn/shop/files/012-7536.jpg?v=1756966070&width=823'),

(2, 2, 5, 'Kalinga Tote Bag in Bagobo Tnalak Weave', 'T’nalak bag with Langkit handle and denim canvas.', 'Standard', 'Available', 'https://pinas-sadya.com/cdn/shop/files/672A6117_1.jpg?v=1707394636&width=823'),

-- HOME (CategoryID = 6)
(1, 1, 6, 'Cushion River Design Pillowcase', 'T’nalak River Design cushion cover.', 'Standard', 'Available', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/CUSHION-RIVER-DESIGN.png'),

(1, 1, 6, 'Maranao Crown Light Grey with Black Coco', 'T’nalak Maranao Crown cushion cover.', 'Standard', 'Available', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/Cushion-Cover-maranao-Crown-Light-Grey-with-black-coco.png'),

(1, 1, 6, 'Stool T’nalak Traditional Ikat Blue', 'T’nalak stool with Ikat pattern in blue.', 'Standard', 'Available', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/stool-tnalak-ikat-blue.png'),

(1, 1, 6, 'Stool T’nalak Traditional Ikat Brown', 'T’nalak stool with Ikat pattern in brown.', 'Standard', 'Available', 'https://www.tnalakhome.com/wp-content/uploads/2020/12/stool-tnalak-ikat-brown.png')

) AS source (ArtisanID, PatternID, CategoryID, CraftName, CraftDesc, CraftDimension, [Status], Thumbnail)

ON target.CraftName = source.CraftName

WHEN MATCHED THEN
    UPDATE SET 
        ArtisanID = source.ArtisanID,
        PatternID = source.PatternID,
        CategoryID = source.CategoryID,
        CraftDesc = source.CraftDesc,
        CraftDimension = source.CraftDimension,
        [Status] = source.[Status],
        Thumbnail = source.Thumbnail

WHEN NOT MATCHED THEN
    INSERT (ArtisanID, PatternID, CategoryID, CraftName, CraftDesc, CraftDimension, [Status], Thumbnail)
    VALUES (source.ArtisanID, source.PatternID, source.CategoryID, source.CraftName, source.CraftDesc, source.CraftDimension, source.[Status], source.Thumbnail);
