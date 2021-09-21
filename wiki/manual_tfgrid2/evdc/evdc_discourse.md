# Deploy a Discourse instance

[Discourse](https://www.discourse.org/) is a from-scratch reboot, an attempt to reimagine what a modern Internet discussion forum should be today, in a world of ubiquitous smartphones, tablets, Facebook, and Twitter.

It is a 100% open source discussion platform that comes with a mailing list, discussion forum, long-form chat room, and more!

## Get Started

When logged in to eVDC, find the `Discourse` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/evdc_marketplace_discourse_widget.png)

Create a name for your Discourse. This name will be used to identify your deployment on your `Deployed Solutions` list.

![](img/evdc_discourse_01_name.png ':size=600')

You can choose to create a url which is part of your domain, or have one auto-generated. 

Select the domain type for your Discourse:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_discourse_02_domain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity for your Discourse instance.

![](img/evdc_discourse_03_flavour.png ':size=600')

Discourse comes with a mysql database that can be accessed by creating a username and password. 

![](img/evdc_discourse_04_configuration.png ':size=600')

Finally, to run your Discourse instance, you'll have to add an e-mail service.

![](img/evdc_discourse_05_mailsetup.png ':size=600')

By now, all the information necessary to deploy your Discourse instance has been provided.

![](img/evdc_discourse_06_success.png)

The URL that provides access to it can be found on the next screen, or in the deployed solutions overview. 

Now all you have to do is configure your Discourse instance and get started. 