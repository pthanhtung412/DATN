PGDMP      /        
        |            DACN    16.1    16.1 U    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Y           1262    16773    DACN    DATABASE     �   CREATE DATABASE "DACN" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "DACN";
                postgres    false            �            1259    16775    admin    TABLE     �   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    16774    admin_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_admin_id_seq;
       public          postgres    false    216            Z           0    0    admin_admin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public.admin.admin_id;
          public          postgres    false    215            �            1259    16811    badminton_yard    TABLE       CREATE TABLE public.badminton_yard (
    yard_id integer NOT NULL,
    name character varying(255) NOT NULL,
    phone_num bigint NOT NULL,
    address character varying(255) NOT NULL,
    average_price integer NOT NULL,
    owner_id integer NOT NULL,
    linkimg text
);
 "   DROP TABLE public.badminton_yard;
       public         heap    postgres    false            �            1259    16810    badminton_yard_yard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.badminton_yard_yard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.badminton_yard_yard_id_seq;
       public          postgres    false    224            [           0    0    badminton_yard_yard_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.badminton_yard_yard_id_seq OWNED BY public.badminton_yard.yard_id;
          public          postgres    false    223            �            1259    17027    booking    TABLE     `   CREATE TABLE public.booking (
    payment_id integer NOT NULL,
    frame_id integer NOT NULL
);
    DROP TABLE public.booking;
       public         heap    postgres    false            �            1259    17202    court    TABLE     i   CREATE TABLE public.court (
    court_id integer NOT NULL,
    yard_id integer,
    court_num integer
);
    DROP TABLE public.court;
       public         heap    postgres    false            �            1259    17205    court_court_id_seq    SEQUENCE     �   CREATE SEQUENCE public.court_court_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.court_court_id_seq;
       public          postgres    false    232            \           0    0    court_court_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.court_court_id_seq OWNED BY public.court.court_id;
          public          postgres    false    233            �            1259    16793    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16792    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    220            ]           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    219            �            1259    16802 
   enterprise    TABLE     �   CREATE TABLE public.enterprise (
    enterprise_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.enterprise;
       public         heap    postgres    false            �            1259    16801    enterprise_enterprise_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enterprise_enterprise_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enterprise_enterprise_id_seq;
       public          postgres    false    222            ^           0    0    enterprise_enterprise_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enterprise_enterprise_id_seq OWNED BY public.enterprise.enterprise_id;
          public          postgres    false    221            �            1259    16992    frame    TABLE     �   CREATE TABLE public.frame (
    court_id integer,
    time_frame timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    frame_price integer NOT NULL,
    frame_id integer NOT NULL
);
    DROP TABLE public.frame;
       public         heap    postgres    false            �            1259    16991    frame_frame_id_seq    SEQUENCE     �   CREATE SEQUENCE public.frame_frame_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.frame_frame_id_seq;
       public          postgres    false    227            _           0    0    frame_frame_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.frame_frame_id_seq OWNED BY public.frame.frame_id;
          public          postgres    false    226            �            1259    16834    news    TABLE     �   CREATE TABLE public.news (
    news_id character varying(255) NOT NULL,
    enterprise_id integer,
    admin_id integer,
    description text,
    path text,
    linkimg text
);
    DROP TABLE public.news;
       public         heap    postgres    false            �            1259    17219    notification    TABLE     �   CREATE TABLE public.notification (
    notification_id character varying(255) NOT NULL,
    enterprise_id integer,
    admin_id integer,
    description text,
    path text,
    linkimg text
);
     DROP TABLE public.notification;
       public         heap    postgres    false            �            1259    17042    participate_court    TABLE     p   CREATE TABLE public.participate_court (
    payment_id integer NOT NULL,
    description text,
    path text
);
 %   DROP TABLE public.participate_court;
       public         heap    postgres    false            �            1259    17006    payment    TABLE     �   CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    customer_id integer,
    admin_id integer,
    owner_id integer,
    total_cost integer NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    17005    payment_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_payment_id_seq;
       public          postgres    false    229            `           0    0    payment_payment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;
          public          postgres    false    228            �            1259    16784 
   yard_owner    TABLE     �   CREATE TABLE public.yard_owner (
    owner_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.yard_owner;
       public         heap    postgres    false            �            1259    16783    yard_owner_owner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.yard_owner_owner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.yard_owner_owner_id_seq;
       public          postgres    false    218            a           0    0    yard_owner_owner_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.yard_owner_owner_id_seq OWNED BY public.yard_owner.owner_id;
          public          postgres    false    217            �           2604    16778    admin admin_id    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16814    badminton_yard yard_id    DEFAULT     �   ALTER TABLE ONLY public.badminton_yard ALTER COLUMN yard_id SET DEFAULT nextval('public.badminton_yard_yard_id_seq'::regclass);
 E   ALTER TABLE public.badminton_yard ALTER COLUMN yard_id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    17206    court court_id    DEFAULT     p   ALTER TABLE ONLY public.court ALTER COLUMN court_id SET DEFAULT nextval('public.court_court_id_seq'::regclass);
 =   ALTER TABLE public.court ALTER COLUMN court_id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    16796    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16805    enterprise enterprise_id    DEFAULT     �   ALTER TABLE ONLY public.enterprise ALTER COLUMN enterprise_id SET DEFAULT nextval('public.enterprise_enterprise_id_seq'::regclass);
 G   ALTER TABLE public.enterprise ALTER COLUMN enterprise_id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16996    frame frame_id    DEFAULT     p   ALTER TABLE ONLY public.frame ALTER COLUMN frame_id SET DEFAULT nextval('public.frame_frame_id_seq'::regclass);
 =   ALTER TABLE public.frame ALTER COLUMN frame_id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    17009    payment payment_id    DEFAULT     x   ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);
 A   ALTER TABLE public.payment ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16787    yard_owner owner_id    DEFAULT     z   ALTER TABLE ONLY public.yard_owner ALTER COLUMN owner_id SET DEFAULT nextval('public.yard_owner_owner_id_seq'::regclass);
 B   ALTER TABLE public.yard_owner ALTER COLUMN owner_id DROP DEFAULT;
       public          postgres    false    218    217    218            A          0    16775    admin 
   TABLE DATA           @   COPY public.admin (admin_id, name, email, password) FROM stdin;
    public          postgres    false    216   �d       I          0    16811    badminton_yard 
   TABLE DATA           m   COPY public.badminton_yard (yard_id, name, phone_num, address, average_price, owner_id, linkimg) FROM stdin;
    public          postgres    false    224   �e       O          0    17027    booking 
   TABLE DATA           7   COPY public.booking (payment_id, frame_id) FROM stdin;
    public          postgres    false    230   Ug       Q          0    17202    court 
   TABLE DATA           =   COPY public.court (court_id, yard_id, court_num) FROM stdin;
    public          postgres    false    232   �g       E          0    16793    customer 
   TABLE DATA           F   COPY public.customer (customer_id, name, email, password) FROM stdin;
    public          postgres    false    220   �g       G          0    16802 
   enterprise 
   TABLE DATA           J   COPY public.enterprise (enterprise_id, name, email, password) FROM stdin;
    public          postgres    false    222   �h       L          0    16992    frame 
   TABLE DATA           L   COPY public.frame (court_id, time_frame, frame_price, frame_id) FROM stdin;
    public          postgres    false    227   �i       J          0    16834    news 
   TABLE DATA           \   COPY public.news (news_id, enterprise_id, admin_id, description, path, linkimg) FROM stdin;
    public          postgres    false    225   Fj       S          0    17219    notification 
   TABLE DATA           l   COPY public.notification (notification_id, enterprise_id, admin_id, description, path, linkimg) FROM stdin;
    public          postgres    false    234   ak       P          0    17042    participate_court 
   TABLE DATA           J   COPY public.participate_court (payment_id, description, path) FROM stdin;
    public          postgres    false    231   ?l       N          0    17006    payment 
   TABLE DATA           Z   COPY public.payment (payment_id, customer_id, admin_id, owner_id, total_cost) FROM stdin;
    public          postgres    false    229   �l       C          0    16784 
   yard_owner 
   TABLE DATA           E   COPY public.yard_owner (owner_id, name, email, password) FROM stdin;
    public          postgres    false    218   0m       b           0    0    admin_admin_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_admin_id_seq', 1, false);
          public          postgres    false    215            c           0    0    badminton_yard_yard_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.badminton_yard_yard_id_seq', 1, false);
          public          postgres    false    223            d           0    0    court_court_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.court_court_id_seq', 1, false);
          public          postgres    false    233            e           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);
          public          postgres    false    219            f           0    0    enterprise_enterprise_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enterprise_enterprise_id_seq', 1, false);
          public          postgres    false    221            g           0    0    frame_frame_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.frame_frame_id_seq', 1, false);
          public          postgres    false    226            h           0    0    payment_payment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, false);
          public          postgres    false    228            i           0    0    yard_owner_owner_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.yard_owner_owner_id_seq', 1, false);
          public          postgres    false    217            �           2606    16782    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    216            �           2606    16818 "   badminton_yard badminton_yard_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.badminton_yard
    ADD CONSTRAINT badminton_yard_pkey PRIMARY KEY (yard_id);
 L   ALTER TABLE ONLY public.badminton_yard DROP CONSTRAINT badminton_yard_pkey;
       public            postgres    false    224            �           2606    17031    booking booking_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (payment_id, frame_id);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    230    230            �           2606    17208    court court_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.court
    ADD CONSTRAINT court_pkey PRIMARY KEY (court_id);
 :   ALTER TABLE ONLY public.court DROP CONSTRAINT court_pkey;
       public            postgres    false    232            �           2606    16800    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    220            �           2606    16809    enterprise enterprise_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (enterprise_id);
 D   ALTER TABLE ONLY public.enterprise DROP CONSTRAINT enterprise_pkey;
       public            postgres    false    222            �           2606    16998    frame frame_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.frame
    ADD CONSTRAINT frame_pkey PRIMARY KEY (frame_id);
 :   ALTER TABLE ONLY public.frame DROP CONSTRAINT frame_pkey;
       public            postgres    false    227            �           2606    16840    news news_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (news_id);
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public            postgres    false    225            �           2606    17225    notification notification_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (notification_id);
 H   ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_pkey;
       public            postgres    false    234            �           2606    17048 (   participate_court participate_court_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.participate_court
    ADD CONSTRAINT participate_court_pkey PRIMARY KEY (payment_id);
 R   ALTER TABLE ONLY public.participate_court DROP CONSTRAINT participate_court_pkey;
       public            postgres    false    231            �           2606    17011    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    229            �           2606    16791    yard_owner yard_owner_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.yard_owner
    ADD CONSTRAINT yard_owner_pkey PRIMARY KEY (owner_id);
 D   ALTER TABLE ONLY public.yard_owner DROP CONSTRAINT yard_owner_pkey;
       public            postgres    false    218            �           2606    16846    news fk_admin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT fk_admin_id FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id) ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.news DROP CONSTRAINT fk_admin_id;
       public          postgres    false    225    216    4749            �           2606    17017    payment fk_admin_id_payment    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_admin_id_payment FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.payment DROP CONSTRAINT fk_admin_id_payment;
       public          postgres    false    4749    229    216            �           2606    17037    booking fk_court_num    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT fk_court_num FOREIGN KEY (frame_id) REFERENCES public.frame(frame_id) ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT fk_court_num;
       public          postgres    false    230    227    4761            �           2606    17214    frame fk_court_num_frame    FK CONSTRAINT     �   ALTER TABLE ONLY public.frame
    ADD CONSTRAINT fk_court_num_frame FOREIGN KEY (court_id) REFERENCES public.court(court_id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.frame DROP CONSTRAINT fk_court_num_frame;
       public          postgres    false    4769    227    232            �           2606    17012    payment fk_customer_id_payment    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_customer_id_payment FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.payment DROP CONSTRAINT fk_customer_id_payment;
       public          postgres    false    229    4753    220            �           2606    16841    news fk_enterprise_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT fk_enterprise_id FOREIGN KEY (enterprise_id) REFERENCES public.enterprise(enterprise_id) ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.news DROP CONSTRAINT fk_enterprise_id;
       public          postgres    false    4755    225    222            �           2606    17226 *   notification fk_notification_adminid_admin    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT fk_notification_adminid_admin FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id);
 T   ALTER TABLE ONLY public.notification DROP CONSTRAINT fk_notification_adminid_admin;
       public          postgres    false    234    4749    216            �           2606    17231 4   notification fk_notification_enterpriseid_enterprise    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT fk_notification_enterpriseid_enterprise FOREIGN KEY (enterprise_id) REFERENCES public.enterprise(enterprise_id);
 ^   ALTER TABLE ONLY public.notification DROP CONSTRAINT fk_notification_enterpriseid_enterprise;
       public          postgres    false    234    4755    222            �           2606    16819    badminton_yard fk_owner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.badminton_yard
    ADD CONSTRAINT fk_owner_id FOREIGN KEY (owner_id) REFERENCES public.yard_owner(owner_id) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.badminton_yard DROP CONSTRAINT fk_owner_id;
       public          postgres    false    224    4751    218            �           2606    17022    payment fk_owner_id_payment    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_owner_id_payment FOREIGN KEY (owner_id) REFERENCES public.yard_owner(owner_id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.payment DROP CONSTRAINT fk_owner_id_payment;
       public          postgres    false    4751    229    218            �           2606    17032    booking fk_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT fk_payment_id FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id) ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.booking DROP CONSTRAINT fk_payment_id;
       public          postgres    false    229    4763    230            �           2606    17049 +   participate_court fk_payment_id_participate    FK CONSTRAINT     �   ALTER TABLE ONLY public.participate_court
    ADD CONSTRAINT fk_payment_id_participate FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.participate_court DROP CONSTRAINT fk_payment_id_participate;
       public          postgres    false    231    4763    229            �           2606    17209    court fk_yard_id_court    FK CONSTRAINT     �   ALTER TABLE ONLY public.court
    ADD CONSTRAINT fk_yard_id_court FOREIGN KEY (yard_id) REFERENCES public.badminton_yard(yard_id) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.court DROP CONSTRAINT fk_yard_id_court;
       public          postgres    false    232    224    4757            A   �   x�m��n�0Eg�+���N��M#�R�K�&"�z�Q7��FΪ���ࣄ���Ջ��#���lx7z3Ÿ�0�M�zT�F�^���'g+��kx����k�N9����T�q�� ��0&���,���c�#����'e�JV��@ˢx��l�?1���q
��ݍd�F6x�9�8�@aю�`�8[��	g�&/n��1	��<���dSǫ%m6�(����"�6?��      I   l  x�u��n�0���+���8��"VUQ��R7.�HJ�D����;q�T�YV|tgtCa�X��,�J�V�eݿe<I���H�d����,0�����x3��o�t����fZ5r����G�_^ɶk�=���Vȳ41gP&id��t��	`a�9�ö�ǲ��:�wg�yɪnNIi<�r�ưn�B�teom���qv��񥟟AVc�
X���d��`�!1�p$��p�DXNL��(ٜ���1'&6A6ÆNI3H�n����m��E�1(�*r��̮�*�4��N�`UWV�O�kE��oi<�@�3��o�W��=��EF0�$k�[oS��v�l,Ѓ*}�\��{�0��
�3�M�(��Y
J      O   /   x��I   �����(��:H���'�Ų(7���r� ������      Q   5   x���  ��l1�@�z��:X$�Aj4��>I?~2�b�������I�'      E   �   x�m��R1E��_�/��y�A)u�Un��d"	d̌���Np�M�=Ugq�[�����k�{i�~�;[5���3��ŇVd9f��{�̠��M�+�
s���Ql�Ł���_�X�Ɛ#�La0N�B1]�,�~$�nll�ƴ��+�r'�FW�|FH�9ϱ�]��OJ�!��z��9<(�l�Zb1����<��(�v�!07J��Ppؓ<������w�5
/��iH�-���#cob|��� V@�!      G   �   x�m��N�0E�3_�/��w�J�=�*@lL<J-%�5v��!)�T��h�ܙ����6iL v�=��l�*�Ӫ�8��ŲJ�3x}{O���e�5p���EYa���Gmh�߃��Q�^o�����d<���O����q�:�b	������h"Q#V��$���jQ!9�p�m�<ޅ�o,^�(pM�ò�	D�R�������.���Q��^H��s��x�Ə"~'-��      L   [   x�}��� �7���2!��Y����#$˟�]�P��]��\)��I�C-�ڠUX�-��S�Ў���x�=�1��}]&*�J|���4�      J     x���=N�0��99�;AM��v����q�8R�b�#p�BT!��x��=|:8��]�X���_�%�<��(X_Qp�u]@iO@n����j(p�j�w�Fx0j/�s�^A���s���"��B$R���i"�9��&CrM�2O�Q�i�]s<h2]3ȍz)ac�zׯx�c�ON5��5�Éz�~�qӾIȿ?m�s������3�<�co+�6�:s������G�t���;7��Εv��h9v��cљ��p��T���a���ia      S   �   x���=�0�N��J��U��8�4�@S�P����8�@LHq|o��婪�̵��r-e]p�$����ּ�D� �&��oH
]Q)�)����Z	[�
5��<s��m�IB���ny
�󨿜gpK��ERI%�Q7��aZ��C���a|M������ߞz�����|�S(x�*��ۊ�г�;6���a����c��Z�B      P   �   x��һ�0F�:�� ���Z�h���������4����:v��Au�=SQ������s�Sm��I�ϋ�囏�*���������X��I��!V	�bc�MBl��%�G`� !"CD	�"I�k���h.�����      N   C   x�=���0���lYzI�uX�H�qA��1�X��L!�%���^BRo���P�Wh�O��||��2�      C   �   x�mP�n1<�_�/@�7ܺ��@=P��^����J�n�ד�z���؞���h��1�b���d&ͫ��(���kQVX����#pL��u�bg5��Z$��,�7�2��k��iT$��-����VZ+2�L��,?`y��R��§Vs\�ɐ{��x%+��H����?�<�ȟ+k\C?�81�y�F6��^Ǟ��}������V�X��L�����Nv��B�'�ǞJ     