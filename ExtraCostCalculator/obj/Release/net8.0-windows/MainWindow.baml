   M S B A M L   `   `   `  ����   ExtraCostCalculator$    ExtraCostCalculator.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  Project Cost Calculator��$	��506��$	��823�� � Icon$S MD:\WORK\ARCHICK\ExtraCostCalculator\ExtraCostCalculator\Resources\favicon.jpg��.���� $
��Auto=�.��� $��20q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � � ColumnDefinitions �� $
��Auto �$	��200���� $��* �.+��� $��0��$��0��$��Project Base Cost:��$��Center=��� -    ��Name$ BaseCostTextBox��$��0��$��1��$��5q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter base cost���� $��2��$��0��$��Deadline Multiplier:��$��Center=��� -    ��Name$  DeadlineMultiplierComboBox��$��2��$��1��$��5q�.@��� $��Flexible���� $��x2���� $��x3���� $��3��$��0��$
��SOW:��$��Center=��� -   $ SOWComboBox��$��3��$��1��$��5q�.@��� $��Ok���� $��Perfect���� $��Not as per example���� $��4��$��0��$��
Revisions:��$��Center=��� $��4��$��1�� �� Orientation$ 
Horizontal=�$��5q�.+�	� -    	�Name$! RegularRevisionsRadioButton��$��3 rounds��	 	� 	GroupName$	 	Revisions��

 � Tag$
 False��	� -   $ MoreRevisionsRadioButton��$
��More��$	 	Revisions��$��20,0,0,0q�$
 False���� $��5��$��0��$��
Team Lead:��$��Center=��� $��5��$��1��$ 
Horizontal=�$��5q�.+�	� -   $ TLConsultingRadioButton��$��TL Consulting��$	 TeamLeadOption��$
 False���� -   $ TLHoursTextBox��$��60��$	��5,0q�$ TL Hours���� -   $ TLRateTextBox��$��60��$	��5,0q�$ TL Rate��	� -	   $ TLRadioButton��$��TL��$	 TeamLeadOption��$��20,0,0,0q�$
 False���� -
   $ TLPercentage��$��60��$	��5,0q�$ 
Percentage���� $��6��$��0��$	��PM:��$��Center=��� $��6��$��1��$ 
Horizontal=�$��5q�.+��� -   $ PMHoursTextBox��$	��100��$	��5,0q�$ PM Hours���� -   $ PMRateTextBox��$	��100��$	��5,0q�$ PM Rate���� $��7��$��0��$��
Discounts:��$��Center=��� $��7��$��1��$ 
Horizontal=�$��5q�.+�	� -   $ Discounts12RadioButton��$	��12%��$	 	Discounts��$��7��$��1��$��5,5,0,5q�$
 False��	� -   $ Discounts24RadioButton��$	��24%��$	 	Discounts��$��7��$��1��$��5,5,0,5q�$
 False���� $��8��$��0��$��Fixed Extras:��$��Center=��� -   $ FixedExtrasTextBox��$��8��$��1��$��5q�$ Fixed amount���� $��9��$��0��$��Variable Extras:��$	��Top=�$
��Left=��� -    ��Name$ VariableExtrasStackPanel��$��9��$��1��$ Vertical=�.+��� -   $ VariableExtraTextBox��$��5q�$ % of project���� -   $	��Add��$��52��$��20��$��3q�$
��Left=�$��10(��� $��10��$��0��$��Payment Term Risks:��$��Center=��� -   $ NetComboBox��$��10��$��1��$��5q�.@��� $��NET30���� $��NET60���� $
��None���� -    ��Name$ CalculateButton��$%��Розрахувати суму��$��12��$��0��$��2��$��Right=�$��	0,20,0,20q�