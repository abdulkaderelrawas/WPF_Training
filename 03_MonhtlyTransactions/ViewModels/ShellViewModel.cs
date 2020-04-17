using Caliburn.Micro;
using System;
using System.Windows;
using _03_MonhtlyTransactions.Models;
using _03_MonhtlyTransactions.DAO;
using System.Globalization;
using System.Configuration;

namespace _03_MonhtlyTransactions.ViewModels
{
    //this is the shell view model
    public class ShellViewModel : Screen
    {
        protected override void OnActivate()
        {
            Properties.Resources.Culture = new CultureInfo(ConfigurationManager.AppSettings["Culture"]);
            Transactions = Helper.ToBindableCollection(_transactionsDAO.getTransactions());
        }

        private TransactionsDAO _transactionsDAO = new TransactionsDAO();

        private BindableCollection<TransactionsModel> _transactions = new BindableCollection<TransactionsModel>();
        private string _transactionName;
        private double _transactionAmount;
        private TransactionsModel _selectedTransaction;
        private string _transactionType;

        public BindableCollection<TransactionsModel> Transactions
        {
            get { return _transactions; }
            set
            {
                _transactions = value;
                NotifyOfPropertyChange(() => Transactions);
            }
        }
        public String TransactionName
        {
            get { return _transactionName; }
            set
            {
                _transactionName = value;
                NotifyOfPropertyChange(() => TransactionName);
            }
        }
        public double TransactionAmount
        {
            get { return _transactionAmount; }
            set
            {
                _transactionAmount = value;
                NotifyOfPropertyChange(() => TransactionAmount);
            }
        }
        public TransactionsModel SelectedTransaction
        {
            get
            {
                return _selectedTransaction;
            }
            set
            {
                _selectedTransaction = value;
                NotifyOfPropertyChange(() => SelectedTransaction);
            }
        }
        public string TransactionType
        {
            get { return _transactionType; }
            set
            {
                _transactionType = value;
                NotifyOfPropertyChange(() => TransactionType);
            }
        }

        //Insert New Transaction
        public void BtnSaveTransaction()
        {
            if (TransactionName == null || TransactionAmount == 0)
            {
                MessageBox.Show("You have to fill the transaction's name, and amount in order to save");
            }
            else
            {
                if (TransactionType.Contains("Spending"))
                {
                    _transactionsDAO.SaveTransaction(TransactionName, -TransactionAmount, TransactionType);
                }
                else
                {
                    _transactionsDAO.SaveTransaction(TransactionName, TransactionAmount, TransactionType);
                }

                Transactions = Helper.ToBindableCollection(_transactionsDAO.getTransactions());
            }
        }

        //Edit Transaction
        public void btnEditTransaction()
        {
            if (SelectedTransaction == null)
            {
                MessageBox.Show("Warning! You haven't selected a transaction to Edit");
            }
            else
            {
                _transactionName = SelectedTransaction.transactionName;
            }
        }
        public void BtnSaveEditTransaction()
        {
            if (SelectedTransaction == null)
            {
                MessageBox.Show("Warning! You have to select a transaction before editing!");
            }
            else
            {
                if (TransactionType.Contains("Spending"))
                {
                    _transactionsDAO.EditTransaction(TransactionName, SelectedTransaction.transactionName, -SelectedTransaction.transactionAmount, SelectedTransaction.transactionType);
                }
                else
                {
                    _transactionsDAO.EditTransaction(TransactionName, SelectedTransaction.transactionName, SelectedTransaction.transactionAmount, SelectedTransaction.transactionType);
                }

                Transactions = Helper.ToBindableCollection(_transactionsDAO.getTransactions());
            }
        }

        //Delete Transaction
        public void BtnDeleteTransaction()
        {
            if (SelectedTransaction == null)
            {
                MessageBox.Show("Warning! You haven't selected a transaction to Delete");
            }
            else
            {
                _transactionName = SelectedTransaction.transactionName;
            }
        }
        public void BtnSaveDeleteTransaction()
        {
            if (SelectedTransaction == null)
            {
                MessageBox.Show("Warning! You have to select a transaction before deleting!");
            }
            else
            {
                _transactionsDAO.DeleteTransaction(TransactionName);

                Transactions = Helper.ToBindableCollection(_transactionsDAO.getTransactions());
            }
        }

        //Application Window Functions
        public static void Turkish()
        {
            System.Configuration.Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

            config.AppSettings.Settings["Culture"].Value = "tr-TR";
            config.Save(ConfigurationSaveMode.Modified);

            Console.WriteLine(config.AppSettings.Settings["Culture"].Value);
            

        }
        public static void English()
        {
            System.Configuration.Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

            config.AppSettings.Settings["Culture"].Value = "en-US";
            config.Save(ConfigurationSaveMode.Modified);

            Console.WriteLine(config.AppSettings.Settings["Culture"].Value);
            
        }
        public static void CloseApplication()
        {
            Application.Current.Shutdown();
        }
        public static void MinimizeApplication()
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }
    }
}
