using System;
using System.Windows;
using System.Windows.Controls;

namespace ExtraCostCalculator
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            UpdateCalculateButtonState();
        }

        //Event handlers to update the Calculate button state 
        private void BaseCostTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateCalculateButtonState();
        }

        private void DeadlineMultiplierComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateCalculateButtonState();
        }

        private void SOWComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateCalculateButtonState();
        }

        private void DiscountsRadioButton_Checked(object sender, RoutedEventArgs e)
        {
            UpdateCalculateButtonState();
        }

        private void UpdateCalculateButtonState()
        {
            bool isBaseCostValid = decimal.TryParse(BaseCostTextBox.Text, out decimal baseCost) && baseCost > 0;
            CalculateButton.IsEnabled = isBaseCostValid;
        }


        //OnClick event handler for Calculate button which is calling the calculate final cost method
        private void CalculateButton_Click(object sender, RoutedEventArgs e)
        {
            if (!decimal.TryParse(BaseCostTextBox.Text, out decimal baseCost) || baseCost <= 0)
            {
                MessageBox.Show("Please enter a valid base cost.", "Invalid Input", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            decimal finalCost = CalculateFinalCost(baseCost);
            MessageBox.Show($"Final project cost: {finalCost:C}", "Calculation Result");
        }

        //Calculate final cost method which is calling the Calculate additional cost method 
        private decimal CalculateFinalCost(decimal baseCost)
        {
            decimal finalCost = baseCost;
            finalCost += CalculateAdditionalCosts(baseCost);
            //finalCost -= CalculateReferralsDiscount();
            finalCost = ApplyDiscount(finalCost);

            return finalCost;
        }

        //CalculateAdditionalCost method, which is calling other methods to calculate every part of additional cost 
        private decimal CalculateAdditionalCosts(decimal baseCost)
        {
            decimal additionalCost = 0;
            additionalCost += CalculateDeadlineMultiplier(baseCost);
            additionalCost += CalculateSOWAdjustment(baseCost);
            additionalCost += CalculateRevisionsCost(baseCost);
            additionalCost += CalculateTeamLeadCost(baseCost);
            additionalCost += CalculatePMCost();
            additionalCost += CalculateFixedExtras();
            //additionalCost += CalculateVariableExtras(baseCost);
            //additionalCost += CalculatePaymentTermRisk(baseCost);

            return additionalCost;
        }

        // Імплементуйте методи CalculateDeadlineMultiplier, CalculateSOWAdjustment, CalculateRevisionsCost, CalculateTeamLeadCost, CalculatePMCost, CalculateFixedExtras, CalculateVariableExtras, CalculatePaymentTermRisk згідно з вказаними умовами.

        private decimal CalculateDeadlineMultiplier(decimal baseCost)
        {
            decimal deadlineAdditionalCost;
            switch (DeadlineMultiplierComboBox.Text)
            {
                case "Flexible":
                    {
                        deadlineAdditionalCost = 0;
                        break;
                    }
                case "x2":
                    {
                        deadlineAdditionalCost = baseCost * 0.3m;
                        break;
                    }
                case "x3":
                    {
                        deadlineAdditionalCost = baseCost * 0.6m;
                        break;
                    }
                default:
                    {
                        deadlineAdditionalCost = 0;
                        break;
                    }
            }
            return deadlineAdditionalCost;
        }
        private decimal CalculateSOWAdjustment(decimal baseCost)
        {
            decimal sowAdditionalCost;
            switch (SOWComboBox.Text)
            {
                case "Ok":
                    {
                        sowAdditionalCost = 0;
                        break;
                    }
                case "Perfect":
                    {
                        sowAdditionalCost = -baseCost * 0.1m;
                        break;
                    }
                case "Not as per example":
                    {
                        sowAdditionalCost = baseCost * 0.1m;
                        break;
                    }
                default:
                    {
                        sowAdditionalCost = 0;
                        break;
                    }
            }
            return sowAdditionalCost;
        }
        private decimal CalculateRevisionsCost(decimal baseCost)
        {
            decimal revisionsAdditionalCost = 0;
            if (MoreRevisionsRadioButton.IsChecked == true)
            {
                revisionsAdditionalCost = baseCost * 0.1m;
            }
            return revisionsAdditionalCost;
        }

        private decimal CalculateTeamLeadCost(decimal baseCost)
        {
            if (TLConsultingRadioButton.IsChecked == true)
            {
                decimal TLHours, TLRate;
                if (decimal.TryParse(TLHoursTextBox.Text, out TLHours)
                    && decimal.TryParse(TLRateTextBox.Text, out TLRate)
                    && TLHours != 0 && TLRate != 0)
                {
                    return TLHours * TLRate;
                }
                else
                {
                    MessageBox.Show("This is a number only field and it cannot be zero!");
                    return 0;
                }
            }
            else if (TLRadioButton.IsChecked == true)
            {
                if (decimal.TryParse(TLPercentage.Text, out decimal percentage))
                {
                    return baseCost * (percentage / 100m); // використовуйте m для вказівки на decimal літерал
                }
                else
                {
                    MessageBox.Show("Please enter a valid percentage.");
                    return 0;
                }
            }
            return 0;
        }
        private decimal CalculatePMCost()
        {
            if (decimal.TryParse(PMHoursTextBox.Text, out decimal pmHours) && decimal.TryParse(PMRateTextBox.Text, out decimal pmRate))
            {
                return pmHours * pmRate;
            }
            return 0;
            //else
            //{
            //    MessageBox.Show("Please enter a valid value.");
            //    return 0;
            //}
        }
        //Method to apply discount to the initial cost 
        private decimal CalculateFixedExtras()
        {
            if(decimal.TryParse(FixedExtrasTextBox.Text, out decimal fixedExtraCost))
            {
                return fixedExtraCost;
            }
            return 0;
        }
        private void RadioButton_Click(object sender, RoutedEventArgs e)
        {
            var radioButton = sender as RadioButton;
            //var radioButton = sender as RadioButton;
            try
            {
                if (radioButton != null)
                {
                    bool isButtonChecked;
                    // Спробуємо безпечно перетворити Tag на boolean
                    bool.TryParse(radioButton.Tag.ToString(), out isButtonChecked);

                    if (radioButton.IsChecked == true && isButtonChecked)
                    {
                        radioButton.IsChecked = false;
                        radioButton.Tag = false;
                    }
                    else
                    {
                        radioButton.Tag = true;
                    }
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private decimal ApplyDiscount(decimal cost)
        {
            decimal discountRate = 0;
            if (Discounts12RadioButton.IsChecked == true)
            {
                discountRate = 0.12m;
            }

            else if (Discounts24RadioButton.IsChecked == true)
            {
                discountRate = 0.24m;
            }
            return cost - (cost * discountRate);
        }
    }
}
