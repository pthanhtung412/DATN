PGDMP  5    %                |            DACN    16.2    16.2 U    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Y           1262    32939    DACN    DATABASE     �   CREATE DATABASE "DACN" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1258';
    DROP DATABASE "DACN";
                postgres    false            �            1259    32940    admin    TABLE     �   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    32945    admin_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_admin_id_seq;
       public          postgres    false    215            Z           0    0    admin_admin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public.admin.admin_id;
          public          postgres    false    216            �            1259    32946    badminton_yard    TABLE       CREATE TABLE public.badminton_yard (
    yard_id integer NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    average_price integer NOT NULL,
    owner_id integer NOT NULL,
    linkimg text,
    phone_num character varying(12)
);
 "   DROP TABLE public.badminton_yard;
       public         heap    postgres    false            �            1259    32951    badminton_yard_yard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.badminton_yard_yard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.badminton_yard_yard_id_seq;
       public          postgres    false    217            [           0    0    badminton_yard_yard_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.badminton_yard_yard_id_seq OWNED BY public.badminton_yard.yard_id;
          public          postgres    false    218            �            1259    32952    booking    TABLE     `   CREATE TABLE public.booking (
    payment_id integer NOT NULL,
    frame_id integer NOT NULL
);
    DROP TABLE public.booking;
       public         heap    postgres    false            �            1259    32955    court    TABLE     i   CREATE TABLE public.court (
    court_id integer NOT NULL,
    yard_id integer,
    court_num integer
);
    DROP TABLE public.court;
       public         heap    postgres    false            �            1259    32958    court_court_id_seq    SEQUENCE     �   CREATE SEQUENCE public.court_court_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.court_court_id_seq;
       public          postgres    false    220            \           0    0    court_court_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.court_court_id_seq OWNED BY public.court.court_id;
          public          postgres    false    221            �            1259    32959    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    created_date date NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    32964    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    222            ]           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    223            �            1259    32965 
   enterprise    TABLE     �   CREATE TABLE public.enterprise (
    enterprise_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.enterprise;
       public         heap    postgres    false            �            1259    32970    enterprise_enterprise_id_seq    SEQUENCE     �   CREATE SEQUENCE public.enterprise_enterprise_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.enterprise_enterprise_id_seq;
       public          postgres    false    224            ^           0    0    enterprise_enterprise_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.enterprise_enterprise_id_seq OWNED BY public.enterprise.enterprise_id;
          public          postgres    false    225            �            1259    32971    frame    TABLE     �   CREATE TABLE public.frame (
    court_id integer,
    time_frame timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    frame_price integer NOT NULL,
    frame_id integer NOT NULL
);
    DROP TABLE public.frame;
       public         heap    postgres    false            �            1259    32975    frame_frame_id_seq    SEQUENCE     �   CREATE SEQUENCE public.frame_frame_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.frame_frame_id_seq;
       public          postgres    false    226            _           0    0    frame_frame_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.frame_frame_id_seq OWNED BY public.frame.frame_id;
          public          postgres    false    227            �            1259    32976    news    TABLE     �   CREATE TABLE public.news (
    news_id character varying(255) NOT NULL,
    enterprise_id integer,
    admin_id integer,
    description text,
    path text,
    linkimg text
);
    DROP TABLE public.news;
       public         heap    postgres    false            �            1259    32981    notification    TABLE     �   CREATE TABLE public.notification (
    notification_id character varying(255) NOT NULL,
    enterprise_id integer,
    admin_id integer,
    description text,
    path text,
    linkimg text
);
     DROP TABLE public.notification;
       public         heap    postgres    false            �            1259    32986    participate_court    TABLE     p   CREATE TABLE public.participate_court (
    payment_id integer NOT NULL,
    description text,
    path text
);
 %   DROP TABLE public.participate_court;
       public         heap    postgres    false            �            1259    32991    payment    TABLE     �   CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    customer_id integer,
    admin_id integer,
    owner_id integer,
    total_cost integer NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    32994    payment_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_payment_id_seq;
       public          postgres    false    231            `           0    0    payment_payment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;
          public          postgres    false    232            �            1259    32995 
   yard_owner    TABLE     �   CREATE TABLE public.yard_owner (
    owner_id integer NOT NULL,
    owner_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.yard_owner;
       public         heap    postgres    false            �            1259    33000    yard_owner_owner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.yard_owner_owner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.yard_owner_owner_id_seq;
       public          postgres    false    233            a           0    0    yard_owner_owner_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.yard_owner_owner_id_seq OWNED BY public.yard_owner.owner_id;
          public          postgres    false    234            �           2604    33001    admin admin_id    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    33002    badminton_yard yard_id    DEFAULT     �   ALTER TABLE ONLY public.badminton_yard ALTER COLUMN yard_id SET DEFAULT nextval('public.badminton_yard_yard_id_seq'::regclass);
 E   ALTER TABLE public.badminton_yard ALTER COLUMN yard_id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    33003    court court_id    DEFAULT     p   ALTER TABLE ONLY public.court ALTER COLUMN court_id SET DEFAULT nextval('public.court_court_id_seq'::regclass);
 =   ALTER TABLE public.court ALTER COLUMN court_id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    33004    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    33005    enterprise enterprise_id    DEFAULT     �   ALTER TABLE ONLY public.enterprise ALTER COLUMN enterprise_id SET DEFAULT nextval('public.enterprise_enterprise_id_seq'::regclass);
 G   ALTER TABLE public.enterprise ALTER COLUMN enterprise_id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    33006    frame frame_id    DEFAULT     p   ALTER TABLE ONLY public.frame ALTER COLUMN frame_id SET DEFAULT nextval('public.frame_frame_id_seq'::regclass);
 =   ALTER TABLE public.frame ALTER COLUMN frame_id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    33007    payment payment_id    DEFAULT     x   ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);
 A   ALTER TABLE public.payment ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    33008    yard_owner owner_id    DEFAULT     z   ALTER TABLE ONLY public.yard_owner ALTER COLUMN owner_id SET DEFAULT nextval('public.yard_owner_owner_id_seq'::regclass);
 B   ALTER TABLE public.yard_owner ALTER COLUMN owner_id DROP DEFAULT;
       public          postgres    false    234    233            @          0    32940    admin 
   TABLE DATA           @   COPY public.admin (admin_id, name, email, password) FROM stdin;
    public          postgres    false    215   �d       B          0    32946    badminton_yard 
   TABLE DATA           m   COPY public.badminton_yard (yard_id, name, address, average_price, owner_id, linkimg, phone_num) FROM stdin;
    public          postgres    false    217   �e       D          0    32952    booking 
   TABLE DATA           7   COPY public.booking (payment_id, frame_id) FROM stdin;
    public          postgres    false    219   Pl       E          0    32955    court 
   TABLE DATA           =   COPY public.court (court_id, yard_id, court_num) FROM stdin;
    public          postgres    false    220   �l       G          0    32959    customer 
   TABLE DATA           T   COPY public.customer (customer_id, name, email, password, created_date) FROM stdin;
    public          postgres    false    222   �l       I          0    32965 
   enterprise 
   TABLE DATA           J   COPY public.enterprise (enterprise_id, name, email, password) FROM stdin;
    public          postgres    false    224   n       K          0    32971    frame 
   TABLE DATA           L   COPY public.frame (court_id, time_frame, frame_price, frame_id) FROM stdin;
    public          postgres    false    226   o       M          0    32976    news 
   TABLE DATA           \   COPY public.news (news_id, enterprise_id, admin_id, description, path, linkimg) FROM stdin;
    public          postgres    false    228   vo       N          0    32981    notification 
   TABLE DATA           l   COPY public.notification (notification_id, enterprise_id, admin_id, description, path, linkimg) FROM stdin;
    public          postgres    false    229   �p       O          0    32986    participate_court 
   TABLE DATA           J   COPY public.participate_court (payment_id, description, path) FROM stdin;
    public          postgres    false    230   oq       P          0    32991    payment 
   TABLE DATA           Z   COPY public.payment (payment_id, customer_id, admin_id, owner_id, total_cost) FROM stdin;
    public          postgres    false    231   r       R          0    32995 
   yard_owner 
   TABLE DATA           K   COPY public.yard_owner (owner_id, owner_name, email, password) FROM stdin;
    public          postgres    false    233   `r       b           0    0    admin_admin_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_admin_id_seq', 1, false);
          public          postgres    false    216            c           0    0    badminton_yard_yard_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.badminton_yard_yard_id_seq', 2, true);
          public          postgres    false    218            d           0    0    court_court_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.court_court_id_seq', 1, false);
          public          postgres    false    221            e           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);
          public          postgres    false    223            f           0    0    enterprise_enterprise_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.enterprise_enterprise_id_seq', 1, false);
          public          postgres    false    225            g           0    0    frame_frame_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.frame_frame_id_seq', 1, false);
          public          postgres    false    227            h           0    0    payment_payment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, false);
          public          postgres    false    232            i           0    0    yard_owner_owner_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.yard_owner_owner_id_seq', 1, false);
          public          postgres    false    234            �           2606    33010    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    215            �           2606    33012 "   badminton_yard badminton_yard_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.badminton_yard
    ADD CONSTRAINT badminton_yard_pkey PRIMARY KEY (yard_id);
 L   ALTER TABLE ONLY public.badminton_yard DROP CONSTRAINT badminton_yard_pkey;
       public            postgres    false    217            �           2606    33014    booking booking_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (payment_id, frame_id);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    219    219            �           2606    33016    court court_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.court
    ADD CONSTRAINT court_pkey PRIMARY KEY (court_id);
 :   ALTER TABLE ONLY public.court DROP CONSTRAINT court_pkey;
       public            postgres    false    220            �           2606    33018    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    222            �           2606    33020    enterprise enterprise_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (enterprise_id);
 D   ALTER TABLE ONLY public.enterprise DROP CONSTRAINT enterprise_pkey;
       public            postgres    false    224            �           2606    33022    frame frame_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.frame
    ADD CONSTRAINT frame_pkey PRIMARY KEY (frame_id);
 :   ALTER TABLE ONLY public.frame DROP CONSTRAINT frame_pkey;
       public            postgres    false    226            �           2606    33024    news news_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (news_id);
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public            postgres    false    228            �           2606    33026    notification notification_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (notification_id);
 H   ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_pkey;
       public            postgres    false    229            �           2606    33028 (   participate_court participate_court_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.participate_court
    ADD CONSTRAINT participate_court_pkey PRIMARY KEY (payment_id);
 R   ALTER TABLE ONLY public.participate_court DROP CONSTRAINT participate_court_pkey;
       public            postgres    false    230            �           2606    33030    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    231            �           2606    33032    yard_owner yard_owner_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.yard_owner
    ADD CONSTRAINT yard_owner_pkey PRIMARY KEY (owner_id);
 D   ALTER TABLE ONLY public.yard_owner DROP CONSTRAINT yard_owner_pkey;
       public            postgres    false    233            �           2606    33033    news fk_admin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT fk_admin_id FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id) ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.news DROP CONSTRAINT fk_admin_id;
       public          postgres    false    4749    228    215            �           2606    33038    payment fk_admin_id_payment    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_admin_id_payment FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.payment DROP CONSTRAINT fk_admin_id_payment;
       public          postgres    false    4749    231    215            �           2606    33043    booking fk_court_num    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT fk_court_num FOREIGN KEY (frame_id) REFERENCES public.frame(frame_id) ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT fk_court_num;
       public          postgres    false    4761    219    226            �           2606    33048    frame fk_court_num_frame    FK CONSTRAINT     �   ALTER TABLE ONLY public.frame
    ADD CONSTRAINT fk_court_num_frame FOREIGN KEY (court_id) REFERENCES public.court(court_id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.frame DROP CONSTRAINT fk_court_num_frame;
       public          postgres    false    226    220    4755            �           2606    33053    payment fk_customer_id_payment    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_customer_id_payment FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.payment DROP CONSTRAINT fk_customer_id_payment;
       public          postgres    false    4757    231    222            �           2606    33058    news fk_enterprise_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.news
    ADD CONSTRAINT fk_enterprise_id FOREIGN KEY (enterprise_id) REFERENCES public.enterprise(enterprise_id) ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.news DROP CONSTRAINT fk_enterprise_id;
       public          postgres    false    4759    224    228            �           2606    33063 *   notification fk_notification_adminid_admin    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT fk_notification_adminid_admin FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id);
 T   ALTER TABLE ONLY public.notification DROP CONSTRAINT fk_notification_adminid_admin;
       public          postgres    false    215    229    4749            �           2606    33068 4   notification fk_notification_enterpriseid_enterprise    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT fk_notification_enterpriseid_enterprise FOREIGN KEY (enterprise_id) REFERENCES public.enterprise(enterprise_id);
 ^   ALTER TABLE ONLY public.notification DROP CONSTRAINT fk_notification_enterpriseid_enterprise;
       public          postgres    false    224    4759    229            �           2606    33073    badminton_yard fk_owner_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.badminton_yard
    ADD CONSTRAINT fk_owner_id FOREIGN KEY (owner_id) REFERENCES public.yard_owner(owner_id) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.badminton_yard DROP CONSTRAINT fk_owner_id;
       public          postgres    false    4771    233    217            �           2606    33078    payment fk_owner_id_payment    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT fk_owner_id_payment FOREIGN KEY (owner_id) REFERENCES public.yard_owner(owner_id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.payment DROP CONSTRAINT fk_owner_id_payment;
       public          postgres    false    4771    231    233            �           2606    33083    booking fk_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT fk_payment_id FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id) ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.booking DROP CONSTRAINT fk_payment_id;
       public          postgres    false    4769    219    231            �           2606    33088 +   participate_court fk_payment_id_participate    FK CONSTRAINT     �   ALTER TABLE ONLY public.participate_court
    ADD CONSTRAINT fk_payment_id_participate FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.participate_court DROP CONSTRAINT fk_payment_id_participate;
       public          postgres    false    231    4769    230            �           2606    33093    court fk_yard_id_court    FK CONSTRAINT     �   ALTER TABLE ONLY public.court
    ADD CONSTRAINT fk_yard_id_court FOREIGN KEY (yard_id) REFERENCES public.badminton_yard(yard_id) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.court DROP CONSTRAINT fk_yard_id_court;
       public          postgres    false    217    220    4751            @   �   x�m��n� E��W�����6�X�*���fd�0)������[v��3h�СS�fi��X�Y����:�1.>�Uݰz4*�;�]���ى�xb�[2O���@��u����7(�~�*�R0$���(X���������~)J�B����?�l�����nP�| &�ʵ��	.�h���0�S0n�hDä�+���UH����*E�$|k���{
�.��n��f��Y�,���R�_��?�}�r      B   Z  x��W�n�F]�_1-��A��l��6��Ć� ��ĈL�!c���mQtH�E�f�mP�M7����П�E1�Ť�Ѕ-�Z��{�3��?�E����u���[�G��N���ӫ���ܸ|:����z��t�*�D�����|C8��5�,K��Y�0
�,��2��o++�~0�:�7�T�(<�G=�
ϧ�-\�ݗq�ڴM��	J8�i�7�O9���|f��*ҝd�2B7ë�3�7�-О��ɟr��=��E- ��6ѭe���}����RaX��8Ld��0�/?H5l�]�u ��
�0
�,��x���D��l0G��NY�@�����*D�z�K�H����nǏ�Nޠ�H��&F�b����0L�c�it����q"{�9�,R�,�ZKl�g��)&8�?;�8axwC��XsƴqtRM[0Ρ�&����,袝�s�վFO�^?M��)�
��_��%��t1 9�t�m�laB0׷MFVQ�� m:~R��e4��`������������t~�T�g�h���F��mQ�b��W�%P����C�1g�ϥ�5]esC�l)�|V<L�F�4@�t�F��86�E��Y7D�Ӌ3]�G��tK(�z�Q�zTT=Y�xa5Hqn��0`�$V�ȍ�����A��*J |��v2[-A{�40v��&Z�����[$,
��Z�[a�a�dg���7_e�+�� 5s�m��&���? ��x����1k��7�`���nloml��Y�ܶx 
���Lgjk�ʅ{<��Ӝ�_K�F��^���&r^���f���a�b��A�x��n;<&;^����_�s$n�D�񣭽ϻ�{�����p��D��O5�]#��`�-胖b��p񇖳k�FT:���2Ӫ������,PY�р߶+Ĺ'a�W���޼��[4���� @����AX@���+��1��vh�{FHw]��I� Ւz8�{n�ɫ�,U��r�)y��
N��3�G����"�i�<N e8�9�񝪊n������
�7�d�X�;����[]��oZ#���:%�����c^V@Lk��z�0��k�J�0����W����Y6ے�y0�B�[mO��A���2u@�宔�]�iYv��H�̗��	��{���[���Cla3�ՄP��&� }^����s9�8�[+5Cl����R��lL ��ep���&ư��
WE�)/]�˅�;�Z,\}�0L��R[�q}�m
�����<�sB=�5���u�5�p�D-��3~��{��x��`=��y5p�,�[��iWG�㍦��q���>�8�	�7}Z�������`
��cEe�bij���> {��8�[x������'���z��	�	���a#R�뽮�
�"�VM�!�B�vS}\�����َsc�9�;c�>�tt`v@�Z��)�:3X��i�I0d3y.3k���Sd����,B��qo6{ځ� x0a���@�n��S�T.�� q;�\�Y
��3d�Ny#>b�pܚ3X���.ڇv�
8�H�j��:[���'�k�?J(ĩ���.�Xs�a�g)F��t����i�hN�      D   /   x��I   �����(��:H���'�Ų(7���r� ������      E   5   x���  ��l1�@�z��:X$�Aj4��>I?~2�b�������I�'      G   0  x�}��R�0���)�0�7� Q?.:���6�$6M0�Exz<�:.����o�l6���D�s�bW�TSfj�8I3�h�Lh:�Y�RI�����҂c�W�l��4c��a+S��Z�
Sxɿ�p%�*��ʚ����4�͇4��D��m+5?A���4��;$�R����o�����Ƣ��������t4�6�a>p;W��B�!��-��H����R��)M�rw\�Z&�9yeFǯNa��"k�d}���TO5�����lǫ5���鼉4���K��5_l|�A����       I   �   x�m��N�0E�3_�/��w�J�=�*@lL<J-%�5v��!)�T��h�ܙ����6iL v�=��l�*�Ӫ�8��ŲJ�3x}{O���e�5p���EYa���Gmh�߃��Q�^o�����d<���O����q�:�b	������h"Q#V��$���jQ!9�p�m�<ޅ�o,^�(pM�ò�	D�R�������.���Q��^H��s��x�Ə"~'-��      K   [   x�}��� �7���2!��Y����#$˟�]�P��]��\)��I�C-�ڠUX�-��S�Ў���x�=�1��}]&*�J|���4�      M     x���=N�0��99�;AM��v����q�8R�b�#p�BT!��x��=|:8��]�X���_�%�<��(X_Qp�u]@iO@n����j(p�j�w�Fx0j/�s�^A���s���"��B$R���i"�9��&CrM�2O�Q�i�]s<h2]3ȍz)ac�zׯx�c�ON5��5�Éz�~�qӾIȿ?m�s������3�<�co+�6�:s������G�t���;7��Εv��h9v��cљ��p��T���a���ia      N   �   x���=�0�N��J��U��8�4�@S�P����8�@LHq|o��婪�̵��r-e]p�$����ּ�D� �&��oH
]Q)�)����Z	[�
5��<s��m�IB���ny
�󨿜gpK��ERI%�Q7��aZ��C���a|M������ߞz�����|�S(x�*��ۊ�г�;6���a����c��Z�B      O   �   x��һ�0F�:�� ���Z�h���������4����:v��Au�=SQ������s�Sm��I�ϋ�囏�*���������X��I��!V	�bc�MBl��%�G`� !"CD	�"I�k���h.�����      P   C   x�=���0���lYzI�uX�H�qA��1�X��L!�%���^BRo���P�Wh�O��||��2�      R   �   x�mP�n1<�_�/@�7ܺ��@=P��^����J�n�ד�z���؞���h��1�b���d&ͫ��(���kQVX����#pL��u�bg5��Z$��,�7�2��k��iT$��-����VZ+2�L��,?`y��R��§Vs\�ɐ{��x%+��H����?�<�ȟ+k\C?�81�y�F6��^Ǟ��}������V�X��L�����Nv��B�'�ǞJ     