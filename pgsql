PGDMP     .    &                t            users_directory    9.5.1    9.5.1     @	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            A	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            B	           1262    24793    users_directory    DATABASE     m   CREATE DATABASE users_directory WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE users_directory;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            C	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            D	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12623    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            E	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24796    users    TABLE     �   CREATE TABLE users (
    id integer NOT NULL,
    fname character varying(20),
    lname character varying(20),
    age integer
);
    DROP TABLE public.users;
       public         postgres    false    6            �            1259    24794    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    182    6            F	           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       postgres    false    181            �           2604    24799    id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    182    181    182            =	          0    24796    users 
   TABLE DATA               /   COPY users (id, fname, lname, age) FROM stdin;
    public       postgres    false    182          G	           0    0    users_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('users_id_seq', 1, false);
            public       postgres    false    181            �           2606    24801    primary key 
   CONSTRAINT     J   ALTER TABLE ONLY users
    ADD CONSTRAINT "primary key" PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT "primary key";
       public         postgres    false    182    182            =	      x������ � �     