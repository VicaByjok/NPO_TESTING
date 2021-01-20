using System;
using System.Threading;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using OpenQA.Selenium.Edge;

namespace SeleniumLab
{
    [TestClass]
    public class Tests
    {
        EdgeDriver edge;
        [TestMethod]
        public void TestMethod1()
        {
            edge = new EdgeDriver(@"D:\5sem\НПО\лабы\Lab6\SeleniumLab\SeleniumLab\bin\Debug\netcoreapp2.1");
            edge.Navigate().GoToUrl("https://12orsha.schools.by/");
            edge.FindElement(By.Name("q")).SendKeys("Выпускной 2018");
            edge.FindElement(By.ClassName("btn")).Click();
            Thread.Sleep(10000);
        }

        [TestMethod]
        public void TestMethod2()
        {
            edge = new EdgeDriver(@"D:\5sem\НПО\лабы\Lab6\SeleniumLab\SeleniumLab\bin\Debug\netcoreapp2.1");
            edge.Navigate().GoToUrl("https://12orsha.schools.by/m/users/visits");
            Thread.Sleep(1000);
            edge.FindElement(By.Name("start")).Clear();
            edge.FindElement(By.Name("start")).SendKeys(" 2020-09-01");
            edge.FindElement(By.Name("end")).Clear();
            edge.FindElement(By.Name("end")).SendKeys(" 2020-11-26");
            edge.FindElement(By.ClassName("button_blue")).Click();
            Thread.Sleep(10000);
        }

        [TestMethod]
        public void TestMethod3()
        {
            edge = new EdgeDriver(@"D:\5sem\НПО\лабы\Lab6\SeleniumLab\SeleniumLab\bin\Debug\netcoreapp2.1");
            edge.Navigate().GoToUrl("https://12orsha.schools.by/m/users/visits");
            Thread.Sleep(1000);
            edge.FindElement(By.Name("start")).Clear();
            edge.FindElement(By.Name("start")).SendKeys("1236365374354764575673525456");
            edge.FindElement(By.Name("end")).Clear();
            edge.FindElement(By.Name("end")).SendKeys("2456534637456353467634352647585389");
            edge.FindElement(By.ClassName("button_blue")).Click();
            Thread.Sleep(10000);
        }

        // разрушение объекта драйвера после окончание теста.
        [TestCleanup]
        public void TearDown()
        {
            edge.Quit();
        }
    }

}
