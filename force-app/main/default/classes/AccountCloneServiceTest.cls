
@IsTest
private class AccountCloneServiceTest {

    @IsTest
    static void testCloneAccount() {

        String uniqueSuffix =
            String.valueOf(DateTime.now().getTime());

        Account original = new Account(
            Name = 'UT Account ' + uniqueSuffix,
            Phone = uniqueSuffix,
            BillingCity = 'Pune'
        );

        insert original;
// abhsihsesdxgb
        Test.startTest();

        Id clonedAccountId =
            AccountCloneService.cloneAccount(original.Id);

        Test.stopTest();

        Account cloned = [
            SELECT Id, Name, Phone, BillingCity
            FROM Account
            WHERE Id = :clonedAccountId
        ];

        System.assertNotEquals(original.Id, cloned.Id);

        System.assertEquals(
            original.Name + ' - Copy',
            cloned.Name
        );

        System.assertEquals(original.Phone, cloned.Phone);

        System.assertEquals(original.BillingCity, cloned.BillingCity);
    }
}
