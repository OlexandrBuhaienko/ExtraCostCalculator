   M S B A M L   `   `   `  ����  ExtraCostCalculator$    ExtraCostCalculator.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Project Cost Calculator��5   	   $	��506��6)   $	��823��66    � Icon$S MD:\WORK\ARCHICK\ExtraCostCalculator\ExtraCostCalculator\Resources\favicon.jpg��5	   	   .��5      �� $
��Auto=�6   .��5   
   � $��20q�6    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5!      $
��Auto �6    �� 5#      $
��Auto �6    �� 5%      $
��Auto �6    �� 5'      $
��Auto �6    �� 5)      $
��Auto �6     � ColumnDefinitions 5,      �� 5-      $
��Auto �6#   $	��200��60   �� 5.      $��* �6#   .+�52      �� $��0��6   $��0��6!   $��Project Base Cost:��61   $��Center=�6N   �� 53      -   5         ��Name$ BaseCostTextBox��53      $��0��6/   $��1��6<   $��5q�6L   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter base cost��54      6G   �� 59      $��2��6   $��0��6!   $��Deadline Multiplier:��61   $��Center=�6P   �� 5:      -   5         ��Name$  DeadlineMultiplierComboBox��5:      $��2��6;   $��1��6H   $��5q�5;      .@�5<      �� $��Flexible��6   �� 5=      $��x2��6   �� 5>      $��x3��6   5?      �� 5B      $��3��6   $��0��6!   $
��SOW:��61   $��Center=�6@   �� 5C      -   5        $ SOWComboBox��5C      $��3��6,   $��1��69   $��5q�5D      .@�5E      �� $��Ok��6   �� 5F      $��Perfect��6   �� 5G      $��Not as per example��6   5H      �� 5K      $��4��6   $��0��6!   $��
Revisions:��61   $��Center=�6F   �� 5L      $��4��6   $��1��6&    �� Orientation$ 
Horizontal=�66   $��5q�6O   .+�5M      	� -   5         	�Name$! RegularRevisionsRadioButton��5M      $��3 rounds��6C   	 	� 	GroupName$	 	Revisions��6V   

 � Tag$
 False��5N      6*   	� 5O      -   5        $ MoreRevisionsRadioButton��5O      $
��More��6@   $	 	Revisions��6O   $��20,0,0,0q�6e   $
 False��5P      6*   5Q      �� 5T      $��5��6   $��0��6!   $��
Team Lead:��61   $��Center=�6F   �� 5U      $��5��6   $��1��6&   $ 
Horizontal=�66   $��5q�6O   .+�5V      	� -   5        $ TLConsultingRadioButton��5V      $��TL Consulting��6?   $	 TeamLeadOption��6W   $
 False��5W      6*   �� 5X      -   5        $ TLHoursTextBox��5X      $��60��62   $	��5,0q�6=   $ TL Hours��6J   �� 5Y      -   5        $ TLRateTextBox��5Y      $��60��62   $	��5,0q�6=   $ TL Rate��6J   	� 5Z      -	   5        $ TLRadioButton��5Z      $��TL��65   $	 TeamLeadOption��6B   $��20,0,0,0q�6]   $
 False��5[      6*   �� 5\      -
   5        $ TLPercentage��5\      $��60��60   $	��5,0q�6;   $ 
Percentage��6H   5]      �� 5`      $��6��6   $��0��6!   $	��PM:��61   $��Center=�6?   �� 5a      $��6��6   $��1��6&   $ 
Horizontal=�66   $��5q�6O   .+�5b      �� -   5        $ PMHoursTextBox��5b      $	��100��62   $	��5,0q�6>   $ PM Hours��6K   �� 5c      -   5        $ PMRateTextBox��5c      $	��100��61   $	��5,0q�6=   $ PM Rate��6J   5d      �� 5g      $��7��6   $��0��6!   $��
Discounts:��61   $��Center=�6F   �� 5h      $��7��6   $��1��6&   $ 
Horizontal=�66   $��5q�6O   .+�5i      	� -   5        $ Discounts12RadioButton��5i      $	��12%��6>   $	 	Discounts��6L   $��7��5j      $��1��6+   $��5,5,0,5q�6;   $
 False��5k      6*   	� 5l      -   5        $ Discounts24RadioButton��5l      $	��24%��6>   $	 	Discounts��6L   $��7��5m      $��1��6+   $��5,5,0,5q�6;   $
 False��5n      6*   5o      �� 5r      $��8��6   $��0��6!   $��Fixed Extras:��61   $��Center=�6I   �� 5s      -   5        $ FixedExtrasTextBox��5s      $��8��62   $��1��6?   $��5q�6O   $ Fixed amount��6Z   �� 5u      $��9��6   $��0��6!   $��Variable Extras:��61   $	��Top=�6L   $
��Left=�6d   �� 5w      -   5         ��Name$ VariableExtrasStackPanel��5w      $��9��6<   $��1��6I   $ Vertical=�6Y   .+�5x      �� -   5        $ VariableExtraTextBox��5x      $��5q�68   $ % of project��6C   �� 5y      -   5        $	��Add��5y      $��52��6@   $��20��6K   $��3q�6W   $
��Left=�6b   $��10(�6}   5z      �� 5}      $��10��6   $��0��6"   $��Payment Term Risks:��62   $��Center=�6P   �� 5~      -   5        $ NetComboBox��5~      $��10��6,   $��1��6:   $��5q�6J   .@�5      �� $��NET30��6   �� 5�      $��NET60��6   �� 5�      $
��None��6   5�      �� 5�      $ 
Horizontal=�6   $��Right=�62   $	��Top=�6N   $��20q�6f   $��12��5�      $��12��6'   .+�5�      �� -   5         ��Name$ ResultLabel��5�      $��Result:��6-   $��Center=�6?   $
��Bold"�6Z   $��14(�6l   $��0,0,10,0q�6z   �� 5�      -   5         ��Name$ CalculateButton��5�      $��Calculate result��62   $��2��5�      $��Right=�6)   $��	0,20,0,20q�6E   6X   5�      5�      5�      5�      