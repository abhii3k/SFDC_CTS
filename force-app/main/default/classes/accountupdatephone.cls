/**
 * ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
 * Class Name      : accountupdatephone
 * Author          : Abhishek
 * Created Date    : Nov 7, 2026
 * Last Modified By: Abhishek
 * Last Modified On: Nov 7, 2026
 * Description     : This class implements for......
 *  
 * Change History  :
 *  Date          │   Author     │   Change
 * ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
 *  Nov 7, 2026  │ Abhishek  │ Initial version
 * ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
 */

public class accountupdatephone {

    public static void displayMessage() {
        System.debug('================================');
        System.debug('Apex Deployment Practice Started');
        System.debug('================================');

        String developerName = 'Salesforce Developer';
        Integer experience = 3;
        Boolean isActive = true;

        System.debug('Developer Name: ' + developerName);
        System.debug('Experience: ' + experience);
        System.debug('Active Status: ' + isActive);

        for (Integer i = 1; i <= 5; i++) {
            System.debug('Deployment Practice Count: ' + i);
        }

        System.debug('Deployment Practice Completed Successfully!');
    }

}