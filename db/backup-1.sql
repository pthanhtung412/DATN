PGDMP     8    2    	             |            test    15.3    15.3 #    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    49152    test    DATABASE        CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1258';
    DROP DATABASE test;
                postgres    false                        3079    49153 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            /           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    49163    admin    TABLE     �   CREATE TABLE public.admin (
    name character varying(255) NOT NULL,
    admin_id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    49168    bangtin    TABLE     �   CREATE TABLE public.bangtin (
    bangtin_id character varying(255) NOT NULL,
    admin_id integer NOT NULL,
    description character varying(255) NOT NULL,
    path character varying(255) NOT NULL
);
    DROP TABLE public.bangtin;
       public         heap    postgres    false            �            1259    49173    booking    TABLE     �   CREATE TABLE public.booking (
    date time without time zone NOT NULL,
    "time" time without time zone,
    status character varying(255) NOT NULL,
    booking_id integer NOT NULL,
    payment_id integer,
    customer_id integer
);
    DROP TABLE public.booking;
       public         heap    postgres    false            �            1259    49176    court    TABLE     �   CREATE TABLE public.court (
    court_id integer NOT NULL,
    name character varying(255) NOT NULL,
    availability boolean DEFAULT false NOT NULL,
    type character varying(255),
    payment_id integer,
    customer_id integer
);
    DROP TABLE public.court;
       public         heap    postgres    false            �            1259    49182    customer    TABLE     �   CREATE TABLE public.customer (
    name character varying(255) NOT NULL,
    customer_id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    49187    notification    TABLE     �   CREATE TABLE public.notification (
    notification_id integer NOT NULL,
    message text,
    admin_id integer,
    customer_id integer,
    href character varying(255) NOT NULL
);
     DROP TABLE public.notification;
       public         heap    postgres    false            �            1259    49192    payment    TABLE     �   CREATE TABLE public.payment (
    payment_date time without time zone NOT NULL,
    payment_id integer NOT NULL,
    amount integer,
    customer_id integer
);
    DROP TABLE public.payment;
       public         heap    postgres    false            "          0    49163    admin 
   TABLE DATA           @   COPY public.admin (name, admin_id, email, password) FROM stdin;
    public          postgres    false    215   �)       #          0    49168    bangtin 
   TABLE DATA           J   COPY public.bangtin (bangtin_id, admin_id, description, path) FROM stdin;
    public          postgres    false    216   �)       $          0    49173    booking 
   TABLE DATA           \   COPY public.booking (date, "time", status, booking_id, payment_id, customer_id) FROM stdin;
    public          postgres    false    217   �*       %          0    49176    court 
   TABLE DATA           \   COPY public.court (court_id, name, availability, type, payment_id, customer_id) FROM stdin;
    public          postgres    false    218   +       &          0    49182    customer 
   TABLE DATA           F   COPY public.customer (name, customer_id, email, password) FROM stdin;
    public          postgres    false    219   !+       '          0    49187    notification 
   TABLE DATA           ]   COPY public.notification (notification_id, message, admin_id, customer_id, href) FROM stdin;
    public          postgres    false    220   ~+       (          0    49192    payment 
   TABLE DATA           P   COPY public.payment (payment_date, payment_id, amount, customer_id) FROM stdin;
    public          postgres    false    221   X,                  2606    49196    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    215            �           2606    49198    bangtin bangtin_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.bangtin
    ADD CONSTRAINT bangtin_pkey PRIMARY KEY (bangtin_id);
 >   ALTER TABLE ONLY public.bangtin DROP CONSTRAINT bangtin_pkey;
       public            postgres    false    216            �           2606    49200    booking booking_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (booking_id);
 >   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_pkey;
       public            postgres    false    217            �           2606    49202    court court_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.court
    ADD CONSTRAINT court_pkey PRIMARY KEY (court_id);
 :   ALTER TABLE ONLY public.court DROP CONSTRAINT court_pkey;
       public            postgres    false    218            �           2606    49204    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    219            �           2606    49206    notification notification_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (notification_id);
 H   ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_pkey;
       public            postgres    false    220            �           2606    49208    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    221            �           2606    49209    bangtin admin    FK CONSTRAINT     }   ALTER TABLE ONLY public.bangtin
    ADD CONSTRAINT admin FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id) NOT VALID;
 7   ALTER TABLE ONLY public.bangtin DROP CONSTRAINT admin;
       public          postgres    false    215    3199    216            �           2606    49214     booking booking_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 J   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_customer_id_fkey;
       public          postgres    false    219    217    3207            �           2606    49219    booking booking_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id);
 I   ALTER TABLE ONLY public.booking DROP CONSTRAINT booking_payment_id_fkey;
       public          postgres    false    221    3211    217            �           2606    49224    court court_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.court
    ADD CONSTRAINT court_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 F   ALTER TABLE ONLY public.court DROP CONSTRAINT court_customer_id_fkey;
       public          postgres    false    218    219    3207            �           2606    49229    court court_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.court
    ADD CONSTRAINT court_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id);
 E   ALTER TABLE ONLY public.court DROP CONSTRAINT court_payment_id_fkey;
       public          postgres    false    218    3211    221            �           2606    49234 '   notification notification_admin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.admin(admin_id);
 Q   ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_admin_id_fkey;
       public          postgres    false    220    215    3199            �           2606    49239 *   notification notification_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 T   ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_customer_id_fkey;
       public          postgres    false    3207    220    219            �           2606    49244     payment payment_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 J   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_customer_id_fkey;
       public          postgres    false    219    3207    221            "   0   x����O�4�LI�K�2L��s3s���s9��ML͸b���� '�      #   �   x���1n�0�99�;n X˂�HG�Dq��J���#�US����R��nR�S�X,���~;�o�M�CaO��H��n(ps��WS8�>+;n/%d�ǎ�
�i�G�*e�$Is�Ē<S����lh^dq0*D⏯���d�?�a[W]z�;r���'.(���	誌���������"t���+�)(�^yo%���hX�:if�e��D�~������?�8���>.r�|�e�4L��x��/\�v���^�H�      $      x������ � �      %      x������ � �      &   M   x����O�4�LI�K�2L��s3s���s9��ML͸@2�F� 
��1X�V���,�7H�n5�l� ��.=      '   �   x�����0�g�}�R[~t��Et1N$��R�J(l��e!6N���&�wN��M%0Ku�=f��6�`��U5Ha��T!Z�C_=�$��]�7~�%�N�W�G	
wmo�v>�kك�{����	����Di%�$��4�>Z�4dG���}�-��IÕj��1۲ $&�J;8^����m�y�e�ȡ�::��95�BuT��      (      x������ � �     