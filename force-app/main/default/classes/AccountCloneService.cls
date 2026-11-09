
public with sharing class AccountCloneService {

    public static Id cloneAccount(Id accountId) {

        // Get existing Account
        Account existingAccount = [
            SELECT Id, Name, Phone,
                   BillingStreet, BillingCity,
                   BillingState, BillingPostalCode,
                   BillingCountry
            FROM Account
            WHERE Id = :accountId
            LIMIT 1
        ];

        // Clone existing Account
        Account newAccount = existingAccount.clone(
            false, false, false, false
        );

        // Change Account Name
        newAccount.Name = existingAccount.Name + ' - Copy';

        // Insert new Account
        insert newAccount;

        return newAccount.Id;
    }
}
