#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYU�� |����� ����������p F ��� � @ `��T��,n�gu�֭�-�6Ҡ���
T�0�A$�1=T�����OLS�"l�'�?T�MH  � hd �   4   ��   2 � 8   �   4   @ D��Қa�P�&��4 h @�  ��	�F&�2d�@�#�5l�M24dڍ���4 �H	��PɓH�T�CQ4z���Q����ɣL��?T�5 �.�cI ���K+p{��^sM��.��P����Zm� 4�x ։� JO�!@H�p2�`������Up_�STk5Y�����)��=ޚ+���"�Z|qR�n@\n���R�[)ʩ�"K����(��,�r`c3/D������f��i�j�y��zp�����rX��I!Ԕ0�#��sO�f���I��·.�f�EUAY KS�x�h�>
0�0i>`(U�`�<-S���m�B��u�]����z�rWx�n�֋����Ym+,�X��Q*3	%�������v�o#&O͹�}dJm��)�j[0��f0�{�
%�:tC �UҮG����J�t|�J����#��M�:޳9���l^�e�	`f��
#�9���2��4�t�HQ{t��������fznkչ-r$9Y�)�Vq����V |Ŗ�񎂄�MG7�l���Axxo�y�s�Ğ¶zMZ4�����P�4; rk�r@�������Ʉ=y'�g���B7�[��f�g���P����;O��:�3x�L��1k�h�k��.�ˎ�~G$�_��j
��,]�
�'1DW�
M�Ll�U:Q�&��6�i5�±�vZ�15�̼�y� �1+&�<t(��-[@���x���<��.T��>:�6���G���P���\��$�V�iR̐�vP^O�mJB娂,����%a �(w�@h"�Xp �m��Y@CHD2��K}��Q�������	�e�~�h�Q��Fbo9���p��Ix	p�Ȅ'n+�0%�~~(	�f�j�3n��6�I+�d��Ӝ�QHZB=��G���S߷�M�v��+�K��v�ST/�y�!O�&�?�)��óg!JV�R�D=�{���ύ|�`^�;���\����*11�>"P�6�[-7�ox����X8v�B��4AՉ��f�P¼�����E��%Y8��l93r����|����8F΍n	���-�DC��]"9�/���}���J��*#~��+�M�4 (`o��J��f8�/�e+�}=�s�5@W�hǄ����g�>���nٲ�'Q��Ֆ��,����XJQ}����M��ճ�@�3�iܗ�?��y�>�#;�@�4ÓzpS�������2>����ɟ�ӟba��~���c��E�g��OU����'ZӚDx�y�S
��4S
m���y��)f�6��U��J�L��q����<���$@�u�IE®��Y9XNT 6x�u���8WNm^t��@�{t�C�W�5U��pl�e�G����Y�[�&LMF�n���[����W�D����8�!��f�j�<b��eo�C%�N�HM�N�Íq�^gU�C���y�ecSM���*ӟAkv)k'�:9b�|o �*�G	�^�%j��72(���ܫ���uZ�&cx�]qGW��	�$���NwӍ/ޞwG]�ˇ�&���6:1x�j�8���fkѸ��p�m�?�m��7�:%1�J�IEa�_ ��R3n�d��K�ٞ�QA�@B�bA���=eX'n�2V���g�����=n�����z�9����y��Щ]fj`���C5U	�H���(�1��`���ZN1 �!}�3?	���h6ȓǮp3�ǇM'�tzD���n/R��� ��B@�� � ��]o�F2����L��U���BC&$��C���UU���޺�K�(�*�[0Z�{�s�i!_o�ܑ��~��� 1XV�ol"�y�{�e"��ڕ@�Pa9���Q�7�v(�ts+�!�)�# �"4���Љ���l�	�B@��*vCǰ���G�4������,ka�\=bGp�P��B��<�n���i����:C�֋wt|;z]��Q�Ҕ�k���o`�0qM��UԂx�j4�a�`�*��}�(�O��'�iP��k�3�Y���ͧ��P֤@�����\	U��6�$0u�>�t���YkB��C]��h�ɮ Ц�������aJX���q�WX=�!0�*�l)QaA%T�@^t�'N�;x��qr��
�.��n����O��F�
^��@-t6�c��J�`wM0@�����^@�ѰN�\�s���`t���� 
_��駚������!��b��u:�v��i��8��/9�&�q��'E�vW7'�'�X0iK]A֩S�+~ ��l0D)�V�HF����3�4��1�fε�OV�z^��#��� �8Y��:�^.��rX���Rn ���ZKx�f���C�{�D�:�A�Npw���i@$�1�'����T@y	��C ����-�T�k���`K g�MpvA�q���[m�Pw�o�w0/�2pK��Pu�\�3��f9�0���mt<�����``��jBQ7��ȅ5�4��u���;�����i��=�C�n�H���ˁ2 �M��+�xT�!ZF�Z%��!B�P���1+xldc@�/:���!�0�V��]��AٽM� H]~Z��_\ۢ��8�.�4z��z�E������@oQh�;��R����8Qv`�9�Va���
h;�b�=k$I$��1�sS������?A������|i	�Q<,ӗp�sMI�����˯ZM4��yaiP� � 2Q��?�
 �/.��  �$$礭��� @68"h��H`���)���h