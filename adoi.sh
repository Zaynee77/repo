#!/bin/sh
skip=23
set -C
umask=0002
umask 77
tmpfile=/tmp/gztmpYsmyz || exit 1
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
BZh91AY&SYX�� ^�����������������������������������M�}g}�����avv�*���s������^�O���+���|p�A	���djzb2�D��L�'�&4�6��bi4�П��e6�Q�6�h4�<�2����=�e=&Л)�ș1��Q�4�S�OPji	������0ji����F)=C�d��������(�&ҏL��ަ�b�zF�z�����z��M��  A�ښ'���hh� SMSD1�����L�F�����=F�=Oԍ=#O(h�<��= d C� F��C��S�<����h�   M4&�b�)�'���Hz���G�d 4ɠ�  h �#@4@��� �  4  ���j�P􁦀 ��5A�� �h�&�i�@ �   4hh2A� F� �   "H&�M&���FFS���mI�Q�S��ڞ������4� z������z���z�=	���Py@�����OP������ ��SM2hHh���B������Z�c���X�0�m
 ��¬�"���k���f�noz�L
{�T�K6��C}n}r�;��YUP�JLX�*N7I�ֹAL#�3����)�@��WH�{3&�9c��:�)hV��x
u��8�,��2��	�g1���n�)N�u��(�)�$׫
2����va�����RC���B��1]��I�BKԩ�H@�������+�Z��F�P$�I��J�E4�Mx"Ie�LQ�eϵܜ�"�M��n6G�YXչ�ȠȢ��	�r#��E`�Q�@�m-;3\���a�\Y����]KB*�BA2Yƌx_k�����[�Š���0��E&d�%R�T+^���Pr~^�  YO9>Xu�> ��ʠ�R�6u�ʰ"'\�O�� |Z%����~ǐ!��}�"{��%~��?C����+�G�s,���J��ס{�Wq����*"��f �`8����,�C�;���3��.�v ���Bl�'!�xX�$R�{{�ɚ���*lq<d�-oQ_8V��Ԝ�E�Z"�ᇢ�;-����F �W7��	���_Ў����8�b:CM�ƀXV�0b,��,HH�b0;�T�9���$RԒ�M�L��D�	�0*HHȵx�)'Q(���s,6/`�STG���/�'(�ߓL)�v)x2R���d'B�-*T�L)`7D7=�tW3����Jn�VvcJ"!���C-�2���q*'0�B�E��\h�pT�V:ץ:\Ӳ��E��H�i$'�h�[�����Y�oٹau^B���Mֈ���&����C��H��#pđ�;*��H
�0�x���	��K����|�i��=_?G����n���O
r�~E���'̾�M��lG�������`�#2 �FDD)gd����k�����K4���a��V�����;&���7p�`#�hj׷a�M)i&Ͻ���&��:�㠎kC��>V�_M��!p2��ɐ�-�Ca�$��S��y0�3k��+[����gĵ}7�{�}m���jڕS~�G��Vl^�/HT��7k4m�������4$��EEѾ�s��@��J�g�Lߩ���Vy�����BY&����$kq�3�b=8����V4���hT6�l�w�;��U�z
a�j^}�Ų�%���vS���#��-���f�irK(���d��25Wz�NC;�p�_�W���~Z���EM�aF��zr)H-Y1A�3Yra	SL֬Hn'x[�sz��]62%dU �2�43L����_�n�g��p����TȅE�F�&����xO�k�yd�FC�u$\ꈡ�@6�N�A��33�lg�(��;;FEҚ����ڝ�D%/(�15)�32��.��Z�0���(a�����[	�^_7�1�Ca�$�Klk�/�#?O;����0�D1��(o8`ĺ9��ҢgIU�d?��b9�I��]�qW�Z�����$���I��uӻz�-#�c����Z�O�Li�#�����j��#���u�z&�U2��´F`8�8��@`�i_��:T���M���h��Y���Y��!�������]ut���Ɨ׾ӥt��P�ݯ^���N�+u� ��g�˒�a��]Eml�
�ڭl�S�YC�)1h�ԨZ:�c�L��zT�c/(���|d">����.0��Z�ac����	B䭄h�O��
��?B���Md�]��vi��O^�	%�*!`�aH �����|�g� p�Vg��h%�����- "���O�H#a����C���`��p�6Y�	4��8>�ͦ���G�յRKm�=��ũ��m��$ ��3�. �K����Υ͆A��N�s�Ȉ�t�ϸ�X99�c���3\�Z��>�=}i�).ZmĔ.﷎�D=Y�#����l�/Pi�����}��9���Ye�*����2&+�o���48���M?�W\ځB[}|p���c�眺V��Hy�z�w�+��@fn����a� �l�EJY$?�@�D!R����B�^b�F�ӝw��������]}���K&�3���MVQޓ˰�ɸI�&�>QjZ�c�}}6�<.�Fܙ"��W:aA���JgHVY)�ү��0�~��w��K���S���*PG����H��4��hK�J���]�c�����LP�;f�O��H��y����� N �7��A�)	4PL�H,�nn�l�w��߬:Nl�<#��o���x[YgEcwk޶��n�#v����7(p��,-b�B3��̋/v��'H�Q����xji�=L�������U��#��3�p���2�X&[r�X|���ۀ����y��(,��9/�ʳ&�ق�Jƚi�K��.U��TR4��z�r�~/m��i�y�%�eP���~�J-ǀvt����HS`Y��Adk�_����f��&wo^.���`�s�;�A�t�>�ERZ�B30a�T�`D�3�3�kLe����wv��5�ti����L��/~.={b�Ų.YN�i��[f��g��+&��fuM�-�6V���Y�u�J�d�oY��Z.�̵�����4�5�$"����+��J�<���)���n��=�.�V�|DNc��؆D�Q��.�~�E� ��i3;��[y�s"ۊ�ot�$[mA�^%TSr?��t�t�k�����RU	�l�ڑꊃ2@-�ۥ�ѐ�����{�bc#
Q�E �5�#�B�%Z�Y����Un��A�y�8Ͳ���A��R� �Q�ԃD|�~c��ڈ�����T�V���e�3��O6��캏�b�3N�VnR$}Ȩ5���vHb��*ʮ( ��Aa4��6�ߧv�A�!�nt����
"#��D�,��/E��b�P	:;\A���&�P*6E|��'6;�I4��3�X5��@x�%nF��C�j���G��o0������8'�[J8�
Ae����#D@���
�l^�ż��k w�����g����R�H�*�]�ߎ��t�y��޼;!-��.~�,�z<��L�m��O��)���A���+������%:($�[o��e&�pD�#��Vū��0��u�b�`A5e-�LL -�4sQ�Ш�M�f�<�n�o��q��������#��q5y��LS��ڐ������ �0�u[�Uʢ�gHB�	0j����L-�3���Ϩ�� ��� �q�����8u����K[��:��({�8K�h��0��a{��g���y�f���bet�7�"@ip�c �Y'��>��n�+n��^45��v)�R4wJ��iU��%C�O����S�ql�84R�1g5׿![�O\,��p���٬�l�iH�5e��Ļ�d���j5q�g!Sr1*[�bV9~� ����f/�w�Uʙj��썭h*"<�2���S��U��/YF$���gl�"t@�\��<���#���2�¦�L��a��0�3>���ʷ4By�"�}�"f�}ѽA@���~�LkA�8�t:�j���� kؕ��M���ڸ;�݃Qm�wY���<-����D4%��a �G��s��gy<�>cJ[�i���ٯ���}�l�	��S{҇<�!�1���L���8Gt	ZDT���P\:^ޕ#��H��5�u�@�����t��.�0��kd�s3��'�2�c��)V��4��○�r�n���=.ʁt��&��5���F7.��`'��*�\���_7G�>i�k�$�Wr�'�C��x|�8>_��C��`��+�_���@l�Je�d��0wa�H℮;�k�O-d:F���#�
^r�Oz�<d����?�N7t�(Y�5&�e�5-:-zn��kf��xݫ�jë� ��
 ��@9r����O���zlӎ�&��i$�Љ�dt�h���w3�nt��<<�H+a����O�Q,����R�.�T`1~1�WJ a�HŃps�X�ކ�So[`/@�8ގ�dZxr�3�7�0�V������O��` j����y:S2�$�P̓0~�<�IT�h�|�5L�|Q���C��;�x2�F	��۳��u���P�=͞�a6�Ð{p~!JR��ņ�4*fRp�_	�Im����.�RZ��xeSe��h7��鯷� �<�<�ͣ�p2FR���_f�'\ڙű���!�7�U�*��*4�5r�(�J��"f��R�May�=������z�t#f���
���i��ua��MZ m�T��67�ǦNh��gՈ(j9�!�؃]Ψ�طN1��!� m;������f\�x,���+Dq�۸:�[�>eej�L�<y�*N�d��x�O�������-�ヅ7���2Ŷ@X�[2�5�B{�w���Ϡ���-�HC��C��v��<��3�����O���&�������x�ܣ��=u��-&g�ue�*���HX0��$�[�������P��gD(lN�6z��{l3��l�_�~����ۜ������`�A3��SY�~}d�m���CE0�Y�
�ȗ'��x��f6˭�|�[��]W����t_�y�l�-�FF���DNJL�碸�w���qU�P�M��ϯ}��}E�4�Y��\� �z�f�3�Iv� G�|nr2�q�c�����x�I�]h�*��C���)��xx�n�3C|�1BA!�����q�N�'�Q8�	D��� E"B��Hޓ�<��A��Og� �4��虆������ޯ��dm��ܹs�B�b��K��vl}��� ��ܑN$<c� 