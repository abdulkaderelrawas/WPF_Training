   M S B A M L   `   `   `  ����Q  M03_MonhtlyTransactions, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:_03_MonhtlyTransactions.Views_03_MonhtlyTransactions.Views  5   	   W0clr-namespace:_03_MonhtlyTransactions.Properties"_03_MonhtlyTransactions.Properties  5   	   -    '_03_MonhtlyTransactions.Views.ShellView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   =local+clr-namespace:_03_MonhtlyTransactions.Views     5   	   G
properties0clr-namespace:_03_MonhtlyTransactions.Properties     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      MaterialDesignBody#���   5	   	   $��Regular"�5
   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	   $	��600��5      $	��500��6'    � WindowStartupLocation$ CenterScreen=�63    � 
ResizeMode$ NoResize=�6X    � WindowStyle$
 None=�6n    � 	Resources 5      1  +_03_MonhtlyTransactions.Properties.Settings  Culture  ShowAddTransactionView g� Duration �� 
TargetName �� TargetProperty	 R� KeyTime  System.Windows.Visibility
   Visible R� Value  hideAddTransactionView   	Collapsed  ShowEditTransactionView  hideEditTransactionView  ShowDeleteTransactionView  hideDeleteTransactionView��%	  &	       &	      &	 �     &	 K    &	 �    &	 �    &	 $      5   
   6   �� 5   
   .��5      T� $ 0D�6,   $ GridAddTransaction��69   $ 
Visibility�6d   ..�5      i� $	 0��6)   # Z
 65   5      5      �� 5   
   .��5      T� $ 0D�6,   $ GridAddTransaction��69   $ 
Visibility�6d   ..�5      i� $	 0��6)   # Z 65   5      5      �� 5   
   .��5      T� $ 0D�6,   $ GridEditTransaction��69   $ 
Visibility�6e   ..�5       i� $	 0��6)   # Z
 65   5!      5"      �� 5#   
   .��5$      T� $ 0D�6,   $ GridEditTransaction��69   $ 
Visibility�6e   ..�5%      i� $	 0��6)   # Z 65   5&      5'      �� 5(   
   .��5)      T� $ 0D�6,   $ GridDeleteTransaction��69   $ 
Visibility�6g   ..�5*      i� $	 0��6)   # Z
 65   5+      5,      �� 5-   
   .��5.      T� $ 0D�6,   $ GridDeleteTransaction��69   $ 
Visibility�6g   ..�5/      i� $	 0��6)   # Z 65   50      51      52      .��54      � .+�56   
   �� .+�59      � ���#673AB7.+�5:      �� $��5q�6   2   ,_03_MonhtlyTransactions.Properties.Resources   Title#��Z 6'   
�������$��Center=�6g   $��Center=�6�   $��20(�6�   �� 5;       �� Orientation$ 
Horizontal=�6   $��Right=�66   $��10, 0q�6R   .+�5<      �� -   5         ��Name$ MinimizeApplication��5<   (   $��5q�6    0	 ,MaterialDesignFloatingActionMiniAccentButton#��[	 6E   $��25��6�   $��25��6�   
���������6�   Z� ��6�   Z� .��5=      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�62   5>      �� 5?      -   5        $ CloseApplication��5?      #��[	 67   $��25��6}   $��25��6�   
���������6�   Z� ��6�   Z� .��5@        $ Power=�62   5A      5B      5C      � 5F      .+�5G      �� .+�5J      ��    MonthlyTransactionList#��Z 6   $	��480��6`   $	��450��6m    
 MaterialDesignGroupBox#��� 
 6y   $��30 20 20 20q�6�   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�6�   $��0q�6�   .��5K      &   System.Windows.Controls.DataGrid  -   5          Name$ Transactions��5K   4   $��0 8 0 0q�6#      CanUserSortColumns .    
IsReadOnly .     CanUserAddRows .     AutoGenerateColumns .  -  'MaterialDesignThemes.Wpf.DataGridAssist   CellPadding$ 13 8 8 8q�5L         ColumnHeaderPadding$
 25 5q�6R      Columns 5N      1	  +MaterialDesignThemes.Wpf.DataGridTextColumn	  5P   "   ,
  &System.Windows.Controls.DataGridColumn 
  Header$ Earnings/Spendings��6h    5 1MaterialDesignDataGridTextColumnPopupEditingStyle1  +System.Windows.Controls.DataGridBoundColumn   EditingElementStyle# [ 6�      Binding 6D   �� *transactionName+ 
  HeaderStyle 5Q   &   �� 5R   *    �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  60    & "MaterialDesignDataGridColumnHeader  �� BasedOn#  [ 6[   .�5S   .   �� ! �� Property! � ��" �� Value$" Center=�6T   �� 5T   .   ! � ��" 5U   2   �� 5V   6   .R�5W   :   �� $
��Wrap=�6D   # �� TextAlignment$# Right=�6i   ��6X   �� 6i   5X   7   5Z   /   5[   +   $   ElementStyle$ 5]   &   �� 5^   *   " ��60   .�5_   .   �� ! � ��$" Center=�6T   5`   +   5b   #   	  5d   "   $ Amount in $��6j   # [ 6    6D   �� *transactionAmount+ 5e   &   �� 5f   *   "  60   #  [ 6[   .�5g   .   �� ! � ��$" Center=�6T   �� 5h   .   ! � ��" 5i   2   �� 5j   6   .R�5k   :   �� $
��Wrap=�6D   $# Right=�6i   ��6X   �� 6i   5l   7   5n   /   5o   +   $ 5q   &   �� 5r   *   " ��60   .�5s   .   �� ! � ��$" Center=�6T   5t   +   5v   #   5y      5z      �� 5}      $ 
Horizontal=�6!   $��Center=�6:   $��Bottom=�6W   .+�5      �� -   5        $ btnAddTransaction��5   ;   $��Add Transaction��6!   $��	10 5 5 20q�6V   $	��150��6i   $��32��6u   % �� IsCancel% . & � Triggers& 5�      :� 5�   "   ' :� RoutedEvent$' Button.Click��6/   .[�5�   &   �� #��[ 66   5�   #   5�      �� 5�      -   5        $ btnEditTransaction��5�   <   $��Edit Transaction��6!   $��	10 5 5 20q�6X   $	��150��6k   $��32��6w   % . & 5�      :� 5�   "   $' Button.Click��6/   .[�5�   &   �� #��[ 66   5�   #   5�      �� 5�      -   5        $ btnDeleteTransaction��5�   >   $��Delete Transaction��6!   $��	10 5 5 20q�6\   $	��150��6o   $��32��6{   % . & 5�      :� 5�   "   $' Button.Click��6/   .[�5�   &   �� #��[ 66   5�   #   5�      5�      5�      5�      5�      � 5�   
   -   5        ( �Name$( GridAddTransaction��5�       ) K� ZIndex$) 1��6   ���	#80bbbbbb$��2��6S   $��0,0,-0.2,-0.2q�6g   ��5�      �� 5�      " �6   .�5�      �� ! � y�$" 	Collapsed=�63   5�      .+�5�      � $��Center=�6   $��Center=�6.   * � ColumnDefinitions* 5�      �� 5�      $��10 �6'   �� 5�      $	��300 �6'   �� 5�      $��10 �6'   + � RowDefinitions+ 5�      �� 5�      $��10 �6$   �� 5�      $��* �6$   �� 5�      $��10 �6$   .+�5�      � $��0��6   $��3��6$   
�������68   � 5�      $��3��6   $��3��6$   
�������68   � 5�      $��0��6   $��3��6'   
�������68   � 5�      $��3��6   $��3��6'   
�������68   ]� 5�      $��1��6   $��1��6)   ��.  
�������.+�5�      �� $��Add Transaction��6    $��0,0,20,0q�67   $	��Top=�6I   $��Center=�6^   �� 5�      $��Transaction��6    $	��Top=�63   �� 5�      -   5        , ��Name$, TransactionName��5�      $	��Top=�67   $��30��6L   �� 5�      $
��Type��6!   $	��Top=�6-   �� 5�      $	��Top=�6H   $��30��6]   - �� SelectedItem- 6   �� *TransactionType+.@�5�      �� .��6'   	Earning60   �� 5�      .��6'   
Spending61   5�      �� 5�      $��Amount��6!   $	��Top=�6/   �� 5�      -	   5        $, TransactionAmount��5�      $	��Top=�69   $��30��6N   ]� 5�      $��0,20,0,0q�6    $	��Top=�62   .+�5�      �� -
   5        $ BtnCancelSaveTransaction��5�   !   $��Cancel��6C   $
��Left=�6T   $	��121��6o   $��32��6{   & 5�      :� 5�   "   $' Button.Click��6/   .[�5�   &   �� #��[ 66   5�   #   5�      �� 5�      -   5        $ BtnSaveTransaction��5�   !   $
��Save��6=   $��right=�6L   $	��121��6h   $��32��6t   & 5�      :� 5�   "   $' Button.Click��6/   .[�5�   &   �� #��[ 66   5�   #   5�      5�      5�      5�      5�      � 5�   
   -   5        $( GridEditTransaction��5�       $) 1��6   ���	#80bbbbbb$��2��6T   $��0,0,-0.2,-0.2q�6h   ��5�      �� 5�      " �6   .�5�      �� ! � y�$" 	Collapsed=�63   5�      .+�5�      � $��Center=�6   $��Center=�6.   * 5�      �� 5�      $��10 �6'   �� 5�      $	��300 �6'   �� 5�      $��10 �6'   + 5�      �� 5�      $��10 �6$   �� 5�      $��* �6$   �� 5�      $��10 �6$   .+�5�      � $��0��6   $��3��6$   
�������68   � 5�      $��3��6   $��3��6$   
�������68   � 5�      $��0��6   $��3��6'   
�������68   � 5�      $��3��6   $��3��6'   
�������68   ]� 5�      $��1��6   $��1��6)   ��.  
�������.+�5�      �� $��Edit Transaction��6    $��0,0,20,0q�68   $	��Top=�6J   $��Center=�6_   �� 5�      $��Transaction��6    $	��Top=�63   �� 5�      -   5        $, EditTransactionName��5�      $	��Top=�6�   $��30��6�   ��6   �� . �� Path$). #SelectedTransaction.transactionName�/ �� UpdateSourceTrigger$/ PropertyChanged=�6�   �� 5�      $
��Type��6    $	��Top=�6,   �� 5�      $	��Top=�6I   $��30��6^   - 6   �� *TransactionType+.@�5�      �� .��6'   	Earning60   �� 5�      .��6'   
Spending61   5�      �� 5�      $��Amount��6!   $	��Top=�6/   �� 5�      -   5        $, EditTransactionAmount��5�   �   $	��Top=�6�   $��30��6�   ��6   �� $+. %SelectedTransaction.transactionAmount�$/ PropertyChanged=�6�   ]� 5�      $��0,20,0,0q�6    $	��Top=�62   .+�5�      �� -   5        $ BtnCancelEditTransaction��5�   !   $��Cancel��6C   $
��Left=�6T   $	��121��6o   $��32��6{   & 5�      :� 5�   "   $' Button.Click��6/   .[�5�   &   �� #��[ 66   5   #   5     �� 5     -   5        $ BtnSaveEditTransaction��5  !   $
��Save��6A   $��right=�6P   $	��121��6l   $��32��6x   & 5     :� 5  "   $' Button.Click��6/   .[�5  &   �� #��[ 66   5  #   5	     5
     5     5     5     � 5  
   -   5        $( GridDeleteTransaction��5      $) 1��6   ���	#80bbbbbb$��2��6V   $��0,0,-0.2,-0.2q�6j   ��5     �� 5     " �6   .�5     �� ! � y�$" 	Collapsed=�63   5     .+�5     � $��Center=�6   $��Center=�6.   * 5     �� 5     $��10 �6'   �� 5     $	��330 �6'   �� 5     $��10 �6'   + 5     �� 5     $��10 �6$   �� 5     $��* �6$   �� 5      $��10 �6$   .+�5"     � $��0��6   $��3��6$   
�������68   � 5#     $��3��6   $��3��6$   
�������68   � 5$     $��0��6   $��3��6'   
�������68   � 5%     $��3��6   $��3��6'   
�������68   ]� 5'     $��1��6   $��1��6)   ��.  
�������.+�5(     �� $��Delete Transaction��6    $��0,0,20,0q�6:   $	��Top=�6L   $��Center=�6a   �� 5*     $?��9Are you sure you want to delete the following transaction��6    $	��Top=�6a   �� 5+     -   5        0 ��Name$0 DeleteTransactionName��5+  �   $	��Top=�6�   $��50��6�   $��Center=�6�   ��6!   �� $). #SelectedTransaction.transactionName�$/ PropertyChanged=�6�   ]� 5-     $��0,20,0,0q�6    $	��Top=�62   .+�5.     �� -   5        $  BtnCancelDeleteTransaction��5.  !   $��Cancel��6E   $
��Left=�6V   $	��121��6q   $��32��6}   & 5/     :� 50  "   $' Button.Click��6/   .[�51  &   �� #��[ 66   52  #   54     �� 55     -   5        $ BtnSaveDeleteTransaction��55  !   $��Delete��6C   $��right=�6T   $	��121��6p   $��32��6|   & 56     :� 57  "   $' Button.Click��6/   .[�58  &   �� #��[ 66   59  #   5;     5<     5=     5>     5?     5@     5A     