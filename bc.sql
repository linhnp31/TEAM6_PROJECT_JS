PGDMP      .                |            test    16.2    16.2 J    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ^           1262    49163    test    DATABASE        CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE test;
                postgres    false            �            1259    49164    dep    TABLE     �   CREATE TABLE public.dep (
    did character varying(2) NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(500)
);
    DROP TABLE public.dep;
       public         heap    postgres    false            �            1259    49169    event    TABLE     �   CREATE TABLE public.event (
    eid character varying(10) NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(500)
);
    DROP TABLE public.event;
       public         heap    postgres    false            �            1259    49174    eventactive    TABLE     �   CREATE TABLE public.eventactive (
    mid character varying(8) NOT NULL,
    eid character varying(10) NOT NULL,
    status integer NOT NULL,
    note character varying(500)
);
    DROP TABLE public.eventactive;
       public         heap    postgres    false            �            1259    49179    member    TABLE     �  CREATE TABLE public.member (
    id character varying(8) NOT NULL,
    name character varying(50) NOT NULL,
    gen integer NOT NULL,
    dob date,
    phone character varying(10),
    mail character varying(100) NOT NULL,
    dep_id character varying(2) NOT NULL,
    role_id character varying(10) NOT NULL,
    address character varying(200),
    fb character varying(500),
    khoa integer
);
    DROP TABLE public.member;
       public         heap    postgres    false            �            1259    49184 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    49189    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    219            _           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    220            �            1259    49190    priority    TABLE     e   CREATE TABLE public.priority (
    level integer NOT NULL,
    tag character varying(20) NOT NULL
);
    DROP TABLE public.priority;
       public         heap    postgres    false            �            1259    49193    project    TABLE     �   CREATE TABLE public.project (
    pid character varying(20) NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(500)
);
    DROP TABLE public.project;
       public         heap    postgres    false            �            1259    49198 
   projstatus    TABLE     �   CREATE TABLE public.projstatus (
    pid character varying(20) NOT NULL,
    head character varying(8) NOT NULL,
    status integer NOT NULL
);
    DROP TABLE public.projstatus;
       public         heap    postgres    false            �            1259    49201    role    TABLE     n   CREATE TABLE public.role (
    rid character varying(10) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    49204    semester    TABLE     q   CREATE TABLE public.semester (
    sid character varying(4) NOT NULL,
    name character varying(20) NOT NULL
);
    DROP TABLE public.semester;
       public         heap    postgres    false            �            1259    49207 
   semsactive    TABLE     �   CREATE TABLE public.semsactive (
    mid character varying(8) NOT NULL,
    sid character varying(10) NOT NULL,
    status integer NOT NULL,
    note character varying(500)
);
    DROP TABLE public.semsactive;
       public         heap    postgres    false            �            1259    49212    status    TABLE     e   CREATE TABLE public.status (
    type integer NOT NULL,
    status character varying(10) NOT NULL
);
    DROP TABLE public.status;
       public         heap    postgres    false            �            1259    49215    user    TABLE     q  CREATE TABLE public."user" (
    id character varying(8) NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    refresh_token character varying NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    update_up timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    49223    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    228            `           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    229            �            1259    49224    work    TABLE     �   CREATE TABLE public.work (
    wid integer NOT NULL,
    status integer NOT NULL,
    head character varying(8) NOT NULL,
    deadline date NOT NULL,
    dep character varying(2),
    priority integer NOT NULL,
    startdate date
);
    DROP TABLE public.work;
       public         heap    postgres    false            �            1259    49227    work_wid_seq    SEQUENCE     �   CREATE SEQUENCE public.work_wid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.work_wid_seq;
       public          postgres    false    230            a           0    0    work_wid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.work_wid_seq OWNED BY public.work.wid;
          public          postgres    false    231            �            1259    49228    workstat    TABLE     e   CREATE TABLE public.workstat (
    level integer NOT NULL,
    tag character varying(50) NOT NULL
);
    DROP TABLE public.workstat;
       public         heap    postgres    false            �           2604    49231    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    49333    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    49233    work wid    DEFAULT     d   ALTER TABLE ONLY public.work ALTER COLUMN wid SET DEFAULT nextval('public.work_wid_seq'::regclass);
 7   ALTER TABLE public.work ALTER COLUMN wid DROP DEFAULT;
       public          postgres    false    231    230            G          0    49164    dep 
   TABLE DATA           5   COPY public.dep (did, name, description) FROM stdin;
    public          postgres    false    215   VT       H          0    49169    event 
   TABLE DATA           7   COPY public.event (eid, name, description) FROM stdin;
    public          postgres    false    216   oV       I          0    49174    eventactive 
   TABLE DATA           =   COPY public.eventactive (mid, eid, status, note) FROM stdin;
    public          postgres    false    217   +W       J          0    49179    member 
   TABLE DATA           e   COPY public.member (id, name, gen, dob, phone, mail, dep_id, role_id, address, fb, khoa) FROM stdin;
    public          postgres    false    218   _W       K          0    49184 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    219   X       M          0    49190    priority 
   TABLE DATA           .   COPY public.priority (level, tag) FROM stdin;
    public          postgres    false    221   bX       N          0    49193    project 
   TABLE DATA           9   COPY public.project (pid, name, description) FROM stdin;
    public          postgres    false    222   �X       O          0    49198 
   projstatus 
   TABLE DATA           7   COPY public.projstatus (pid, head, status) FROM stdin;
    public          postgres    false    223   �X       P          0    49201    role 
   TABLE DATA           )   COPY public.role (rid, name) FROM stdin;
    public          postgres    false    224   �X       Q          0    49204    semester 
   TABLE DATA           -   COPY public.semester (sid, name) FROM stdin;
    public          postgres    false    225   fY       R          0    49207 
   semsactive 
   TABLE DATA           <   COPY public.semsactive (mid, sid, status, note) FROM stdin;
    public          postgres    false    226   �Y       S          0    49212    status 
   TABLE DATA           .   COPY public.status (type, status) FROM stdin;
    public          postgres    false    227   �Y       T          0    49215    user 
   TABLE DATA           f   COPY public."user" (id, username, password, status, refresh_token, created_at, update_up) FROM stdin;
    public          postgres    false    228   &Z       V          0    49224    work 
   TABLE DATA           U   COPY public.work (wid, status, head, deadline, dep, priority, startdate) FROM stdin;
    public          postgres    false    230   CZ       X          0    49228    workstat 
   TABLE DATA           .   COPY public.workstat (level, tag) FROM stdin;
    public          postgres    false    232   `Z       b           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);
          public          postgres    false    220            c           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 2, true);
          public          postgres    false    229            d           0    0    work_wid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.work_wid_seq', 1, false);
          public          postgres    false    231            �           2606    49235 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    219            �           2606    49335 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            postgres    false    228            �           2606    49239    dep dep_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.dep
    ADD CONSTRAINT dep_pkey PRIMARY KEY (did);
 6   ALTER TABLE ONLY public.dep DROP CONSTRAINT dep_pkey;
       public            postgres    false    215            �           2606    49241    event event_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (eid);
 :   ALTER TABLE ONLY public.event DROP CONSTRAINT event_pkey;
       public            postgres    false    216            �           2606    49243    member member_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.member DROP CONSTRAINT member_pkey;
       public            postgres    false    218            �           2606    49245    priority priority_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.priority
    ADD CONSTRAINT priority_pkey PRIMARY KEY (level);
 @   ALTER TABLE ONLY public.priority DROP CONSTRAINT priority_pkey;
       public            postgres    false    221            �           2606    49247    project project_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (pid);
 >   ALTER TABLE ONLY public.project DROP CONSTRAINT project_pkey;
       public            postgres    false    222            �           2606    49249    role role_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (rid);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    224            �           2606    49251    semester semester_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.semester
    ADD CONSTRAINT semester_pkey PRIMARY KEY (sid);
 @   ALTER TABLE ONLY public.semester DROP CONSTRAINT semester_pkey;
       public            postgres    false    225            �           2606    49253    status status_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (type);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    227            �           2606    49255    work work_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_pkey PRIMARY KEY (wid);
 8   ALTER TABLE ONLY public.work DROP CONSTRAINT work_pkey;
       public            postgres    false    230            �           2606    49257    workstat workstat_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.workstat
    ADD CONSTRAINT workstat_pkey PRIMARY KEY (level);
 @   ALTER TABLE ONLY public.workstat DROP CONSTRAINT workstat_pkey;
       public            postgres    false    232            �           2606    49258     eventactive eventactive_eid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.eventactive
    ADD CONSTRAINT eventactive_eid_fkey FOREIGN KEY (eid) REFERENCES public.event(eid);
 J   ALTER TABLE ONLY public.eventactive DROP CONSTRAINT eventactive_eid_fkey;
       public          postgres    false    216    4755    217            �           2606    49263     eventactive eventactive_mid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.eventactive
    ADD CONSTRAINT eventactive_mid_fkey FOREIGN KEY (mid) REFERENCES public.member(id);
 J   ALTER TABLE ONLY public.eventactive DROP CONSTRAINT eventactive_mid_fkey;
       public          postgres    false    217    218    4757            �           2606    49268 #   eventactive eventactive_status_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.eventactive
    ADD CONSTRAINT eventactive_status_fkey FOREIGN KEY (status) REFERENCES public.status(type);
 M   ALTER TABLE ONLY public.eventactive DROP CONSTRAINT eventactive_status_fkey;
       public          postgres    false    227    217    4769            �           2606    49273    member member_dep_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_dep_id_fkey FOREIGN KEY (dep_id) REFERENCES public.dep(did);
 C   ALTER TABLE ONLY public.member DROP CONSTRAINT member_dep_id_fkey;
       public          postgres    false    218    4753    215            �           2606    49278    member member_role_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(rid);
 D   ALTER TABLE ONLY public.member DROP CONSTRAINT member_role_id_fkey;
       public          postgres    false    218    224    4765            �           2606    49283    projstatus projstatus_head_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.projstatus
    ADD CONSTRAINT projstatus_head_fkey FOREIGN KEY (head) REFERENCES public.member(id);
 I   ALTER TABLE ONLY public.projstatus DROP CONSTRAINT projstatus_head_fkey;
       public          postgres    false    223    218    4757            �           2606    49288    projstatus projstatus_pid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.projstatus
    ADD CONSTRAINT projstatus_pid_fkey FOREIGN KEY (pid) REFERENCES public.project(pid);
 H   ALTER TABLE ONLY public.projstatus DROP CONSTRAINT projstatus_pid_fkey;
       public          postgres    false    223    4763    222            �           2606    49293 !   projstatus projstatus_status_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.projstatus
    ADD CONSTRAINT projstatus_status_fkey FOREIGN KEY (status) REFERENCES public.status(type);
 K   ALTER TABLE ONLY public.projstatus DROP CONSTRAINT projstatus_status_fkey;
       public          postgres    false    4769    227    223            �           2606    49298    semsactive semsactive_mid_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.semsactive
    ADD CONSTRAINT semsactive_mid_fkey FOREIGN KEY (mid) REFERENCES public.member(id);
 H   ALTER TABLE ONLY public.semsactive DROP CONSTRAINT semsactive_mid_fkey;
       public          postgres    false    4757    218    226            �           2606    49303    semsactive semsactive_sid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.semsactive
    ADD CONSTRAINT semsactive_sid_fkey FOREIGN KEY (sid) REFERENCES public.semester(sid);
 H   ALTER TABLE ONLY public.semsactive DROP CONSTRAINT semsactive_sid_fkey;
       public          postgres    false    226    4767    225            �           2606    49308 !   semsactive semsactive_status_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.semsactive
    ADD CONSTRAINT semsactive_status_fkey FOREIGN KEY (status) REFERENCES public.status(type);
 K   ALTER TABLE ONLY public.semsactive DROP CONSTRAINT semsactive_status_fkey;
       public          postgres    false    227    226    4769            �           2606    49342    user user_member_id_fk    FK CONSTRAINT     s   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_member_id_fk FOREIGN KEY (id) REFERENCES public.member(id);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_member_id_fk;
       public          postgres    false    218    228    4757            �           2606    49313    work work_dep_fkey    FK CONSTRAINT     l   ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_dep_fkey FOREIGN KEY (dep) REFERENCES public.dep(did);
 <   ALTER TABLE ONLY public.work DROP CONSTRAINT work_dep_fkey;
       public          postgres    false    4753    230    215            �           2606    49318    work work_head_fkey    FK CONSTRAINT     p   ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_head_fkey FOREIGN KEY (head) REFERENCES public.member(id);
 =   ALTER TABLE ONLY public.work DROP CONSTRAINT work_head_fkey;
       public          postgres    false    218    4757    230            �           2606    49323    work work_priority_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_priority_fkey FOREIGN KEY (priority) REFERENCES public.priority(level);
 A   ALTER TABLE ONLY public.work DROP CONSTRAINT work_priority_fkey;
       public          postgres    false    221    230    4761            �           2606    49328    work work_status_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_status_fkey FOREIGN KEY (status) REFERENCES public.workstat(level);
 ?   ALTER TABLE ONLY public.work DROP CONSTRAINT work_status_fkey;
       public          postgres    false    232    4775    230            G   	  x�U�=n�@�k�s �w��"!��*�hwD�?��q�I�2mڤ�J�"�Iޚ�"lȝ�y�}ûew��O�_���?���x�}��lt1Q�B�db�b������5��2��Pd�Dh+uR.�K5��1E|d��*��Mu�)hVRK;	6Ij-�B|+Isi��87�o���G-,��Yd�Xu�����J�)����nU�cOL���ʖ)�^%���Am�0��BJ$U������@1%��>JJ<K��)H�t�C�]���ԯ��:է��K���Nݍ�"~�d_����T��w#-5qN�in�{ȋd���B�'I���I3�CE�E�Q[�%���喍b�Ɠ����e�W�nu>�PZT�����U�@�҅�	�eo����}=�J%�-��Qf��y�ԔA!c�P۲i[s1��a��ǥf�?V�	�� <i)P�|��}���5���7wK#�q�-�� �y��m���z�^h�7<#-��ֽ-D|�Y��}�h�������#������^�F      H   �   x�M��
�@D뻯�6����TQ�4iV]������"�b`��2�R��5�n���@�L���u����vve�=5̓��L��C�m�����D��U�ߋ���R�D��ؔ��hI����C�¬=o7��L��cP"��HV�c�xa�dE��m��F��{R�/A�DD      I   $   x��p5�0037�tt4�3�4�����"���� ͝g      J   �   x��p5�0037��9�X�%����R�̼NC#N#]C]#3NKcS#3KSS�\�lNJF*D�CZA�^jJ�^Y��/�s�s�����sb�B����u<oJT�y�k!��@����%��%
y�
9�y�1E1y��\1z\\\ ��.      K   P   x���44740��42215��t.JM,I-N-
IL�IE��24 �675��06�4�tLI�K-w�L�I)�G�W����� ��      M   N   x�3���/QpL.�,K�2s�2�2K*��8=������b.c�Т�Լ.N�̼��̼t.SN���T�=... u�p      N      x������ � �      O      x������ � �      P   \   x�	��8� /C!,��<�'ΐ�c�����������p�r��̇��s��92oV@u�t~�{&PS���
e`�b���� �(y      Q   F   x�02�.(��KW0202�rs
�%��@��� �����"�@��	��
$& L�&�p��qqq _Wc      R   #   x��p5�0037�ts42�4���������� ��      S   '   x�3���/QpL.�,K�2�2,9C�����b���� ��
u      T      x������ � �      V      x������ � �      X   f   x�3���/QpL.�,K�2��I����K�2���S(�O/J-.�2�JML�T�WO�,�+��)��e��s�p�e�eg������ #L9]��R�b���� �_�     