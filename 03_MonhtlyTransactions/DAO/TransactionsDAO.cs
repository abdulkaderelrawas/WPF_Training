using _03_MonhtlyTransactions.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Xml.Serialization;
using System.Xml.Linq;

namespace _03_MonhtlyTransactions.DAO
{
    public class TransactionsDAO
    {
        XmlSerializer xs = new XmlSerializer(typeof(List<TransactionsModel>));
        List<TransactionsModel> ls = new List<TransactionsModel>();

        TransactionsModel tm = new TransactionsModel();
        
        //Retrieve all Transactions
        public List<TransactionsModel> getTransactions()
        {
            try
            {
                FileStream fs = new FileStream(Directory.GetCurrentDirectory() + "/Transactions.Xml", FileMode.Open, FileAccess.Read);
                var result = ((List<TransactionsModel>)xs.Deserialize(fs)).ToList();
                fs.Close();
                return result;
            }
            catch(Exception e)
            {
                Console.WriteLine(e);
            }
            return ls;
        }
        
        //Insert Transaction
        public void SaveTransaction(string transaction_name, double transaction_amount, string transaction_type)
        {
            tm.transactionName = transaction_name; tm.transactionType = transaction_type; tm.transactionAmount = transaction_amount;

            if (!(File.Exists(Directory.GetCurrentDirectory() + "/Transactions.Xml")))
            {
                XDocument xmlDocument = new XDocument(
                    new XDeclaration("1.0", "utf-8", "yes"),
                    new XElement("ArrayOfTransactionsModel",
                            new XElement("TransactionsModel",
                                  new XElement("transactionName", tm.transactionName),
                                  new XElement("transactionAmount", tm.transactionAmount),
                                  new XElement("transactionType", tm.transactionType)
                            )
                    )
                    
                );

                xmlDocument.Save(Directory.GetCurrentDirectory() + "/Transactions.Xml");
            }
            else
            {
                XDocument xmlDocument = XDocument.Load(Directory.GetCurrentDirectory() + "/Transactions.Xml");
                xmlDocument.Element("ArrayOfTransactionsModel").Add(new XElement("TransactionsModel",
                                                                        new XElement("transactionName", tm.transactionName),
                                                                        new XElement("transactionAmount", tm.transactionAmount),
                                                                        new XElement("transactionType", tm.transactionType)
                                                                        )
                );
                xmlDocument.Save(Directory.GetCurrentDirectory() + "/Transactions.Xml");
            }

        }

        //Edit Transaction
        public void EditTransaction(string transaction_name, string new_transaction_name, double transaction_amount, string transaction_type)
        {
            XDocument xmlDocument = XDocument.Load(Directory.GetCurrentDirectory() + "/Transactions.Xml");
            xmlDocument.Element("ArrayOfTransactionsModel")
                .Elements("TransactionsModel")
                .Where(x => x.Element("transactionName").Value == transaction_name).FirstOrDefault()
                .SetElementValue("transactionAmount", transaction_amount);

            xmlDocument.Element("ArrayOfTransactionsModel")
                .Elements("TransactionsModel")
                .Where(x => x.Element("transactionName").Value == transaction_name).FirstOrDefault()
                .SetElementValue("transactionType", transaction_type);

            xmlDocument.Element("ArrayOfTransactionsModel")
                .Elements("TransactionsModel")
                .Where(x => x.Element("transactionName").Value == transaction_name).FirstOrDefault()
                .SetElementValue("transactionName", new_transaction_name);

            xmlDocument.Save(Directory.GetCurrentDirectory() + "/Transactions.Xml");
        }

        //Delete Transaction
        public void DeleteTransaction(string transaction_name)
        {
            XDocument xmlDocument = XDocument.Load(Directory.GetCurrentDirectory() + "/Transactions.Xml");

            xmlDocument.Root.Elements().Where(x => x.Element("transactionName").Value == transaction_name).Remove();

            xmlDocument.Save(Directory.GetCurrentDirectory() + "/Transactions.Xml");
        }
    }
}
