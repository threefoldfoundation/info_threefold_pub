# Deploy a Cryptpad instance

[Cryptpad](https://cryptpad.fr/) is a private-by-design office tools alternative. It has most of the crucial functionalities you would be using in Google Docs and Microsoft Office.

Content stored on CryptPad is fully encrypted, which means no one can access the documents without shared permissions. Encryption happens in the browser that is used to access the "pads" – and therefore the central storage facility used does not see un-encrypted data and only sees encrypted data passing by.

## Get Started

When logged in to eVDC, find the `Cryptpad` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/evdc_marketplace_cryptpad_widget.png)

Create a name for your Cryptpad instance. This name will be used to identify your deployment on your `Deployed Solutions` list.

![](img/evdc_cryptpad_01_name.png ':size=600')

You can choose to create a URL which is part of your domain, or have one auto-generated.

Select the domain type for your Cryptpad:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_cryptpad_02_domain.png ':size=600') 

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power, memory and storage capacity for your documents. 

![](img/evdc_cryptpad_03_flavour.png ':size=600')
![](img/evdc_cryptpad_04_storage.png ':size=600')

The URL that gives access to your Cryptpad instance can be found on the next screen, or in the deployed solutions overview.

![](img/evdc_cryptpad_05_success.png ':size=600')

### Login using ThreeFold Connect App

You can login with your e-mail as well as with the ThreeFold Connect App that comes with a secure 2-Step authentication. 

![](img/evdc_cryptpad_06_url.png)

Click on `Threefold Connect`, fill in your ThreeFold/3Bot ID, then switch to your mobile device and tap the corresponding emoji on the Threefold Connect App.

![](img/evdc_tfc_login.png ':size=400')
![](img/evdc_tfc_sso.png ':size=400')

The URL that provides access to it can be found on the next screen, or in the `deployed solutions` overview. 

Now all you have Cryptpad instance running. You can upload your videos and invite other to joins your instance. 

![](img/evdc_cryptpad_09_runs.png)
