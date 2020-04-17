using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _03_MonhtlyTransactions
{
    public static class Helper
    {
        public static BindableCollection<T> ToBindableCollection<T>(this IEnumerable<T> enumerable)
        {
            return new BindableCollection<T>(enumerable);
        }
    }
}
