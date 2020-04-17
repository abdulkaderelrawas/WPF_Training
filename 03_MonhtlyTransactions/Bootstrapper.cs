using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using _03_MonhtlyTransactions.ViewModels;
using Caliburn.Micro;

namespace _03_MonhtlyTransactions
{
    public class Bootstrapper: BootstrapperBase
    {
        public Bootstrapper()
        {
            Properties.Resources.Culture = new CultureInfo(ConfigurationManager.AppSettings["Culture"]);
            Initialize();
        }

        protected override void OnStartup(object sender, StartupEventArgs e)
        {
            Properties.Resources.Culture = new CultureInfo(ConfigurationManager.AppSettings["Culture"]);
            DisplayRootViewFor<ShellViewModel>();
        }
    }
}
