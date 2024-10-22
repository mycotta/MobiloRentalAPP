PGDMP     1    3                x            db_mobilorental    12.0    12.0 C    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16597    db_mobilorental    DATABASE     �   CREATE DATABASE db_mobilorental WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE db_mobilorental;
                postgres    false            �            1259    25386    tbm_booking    TABLE     x  CREATE TABLE public.tbm_booking (
    bookingid character varying(7) NOT NULL,
    customerid character varying(7) NOT NULL,
    date_order timestamp without time zone NOT NULL,
    sdatebooking timestamp without time zone NOT NULL,
    duration_booking numeric NOT NULL,
    edatebooking timestamp without time zone NOT NULL,
    down_payment numeric NOT NULL,
    pcadd character varying(200),
    opadd character varying(150),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone,
    dlt boolean DEFAULT false
);
    DROP TABLE public.tbm_booking;
       public         heap    postgres    false            �            1259    25418    tbm_booking_nextid    SEQUENCE     {   CREATE SEQUENCE public.tbm_booking_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbm_booking_nextid;
       public          postgres    false            �            1259    25459    tbm_bookingdetail    TABLE     �  CREATE TABLE public.tbm_bookingdetail (
    detailid character varying(7) NOT NULL,
    bookingid character varying(7) NOT NULL,
    carid character varying(5) NOT NULL,
    price numeric NOT NULL,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone,
    dlt boolean DEFAULT false
);
 %   DROP TABLE public.tbm_bookingdetail;
       public         heap    postgres    false            �            1259    25430    tbm_bookingdetail_nextid    SEQUENCE     �   CREATE SEQUENCE public.tbm_bookingdetail_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbm_bookingdetail_nextid;
       public          postgres    false            �            1259    25353    tbm_car    TABLE     l  CREATE TABLE public.tbm_car (
    carid character varying(5) NOT NULL,
    platnumber character varying(20) NOT NULL,
    typeid character varying(10),
    imagename character varying(255),
    filepath_car text,
    price numeric NOT NULL,
    description text NOT NULL,
    passengercapacity numeric NOT NULL,
    statusavailable boolean NOT NULL,
    dlt boolean DEFAULT false,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone
);
    DROP TABLE public.tbm_car;
       public         heap    postgres    false            �            1259    16808    tbm_carbrand    TABLE     �  CREATE TABLE public.tbm_carbrand (
    carbrandid character varying(10) NOT NULL,
    brandname character varying(50) NOT NULL,
    dlt boolean,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone
);
     DROP TABLE public.tbm_carbrand;
       public         heap    postgres    false            �            1259    25261    tbm_carbrandid_nextid    SEQUENCE     ~   CREATE SEQUENCE public.tbm_carbrandid_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbm_carbrandid_nextid;
       public          postgres    false            �            1259    17081    tbm_carcategory    TABLE     �  CREATE TABLE public.tbm_carcategory (
    carcategoryid character varying(10) NOT NULL,
    carcategoryname character varying(50) NOT NULL,
    dlt boolean DEFAULT false,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone
);
 #   DROP TABLE public.tbm_carcategory;
       public         heap    postgres    false            �            1259    17091    tbm_carcategory_nextid    SEQUENCE        CREATE SEQUENCE public.tbm_carcategory_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbm_carcategory_nextid;
       public          postgres    false            �            1259    25259    tbm_carcategoryid_nextid    SEQUENCE     �   CREATE SEQUENCE public.tbm_carcategoryid_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbm_carcategoryid_nextid;
       public          postgres    false            �            1259    25321    tbm_carid_nextid    SEQUENCE     y   CREATE SEQUENCE public.tbm_carid_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbm_carid_nextid;
       public          postgres    false            �            1259    25408    tbm_carrepair    TABLE     �  CREATE TABLE public.tbm_carrepair (
    repairid character varying(7) NOT NULL,
    carid character varying(5) NOT NULL,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone,
    dlt boolean DEFAULT false
);
 !   DROP TABLE public.tbm_carrepair;
       public         heap    postgres    false            �            1259    25444    tbm_carrepair_nextid    SEQUENCE     }   CREATE SEQUENCE public.tbm_carrepair_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbm_carrepair_nextid;
       public          postgres    false            �            1259    25434    tbm_carreturn    TABLE       CREATE TABLE public.tbm_carreturn (
    returnid character varying(7) NOT NULL,
    bookingid character varying(7) NOT NULL,
    dtreturn timestamp without time zone NOT NULL,
    remainingpayment numeric,
    penaltypayment numeric,
    paymentamount numeric,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone,
    dlt boolean DEFAULT false
);
 !   DROP TABLE public.tbm_carreturn;
       public         heap    postgres    false            �            1259    25432    tbm_carreturn_nextid    SEQUENCE     }   CREATE SEQUENCE public.tbm_carreturn_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbm_carreturn_nextid;
       public          postgres    false            �            1259    25446    tbm_cartype    TABLE     �  CREATE TABLE public.tbm_cartype (
    typeid character varying(10) NOT NULL,
    carcategoryid character varying(10) NOT NULL,
    carbrandid character varying(10) NOT NULL,
    typename character varying(50) NOT NULL,
    dlt boolean DEFAULT false,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone
);
    DROP TABLE public.tbm_cartype;
       public         heap    postgres    false            �            1259    25457    tbm_cartype_nextid    SEQUENCE     {   CREATE SEQUENCE public.tbm_cartype_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbm_cartype_nextid;
       public          postgres    false            �            1259    25265    tbm_cartype_typeid    SEQUENCE     {   CREATE SEQUENCE public.tbm_cartype_typeid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbm_cartype_typeid;
       public          postgres    false            �            1259    25363    tbm_customer    TABLE     h  CREATE TABLE public.tbm_customer (
    customerid character varying(7) NOT NULL,
    name character varying(50) NOT NULL,
    identity_type character varying(10) NOT NULL,
    identity_number character varying(20) NOT NULL,
    gender character varying(10),
    phonenumber numeric,
    dateofbirth timestamp without time zone,
    address text,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone,
    dlt boolean DEFAULT false
);
     DROP TABLE public.tbm_customer;
       public         heap    postgres    false            �            1259    25373    tbm_customer_nextid    SEQUENCE     |   CREATE SEQUENCE public.tbm_customer_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbm_customer_nextid;
       public          postgres    false            �            1259    17079    tbm_userid_nextid    SEQUENCE     z   CREATE SEQUENCE public.tbm_userid_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbm_userid_nextid;
       public          postgres    false            �            1259    17067 	   tbm_users    TABLE     J  CREATE TABLE public.tbm_users (
    userid character varying(10) NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    fullname character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    groupusers character varying(50) NOT NULL,
    active boolean DEFAULT true NOT NULL,
    dlt boolean DEFAULT false NOT NULL,
    opadd character varying(150),
    pcadd character varying(200),
    luadd timestamp(6) without time zone DEFAULT now(),
    opedit character varying(150),
    pcedit character varying(200),
    luedit timestamp(6) without time zone
);
    DROP TABLE public.tbm_users;
       public         heap    postgres    false            �            1259    17051 	   tbmmodule    TABLE     �  CREATE TABLE public.tbmmodule (
    moduleid character varying(100) NOT NULL,
    module_nama character varying(150),
    ket character varying(200),
    groupcode character varying(250),
    groupname character varying(200),
    op character varying(30),
    pc character varying(30),
    lu timestamp(6) without time zone DEFAULT now(),
    dlt boolean DEFAULT false,
    isprintable boolean DEFAULT false,
    isdownloadable boolean DEFAULT false,
    isforceableedit boolean DEFAULT false
);
    DROP TABLE public.tbmmodule;
       public         heap    postgres    false            �            1259    17064    tbmmodule_nextid    SEQUENCE     y   CREATE SEQUENCE public.tbmmodule_nextid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbmmodule_nextid;
       public          postgres    false            �            1259    16784    tbmusermodules    TABLE     G  CREATE TABLE public.tbmusermodules (
    usermoduleid character varying(20) NOT NULL,
    moduleid character varying(100),
    userid character varying(20),
    isread boolean DEFAULT false,
    isadd boolean DEFAULT false,
    isedit boolean DEFAULT false,
    isdelete boolean DEFAULT false,
    issave boolean DEFAULT false,
    isprint boolean DEFAULT false,
    op character varying(30),
    pc character varying(30),
    lu timestamp(6) without time zone DEFAULT now(),
    dlt boolean DEFAULT false,
    isdownload boolean DEFAULT false,
    isupload boolean DEFAULT false
);
 "   DROP TABLE public.tbmusermodules;
       public         heap    postgres    false            �          0    25386    tbm_booking 
   TABLE DATA           �   COPY public.tbm_booking (bookingid, customerid, date_order, sdatebooking, duration_booking, edatebooking, down_payment, pcadd, opadd, luadd, opedit, pcedit, luedit, dlt) FROM stdin;
    public          postgres    false    217   �\       �          0    25459    tbm_bookingdetail 
   TABLE DATA           �   COPY public.tbm_bookingdetail (detailid, bookingid, carid, price, opadd, pcadd, luadd, opedit, pcedit, luedit, dlt) FROM stdin;
    public          postgres    false    226   )]       �          0    25353    tbm_car 
   TABLE DATA           �   COPY public.tbm_car (carid, platnumber, typeid, imagename, filepath_car, price, description, passengercapacity, statusavailable, dlt, opadd, pcadd, luadd, opedit, pcedit, luedit) FROM stdin;
    public          postgres    false    214   �]       �          0    16808    tbm_carbrand 
   TABLE DATA           o   COPY public.tbm_carbrand (carbrandid, brandname, dlt, opadd, pcadd, luadd, opedit, pcedit, luedit) FROM stdin;
    public          postgres    false    203   �_       �          0    17081    tbm_carcategory 
   TABLE DATA           {   COPY public.tbm_carcategory (carcategoryid, carcategoryname, dlt, opadd, pcadd, luadd, opedit, pcedit, luedit) FROM stdin;
    public          postgres    false    208   `       �          0    25408    tbm_carrepair 
   TABLE DATA           j   COPY public.tbm_carrepair (repairid, carid, opadd, pcadd, luadd, opedit, pcedit, luedit, dlt) FROM stdin;
    public          postgres    false    218   �`       �          0    25434    tbm_carreturn 
   TABLE DATA           �   COPY public.tbm_carreturn (returnid, bookingid, dtreturn, remainingpayment, penaltypayment, paymentamount, opadd, pcadd, luadd, opedit, pcedit, luedit, dlt) FROM stdin;
    public          postgres    false    222   Pa       �          0    25446    tbm_cartype 
   TABLE DATA           �   COPY public.tbm_cartype (typeid, carcategoryid, carbrandid, typename, dlt, opadd, pcadd, luadd, opedit, pcedit, luedit) FROM stdin;
    public          postgres    false    224   �a       �          0    25363    tbm_customer 
   TABLE DATA           �   COPY public.tbm_customer (customerid, name, identity_type, identity_number, gender, phonenumber, dateofbirth, address, opadd, pcadd, luadd, opedit, pcedit, luedit, dlt) FROM stdin;
    public          postgres    false    215   �b       �          0    17067 	   tbm_users 
   TABLE DATA           �   COPY public.tbm_users (userid, username, password, fullname, email, groupusers, active, dlt, opadd, pcadd, luadd, opedit, pcedit, luedit) FROM stdin;
    public          postgres    false    206   �c       �          0    17051 	   tbmmodule 
   TABLE DATA           �   COPY public.tbmmodule (moduleid, module_nama, ket, groupcode, groupname, op, pc, lu, dlt, isprintable, isdownloadable, isforceableedit) FROM stdin;
    public          postgres    false    204   f       �          0    16784    tbmusermodules 
   TABLE DATA           �   COPY public.tbmusermodules (usermoduleid, moduleid, userid, isread, isadd, isedit, isdelete, issave, isprint, op, pc, lu, dlt, isdownload, isupload) FROM stdin;
    public          postgres    false    202   ,f       �           0    0    tbm_booking_nextid    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbm_booking_nextid', 1, false);
          public          postgres    false    219            �           0    0    tbm_bookingdetail_nextid    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbm_bookingdetail_nextid', 16, true);
          public          postgres    false    220            �           0    0    tbm_carbrandid_nextid    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbm_carbrandid_nextid', 5, true);
          public          postgres    false    211            �           0    0    tbm_carcategory_nextid    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbm_carcategory_nextid', 1, false);
          public          postgres    false    209            �           0    0    tbm_carcategoryid_nextid    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbm_carcategoryid_nextid', 9, true);
          public          postgres    false    210            �           0    0    tbm_carid_nextid    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbm_carid_nextid', 11, true);
          public          postgres    false    213            �           0    0    tbm_carrepair_nextid    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbm_carrepair_nextid', 1, false);
          public          postgres    false    223            �           0    0    tbm_carreturn_nextid    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbm_carreturn_nextid', 1, false);
          public          postgres    false    221            �           0    0    tbm_cartype_nextid    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbm_cartype_nextid', 10, true);
          public          postgres    false    225            �           0    0    tbm_cartype_typeid    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbm_cartype_typeid', 1, false);
          public          postgres    false    212            �           0    0    tbm_customer_nextid    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbm_customer_nextid', 5, true);
          public          postgres    false    216            �           0    0    tbm_userid_nextid    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbm_userid_nextid', 6, true);
          public          postgres    false    207            �           0    0    tbmmodule_nextid    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbmmodule_nextid', 1, false);
          public          postgres    false    205                       2606    25395    tbm_booking tbm_booking_pk 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbm_booking
    ADD CONSTRAINT tbm_booking_pk PRIMARY KEY (bookingid);
 D   ALTER TABLE ONLY public.tbm_booking DROP CONSTRAINT tbm_booking_pk;
       public            postgres    false    217            	           2606    25468 &   tbm_bookingdetail tbm_bookingdetail_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbm_bookingdetail
    ADD CONSTRAINT tbm_bookingdetail_pk PRIMARY KEY (detailid);
 P   ALTER TABLE ONLY public.tbm_bookingdetail DROP CONSTRAINT tbm_bookingdetail_pk;
       public            postgres    false    226            �
           2606    25362    tbm_car tbm_car_pk 
   CONSTRAINT     S   ALTER TABLE ONLY public.tbm_car
    ADD CONSTRAINT tbm_car_pk PRIMARY KEY (carid);
 <   ALTER TABLE ONLY public.tbm_car DROP CONSTRAINT tbm_car_pk;
       public            postgres    false    214            �
           2606    16816    tbm_carbrand tbm_carbrand_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbm_carbrand
    ADD CONSTRAINT tbm_carbrand_pk PRIMARY KEY (carbrandid);
 F   ALTER TABLE ONLY public.tbm_carbrand DROP CONSTRAINT tbm_carbrand_pk;
       public            postgres    false    203            �
           2606    17090 "   tbm_carcategory tbm_carcategory_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.tbm_carcategory
    ADD CONSTRAINT tbm_carcategory_pk PRIMARY KEY (carcategoryid);
 L   ALTER TABLE ONLY public.tbm_carcategory DROP CONSTRAINT tbm_carcategory_pk;
       public            postgres    false    208                       2606    25417    tbm_carrepair tbm_carrepair_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbm_carrepair
    ADD CONSTRAINT tbm_carrepair_pk PRIMARY KEY (repairid);
 H   ALTER TABLE ONLY public.tbm_carrepair DROP CONSTRAINT tbm_carrepair_pk;
       public            postgres    false    218                       2606    25443    tbm_carreturn tbm_carreturn_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbm_carreturn
    ADD CONSTRAINT tbm_carreturn_pk PRIMARY KEY (returnid);
 H   ALTER TABLE ONLY public.tbm_carreturn DROP CONSTRAINT tbm_carreturn_pk;
       public            postgres    false    222                       2606    25455    tbm_cartype tbm_cartype_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbm_cartype
    ADD CONSTRAINT tbm_cartype_pk PRIMARY KEY (typeid);
 D   ALTER TABLE ONLY public.tbm_cartype DROP CONSTRAINT tbm_cartype_pk;
       public            postgres    false    224            �
           2606    25372    tbm_customer tbm_customer_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbm_customer
    ADD CONSTRAINT tbm_customer_pk PRIMARY KEY (customerid);
 F   ALTER TABLE ONLY public.tbm_customer DROP CONSTRAINT tbm_customer_pk;
       public            postgres    false    215            �
           2606    17077    tbm_users tbm_users_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbm_users
    ADD CONSTRAINT tbm_users_pk PRIMARY KEY (userid);
 @   ALTER TABLE ONLY public.tbm_users DROP CONSTRAINT tbm_users_pk;
       public            postgres    false    206            �
           2606    17063    tbmmodule tbmmodule_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbmmodule
    ADD CONSTRAINT tbmmodule_pkey PRIMARY KEY (moduleid);
 B   ALTER TABLE ONLY public.tbmmodule DROP CONSTRAINT tbmmodule_pkey;
       public            postgres    false    204            �
           2606    16798 "   tbmusermodules tbmusermodules_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbmusermodules
    ADD CONSTRAINT tbmusermodules_pkey PRIMARY KEY (usermoduleid);
 L   ALTER TABLE ONLY public.tbmusermodules DROP CONSTRAINT tbmusermodules_pkey;
       public            postgres    false    202            �
           1259    17066    tbmmodule_module_nama    INDEX     R   CREATE INDEX tbmmodule_module_nama ON public.tbmmodule USING btree (module_nama);
 )   DROP INDEX public.tbmmodule_module_nama;
       public            postgres    false    204            �   j   x��u
20��u
2�4202�50�5�T00�#�bpQ#C������r�r����t��	v��C�4.�MF��gh�$
��8��A��m�!V����/F��� pE�      �   �   x���;�0�z}
.�hv�˺#�8�����GHl!�� �ՔO;�X��4p�Hⱅ.eη��\�4��c�$t��]�,zȠhɯ{��`�<�=P�y1IL�t���/�7O��S'a���m0�'��Ƙ��G      �   �  x����N�0 ��~�%��'N|K�
iڦd��,!��C����q�RV6�I.�<���;�D�!�8��D�NNѽYN͆��O�(QZ���Y��r���gu[����t�\O��~ՄPA샺E��8�1.z׸;�q7���	��ξ�|�]�%�<�5Ȑ�N����3"� ��HňO$� <Kkz}ڎ;:kOoB��@G��T��T$�ԐJG�\��x4:���T�_��b��U��k*g����*�[�)+G�����9�Pޫ�cG��;�^ra�On �4L��f�����~�n��g��<�����!լD��l�R9�X���E��Y+X�˖DfV�B��C��c�ښ�U���'\)k s@�K&��xjf���  M&ӗ��mV(�6�A#װ��a�7��_>8�v"�~1�%x�����>���+n�A��}��� -a�<      �   b   x��u
2�ɯ�/I�L�t��	v�t�r����A ._� #N�����s�V�fg�ք�7���4)�8�(���>��I�E��y�5��qqq �>�      �   �   x����
�0��ۧ�nnҴͦV�CZIUP\����o�D�����Y���v:�>��!ʐp��&�91��RH�ڲX,���qi���G!O��$+���3�y��z��Y벚�?H�҈,&�����!�$�z��Ϯ�ޞ��痿B�)a"�T�2*��������`�>`�n����N!w���/�-��rsm*      �   b   x���;�  й��@J�᳉�H�.�cx�����^ɂJ����"07��V��$$�8jK�B"o��y�z"���?�O��.�������&      �   �   x�}�;�0D��)r�X��_�t�%J���c#�(X�f4��[�Bkw�`��9N�d�#��B�Ў�G�0���|�_ϕN�%��`$X͈���[O��1�,��!I��#4�?�O��މ��۴Rj��/�      �   �   x���_�0ş�>E_ q�[η
�)��2�,�Oߴ+�1ƅ�9���I4sa_�~��Bj̢0X�b?�i�7a I�2$6��6b1��c�s��)e��J����]�>%Kּ��JUf`}�i�� 9�Uv���4$����]WVb.T��\�ao=x�����8�ݓWe�W�Iޫ.�A)�ʰ����E!���c���E��A�G8l|Iq�XIb!���g��      �     x����j�0E�����C�e��Ҕl�]�d#�CC�����$M�E�Ĭt9�;S�5�c?���Eش��8C,$�����)f/�Kwo�%�r?��]�T��_�Lm{E0y��ۏy�=����uU6��n�z�T���(U���gN�����k�f�����|$�4���>���0�����k��֦�`w �`a:CYL^��c�,�)O��%��s�Ԇ���m5��Ӷ��Ecu�6&�+-�O�q�� �z<�U�L�(z{`�W      �     x����n�0���Sp���c;'��Bi�vs� ��H�$��fC[TJYid�=������Q4i�>݅fZx�4�&]m1-��P;��-�i����v4�,K�{e�L�8f~����(��6I����ϓUt/�(GͶ����w���uгs��a7@�T1�n�����jv��|Zrވ
��d�;]NwV�Ks[�6-��N{�{��d��
�2e��T"F��"Z�%�9������ ��JU�gh��j���,0u�^�g�㧎y���ܴN�AEi�1"(�vT5����� &�Ȇ��-�[-4}>K���q�����h����4�����z�-����Hjy^����җcw�D�:�(M�(��v.%�a(X�B�6�!���0S`Ǭ���Z�r97Ŝ�DQ�e�"*q��6�useN&)��A7�/�ܪ��[?���G��K�k��ԑb�pE@�f�*<mç����	Ͳd���^ūÉ{���\g0�?|O�(MŔ*��}>�Z���J�      �      x������ � �      �      x������ � �     