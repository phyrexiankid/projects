package ${YYAndroidPackageName};

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;

import java.util.Arrays;
import java.util.ArrayList;

import ${YYAndroidPackageName}.BillingRequest;
import ${YYAndroidPackageName}.RunnerBilling;
import com.yoyogames.runner.RunnerJNILib;

import com.android.vending.billing.IInAppBillingService;

/**
 * Wrapper class that sends a RESTORE_TRANSACTIONS message to the server.
 */
class GetSkuDetails extends BillingRequest
{
    private static final int EVENT_OTHER_SOCIAL = 70;
    String[] mProductIds; 
    IRunnerBilling.IBillingCallback mCallback;

    public GetSkuDetails(String[] productIds, IRunnerBilling.IBillingCallback callback)
    {
        mProductIds = productIds;
        mCallback = callback;
    }

    @Override
    protected void run(IInAppBillingService billingService) throws RemoteException
    {             
        ArrayList<String> skuList = new ArrayList<String>(Arrays.asList(mProductIds));
        ArrayList<String> responseList = new ArrayList<String>();

        // getSkuDetails() has a 20 item limit. Not that Google mention this in their documentation at all...
        int responseCode = RunnerBilling.BILLING_RESPONSE_RESULT_OK;
        for (int i = 0; i < skuList.size(); i += 20)
        {
            Log.i("yoyo", "BILLING: getSkuDetails() at index " + i);

            ArrayList<String> limitedSkuList = new ArrayList<String>();
            limitedSkuList.addAll(skuList.subList(i, (i + 20) > skuList.size() ? skuList.size() : i + 20));
                 
            Bundle querySkus = new Bundle();
            querySkus.putStringArrayList("ITEM_ID_LIST", limitedSkuList);
            Bundle skuDetails = billingService.getSkuDetails(RunnerBilling.API_VERSION, getPackageName(), "inapp", querySkus);

            if (!skuDetails.containsKey("DETAILS_LIST")) {

                responseCode = getResponseCodeFromBundle(skuDetails);
                if (responseCode != RunnerBilling.BILLING_RESPONSE_RESULT_OK) {
                 
                    Log.i("yoyo", "BILLING: getSkuDetails() failed at index " + i + " with response " + RunnerBilling.getResponseDesc(responseCode));                 
                }
                else {
                    Log.i("yoyo", "BILLING: getSkuDetails() returned a bundle with neither an error nor a detail list at index " + i + ".");                                     
                }
            }
            else {
                ArrayList<String> detailsList = skuDetails.getStringArrayList("DETAILS_LIST");
                responseList.addAll(detailsList);
             
                String item0 = detailsList.get(0);
             
                int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
                RunnerJNILib.DsMapAddString( dsMapIndex, "BILLING_ITEM_DETAILS", item0 );
                RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_SOCIAL);
                //Log.i("yoyo", "BILLING: BILLING_ITEM_DETAILS " + i + ": " + item0);
            }
        }
        mCallback.onComplete(responseCode, responseList);
    }
}

/*package ${YYAndroidPackageName};

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;

import java.util.Arrays;
import java.util.ArrayList;

import ${YYAndroidPackageName}.BillingRequest;
import ${YYAndroidPackageName}.RunnerBilling;

import com.android.vending.billing.IInAppBillingService;


 * Wrapper class that sends a RESTORE_TRANSACTIONS message to the server.
 
class GetSkuDetails extends BillingRequest
{
	String[] mProductIds;	
	IRunnerBilling.IBillingCallback mCallback;

    public GetSkuDetails(String[] productIds, IRunnerBilling.IBillingCallback callback) 
    {
		mProductIds = productIds;
		mCallback = callback;
    }

    @Override
    protected void run(IInAppBillingService billingService) throws RemoteException 
    {				
        ArrayList<String> skuList = new ArrayList<String>(Arrays.asList(mProductIds));
		ArrayList<String> responseList = new ArrayList<String>();

		// getSkuDetails() has a 20 item limit. Not that Google mention this in their documentation at all...
		int responseCode = RunnerBilling.BILLING_RESPONSE_RESULT_OK;
        for (int i = 0; i < skuList.size(); i += 20)
		{
			Log.i("yoyo", "BILLING: getSkuDetails() at index " + i);

            ArrayList<String> limitedSkuList = new ArrayList<String>();
            limitedSkuList.addAll(skuList.subList(i, (i + 20) > skuList.size() ? skuList.size() : i + 20));
					
			Bundle querySkus = new Bundle();
            querySkus.putStringArrayList("ITEM_ID_LIST", limitedSkuList);
            Bundle skuDetails = billingService.getSkuDetails(RunnerBilling.API_VERSION, getPackageName(), "inapp", querySkus);

            if (!skuDetails.containsKey("DETAILS_LIST")) {

            	responseCode = getResponseCodeFromBundle(skuDetails);
            	if (responseCode != RunnerBilling.BILLING_RESPONSE_RESULT_OK) {
					
					Log.i("yoyo", "BILLING: getSkuDetails() failed at index " + i + " with response " + RunnerBilling.getResponseDesc(responseCode));					
            	}
            	else {
					Log.i("yoyo", "BILLING: getSkuDetails() returned a bundle with neither an error nor a detail list at index " + i + ".");										
            	}
            }
			else {
				ArrayList<String> detailsList = skuDetails.getStringArrayList("DETAILS_LIST");
            	responseList.addAll(detailsList);
			}
        }
		mCallback.onComplete(responseCode, responseList);
    }
}
*/
