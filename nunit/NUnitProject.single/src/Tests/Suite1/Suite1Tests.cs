using NUnit.Framework;

namespace NUnitProject.Tests.Suite1
{
    [TestFixture]
    public class Suite1Tests
    {
        [Test]
        public void PassingTest1()
        {
            Assert.That(2 + 2, Is.EqualTo(4), "This test should pass.");
        }

        [Test]
        public void PassingTest2()
        {
            Assert.That("NUnit", Is.EqualTo("NUnit"), "This test should pass.");
        }

        [Test]
        public void FailingTest1()
        {
            Assert.Fail("This test is designed to fail.");
        }

        [Test]
        [Ignore("This test is intentionally ignored.")]
        public void IgnoredTest1()
        {
            Assert.That(1 + 1, Is.EqualTo(2));
        }
    }
}
