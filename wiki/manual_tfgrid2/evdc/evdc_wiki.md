# Host a Wiki on TF Grid via eVDC

By using eVDC you can now deploy and host your own wiki on top of the ThreeFold_Grid.

![](img/evdc_wiki_11_wiki_result.png)

## Requirements

- A **github account**.
- A **public github repository** complete with folders containing your wiki codes and files. [**Click here**](https://github.com/threefoldfoundation/wiki_example) to see an example of a wiki repo that you can fork (copy to your own github).
- **Optional for custom domain**: an active domain that assigns to a particular IP that will be given to you during deployment. Depending where you purchased your domain, each domain registry has its own procedure on how to assign an IP. Click [**here**](https://www.hostmysite.com/support/cpanel/dns/domain_point/) to read a general tutorial on how to assign an IP to your domain.
- An **active eVDC** with sufficient capacity.

## Get Started

Once you're logged in to eVDC, find the `Wiki` widget in Marketplace, on your admin panel and click on `Deploy` button.

![](img/evdc_wiki_01_widget.png ':size=200')

Create a name for your new wiki. This name will be used to identify your deployment on your 'Deployed Solutions' list.

![](img/evdc_wiki_02_chatflow_name.png ':size=600')

You can choose to create a url which is part of your domain, or have one auto-generated.

Select the domain type for your wiki:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_wiki_03_chatflow_subdomain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity for your wiki.

![](img/evdc_wiki_04_chatflow_config_size.png ':size=600')

Add your website repository files to the deployment:
- Repository URL: the URL address of your blog's source codes on github.
- Branch: the main official working version of your project. Read more about github branch [here](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-branches).
- Source directory: the name of the main folder in your github repository where all your html codes, css, index.html page, and other codes that make up your blog pages live.

![](img/evdc_wiki_05a_chatflow_config_wiki.png ':size=600')

By now, all the information necessary to deploy the wiki has been provided.

![](img/evdc_wiki_06_chatflow_init.png ':size=600')

Congratulations, you just successfully hosted a wiki on the ThreeFold Grid!

![](img/evdc_wiki_07_chatflow_success.png ':size=600')

Click on the website domain to open and preview your newly hosted website.

![](img/evdc_wiki_11_wiki_result.png)

Update and complete your website in the forked template on Github. You can customize your wiki after deployment. Always remember which Github repo you are using.
