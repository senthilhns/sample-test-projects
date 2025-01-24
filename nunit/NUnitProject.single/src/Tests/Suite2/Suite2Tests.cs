using NUnit.Framework;

namespace NUnitProject.Tests.Suite2
{
    [TestFixture]
    public class Suite2Tests
    {
        [Test]
        public void PassingTest3()
        {
            Assert.That(10 > 5, Is.True, "This test should pass.");
        }

        [Test]
        public void PassingTest4()
        {
            Assert.That("Learning NUnit", Does.Contain("NUnit"), "This test should pass.");
        }

        [Test]
        public void FailingTest2()
        {
            Assert.Fail("This test is designed to fail.");
        }

        [Test]
        public void DependentTest()
        {
            // Simulating a dependency (no real NUnit dependency support here)
            Assert.That(true, Is.True, "Simulating a dependent test.");
        }
    }
}
