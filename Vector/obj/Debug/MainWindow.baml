   M S B A M L   `   `   `  ����A  =Vector, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:VectorVector  5   	       Vector.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Vector     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Login��5	   	   $	��450��6   $	��300��6$    � WindowStartupLocation$ CenterScreen=�60    � WindowStyle$
 None=�6U    � 
ResizeMode$ NoResize=�6h   ��5
      �� 5   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5      �  � Color$ 	#FF273C51��6    � Offset$ 0Q�6-   � 5      $ 	#FF10171D��6   $ 1Q�6-   � 5      $ 	#FF1D2C3C��6   $	 0.5Q�6-   5       � 	Resources 5         TB	 �� 
TargetType
 �� Property �� Value �� 
TargetType �Name J� SnapsToDevicePixels ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value  PB��%�  &	        &	 �    �� 5   
   "	 ��6   .�5      �� 
 � �� �#16202b6+   �� 5      
 � ��$ Center=�69   �� 5      
 � ��$ 25��6'   �� 5      
 � �� �#e5e5e56+   �� 5      
 � ��$ 13(�6)   �� 5      
 � ��$ HelveticaneueCyr-Light)�6+   �� 5      
 � ��$ 10,0,0,0q�6(   �� 5      
 � �� �#1e2a376,   �� 5      
 � �� 5      �� 5      " ��6&   .R�5       � $
 root��6   #��z��6-   #��z��6O    . .+�5!      �� $ 
Background��6%   $��1q�69   $ 2��6M   #��z��6^   #��z��5"   %   ._�5#   "   �� $ PART_ContentHost��6/   $��0q�5$   /   #��z��5%   /   ��.  #��z��5(   /   ��5'   /   Z� 5(   /   5)      5*       5+      P� 5,       �@J�IsMouseOver . . �5-   "   �� 
 � �� �#2533436@   5.      P� 5/       �@J�	IsFocused . . �50   "   �� 
 � �� �#2d3f536@   �� 51   "   
 � �� �#131c256?   52      54      56      57      �� 59   
   "	 G�6   .�5:      �� 
 � �� �#16202b6+   �� 5;      
 � ��$ Center=�69   �� 5<      
 � ��$ 25��6'   �� 5=      
 � �� �#e5e5e56+   �� 5>      
 � ��$ 13(�6)   �� 5?      
 � ��$ HelveticaneueCyr-Light)�6+   �� 5@      
 � ��$ 10,0,0,0q�6(   �� 5A      
 � �� �#1e2a376,   -   5        �� 5C      
 � �� 5D      �� 5E      " G�6&   .R�5F      � $
 root��6   #��z��6-   #��z��6O    . .+�5G      �� $ 
Background��6%   $��1q�69   $ 2��6M   #��z��6^   #��z��5H   %   ._�5I   "   �� $ PART_ContentHost��6/   $��0q�5J   /   #��z��5K   /   ��.  #��z��5N   /   ��5M   /   Z� 5N   /   5O      5P       5Q      P� 5R       �@J�IsMouseOver . . �5S   "   �� 
 � �� �#2533436@   5T      P� 5U       �@J�	IsFocused . . �5V   "   �� 
 � �� �#2d3f536@   �� 5W   "   
 � �� �#131c256?   5X      5Z      5\      5]      5^      .��5`      �  � RowDefinitions 5a   
   �� 5b      $��25 �6   �� 5c      $	��100 �6   �� 5d      $	��200 �6   �� 5e      $	��125 �6   .+�5h   
   � -   5        $��ToolBar��5h      $��0��6   
������ .+�5i      �� 
���   � J� Opacity$	 0.9Q�6%   �� 5j      $��Vector - Login��6   
�������$��13(�6A   $��HelveticaNeueCyr-Light)�6O   $��center=�6s   $	 0.7Q�6�   $��5q�6�   �� 5k       �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�5l      �� -   5         ��Name$ 	MinButton��5l      $��18��6+   $��18��67   $��4q�6B   $	 0.5Q�6M   ��5m      �� 5n      "	 ��6    .�5o      �� 
 � ��$ Source/hb_idle.png��67    �� Triggers 5p      �� 5q   "    �� Binding 6.   �� *IsMouseOver+ �� ElementName$ 	MinButton�� �� Value True5r   *   .a�5s   &   �� 
 � ��$ Source/hb_hover.png��6?   5t   #   5v      5x      �� 5z      -   5        $ CloseButton��5z      $��18��6-   $��18��69   $��4q�6D   $	 0.5Q�6O   ��5{      �� 5|      "	 ��6    .�5}      �� 
 � ��$ Source/cb_idle.png��67    5~      �� 5   "    6.   �� *IsMouseOver+$ CloseButton�� True5�   *   .a�5�   &   �� 
 � ��$ Source/cb_hover.png��6?   5�   #   5�      5�      5�      5�      � 5�   
   -   5        $��LogoContainer��5�      $��1��6$   .+�5�      �� -   5        $��Logov2��5�      $��Source/logo_v2_v.png��6"   $��113,30,113,7q�6@   $	 0.8Q�6V   5�      �� 5�   
   -   5         ��Name$ textBoxLogin��5�      $��2��6(   #��[  65   $��30,58,30,116q�5�      $
��Auto��6(   $��HelveticaneueCyr-Light)�66   ���#f5f5f55�   O   �� 5�   
   -   5         ��Name$ WatermarkLogin��5�       J� IsHitTestVisible .  $��13(�6E   $��Email or username��6S   $��HelveticaneueCyr-Light)�6l   $��2��5�      $��43,63,100,0q�6!   $	��Top=�66   
�������$��15��6`   ��5�      �� 5�      "	 ��6   .�5�      �� 
 � y�$ 	Collapsed=�63    5�      �� 5�       6&   �� *Text+$ textBoxLogin��  6Y   .a�5�      �� 
 � y�$ Visible=�6;   5�      5�      5�      �� 5�   
   -	   5          ��Name$  textErrorState��5�      $��2��6(   $��Error��5�      $��65,168,65,8q�6    
������ $��Center=�5�      $��HelveticaneueCyr-Light)�5�      $	 0.6Q�5�      G� 5�   
   -
   5        ! G�Name$! textBoxPass��5�      $��2��6+   #��[ 68   $��30,102,30,72q�5�      $
��Auto��6(   $��HelveticaneueCyr-Light)�5�      ���#f5f5f566   �� 5�   
   -   5        $ WatermarkPass��5�       .  $��13(�6D   $��Password��6R   $��HelveticaneueCyr-Light)�6b   $��2��5�      $��43,107,100,0q�6!   $	��Top=�67   
�������$��16��6a   5�      �� 5�   
   $��2��6   $��31,143,136,37q�6    ���#375470���#e5e5e5$	 0.8Q�5�       ( $MaterialDesignUserForegroundCheckBox#��[ 5�      $��20��6Q   �� 5�   
   $��2��6   $��Keep me logged in��6!   ���#e5e5e5$��12(�5�      $��52,147,142,39q�6"   $	 0.7Q�5�      $��HelveticaneueCyr-Light)�6"   �� 5�   
   -   5        " ��Name$" ButtonLogin��5�      $��3��6&   $	��100��63   $��30��6?   $��100,2,100,93q�6K   $��Sign in��5�      ���#2c4257���#e5e5e5$��HelveticaNeueCyr Light)�5�      ���	#FF273C51$	 0.9Q�5�       ! MaterialDesignFlatMidBgButton#��[ 6   6R   �� 5�   
   $��3��6   ���#e5e5e5$��11(�66   $��Or use the options below��6D   $��91,37,90,74q�6d   $	 0.7Q�5�      # J� RenderTransformOrigin$# 	0.55,1.85&�6"   $��HelveticaNeueCyr Light)�5�      �� 5�   
   -   5        $ OpenRegisterWindow��5�      $��3��60   $
��Auto��6=   $��83,56,83,53q�6K   $��Create a Vector account��5�      $��12(�6,   ���#375470
������ $��HelveticaNeueCyr)�5�      $��Medium"�6+   ��5�      �� 5�      "	 ��6   .�5�      �� 
 � �� �#37547063    5�      :� 5�      $ :� RoutedEvent$$ 
MouseEnter��6'   .[�5�      �� .��5�   "   �� .��5�   &   �� % �� TargetProperty$% Foreground.Color�65   	& �� To$
& GrayX�6b   ' g� Duration$' 0:0:0.2D�6l   5�   #   5�      5�      :� 5�      $$ 
MouseLeave��6'   .[�5�      �� .��5�   "   �� .��5�   &   �� $% Foreground.Color�65   $& #375470X�6b   $' 0:0:0.2D�6o   5�   #   5�      5�      5�      5�      �� 5�   
   $��3��6   $
��Auto��6!   $��115,77,115,32q�6/   $��Can`t log in?��5�      $��12(�6"   ���#375470
������ $��HelveticaNeueCyr)�5�      $��Medium"�6+   ��5�      �� 5�      "	 ��6   .�5�      �� 
 � �� �#37547063    5�      :� 5�      $$ 
MouseEnter��6'   .[�5�      �� .��5�   "   �� .��5�   &   �� $% Foreground.Color�65   $
& GrayX�6b   $' 0:0:0.2D�6l   5�   #   5�      5�      :� 5�      $$ 
MouseLeave��6'   .[�5�      �� .��5�   "   �� .��5�   &   �� $% Foreground.Color�65   $& #375470X�6b   $' 0:0:0.2D�6o   5�   #   5�      5�      5�      5�      �� 5�   
   -   5        $
 Logo��5�      $��Source/MainLogo.png��6   $��104,0,104,171q�6;   $��2��6R   $	 0.8Q�6_   5�      5�      