

using NUnit.Framework;

namespace nunit_multi.Tests.Suite1
{
    [TestFixture]
    public class Suite1Tests
    {
        [Test]
        [Category("Suite1")]
        public void Test1()
        {
            Assert.Pass("Suite1 - Test1 passed.");
        }

        [Test]
        [Category("Suite1")]
        public void Test2()
        {
            Assert.Pass("Suite1 - Test2 passed.");
        }

        [Test]
        [Category("Suite1")]
        public void FailingTest()
        {
            Assert.Fail("Suite1 - Failing test.");
        }
    }
}

