using Insourcia.Psychotherapy.Bll;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Insourcia.Psychotherapy.Model;
using System.Linq.Expressions;
using Insourcia.WebControls.MvcPaging;

namespace BLLTests
{
    
    
    /// <summary>
    ///这是 RightsManagerTest 的测试类，旨在
    ///包含所有 RightsManagerTest 单元测试
    ///</summary>
    [TestClass()]
    public class RightsManagerTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，上下文提供
        ///有关当前测试运行及其功能的信息。
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region 附加测试特性
        // 
        //编写测试时，还可使用以下特性:
        //
        //使用 ClassInitialize 在运行类中的第一个测试前先运行代码
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //使用 ClassCleanup 在运行完类中的所有测试后再运行代码
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //使用 TestInitialize 在运行每个测试前先运行代码
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //使用 TestCleanup 在运行完每个测试后运行代码
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///GetRightsListByGroup 的测试
        ///</summary>
        [TestMethod()]
        public void GetRightsListByGroupTest()
        {
            RightsManager target = new RightsManager(); // TODO: 初始化为适当的值
            int pageIndex = 0; // TODO: 初始化为适当的值
            int pageSize = 0; // TODO: 初始化为适当的值
            int gpID = 0; // TODO: 初始化为适当的值
            Expression<Func<SystemFunction, bool>> expr = null; // TODO: 初始化为适当的值
            IPagedList<SystemFunction> expected = null; // TODO: 初始化为适当的值
            IPagedList<SystemFunction> actual;
            actual = target.GetRightsListByGroup(pageIndex, pageSize, gpID, expr);
            Assert.AreEqual(expected, actual);
            //Assert.Inconclusive("验证此测试方法的正确性。");
        }
    }
}
