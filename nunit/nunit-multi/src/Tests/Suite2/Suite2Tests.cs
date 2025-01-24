using NUnit.Framework;

namespace nunit_multi.Tests.Suite2
{
    [TestFixture]
    public class Suite2Tests
    {
        [Test]
        [Category("Suite2")]
        public void Test1()
        {
            Assert.Pass("Suite2 - Test1 passed.");
        }

        [Test]
        [Category("Suite2")]
        public void Test2()
        {
            Assert.Pass("Suite2 - Test2 passed.");
        }

        [Test]
        [Category("Suite2")]
        [Ignore("This test is ignored for demonstration.")]
        public void IgnoredTest()
        {
            Assert.Pass("Suite2 - Ignored test.");
        }
    }
}

