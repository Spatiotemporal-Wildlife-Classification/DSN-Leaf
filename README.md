# Distributed Scraping Network Leaf

This repository serves to provide a leaf node within the [Distributed Scraping Network (DSN)](https://spatiotemporal-wildlife-classification.github.io/Distributed-Scraping-Network/).
The DSN provides a central point of communication for the leaf node through the use of a [FastAPI](https://fastapi.tiangolo.com/).

The leaf node communicates with the central DSN to determine essential wildlife observation details, required 
to make a weather data request to the [Open-Meteo historical API](https://open-meteo.com/en/docs/historical-weather-api). 
Once the data is retrieved, the leaf node formats the collected data, and posts it back to the central DSN for collection and storage. 

In summary, the leaf node collects the weather/ meta data for each observation and transfers it to a central storage. 
This enables the creation of the {#TODO Insert link here} [Spatiotemporal Wildlife Classification's]() novel dataset, specifically
the metadata values.

## How to use
### Local Leaf
1. Ensure that the Distributed Scraping Network central element is serving the API successfully. 
    - DSN link: https://spatiotemporal-wildlife-classification.github.io/Distributed-Scraping-Network/
2. Clone a fork of this repository into the terminal using the `git clone` command
3. Navigate into the root directory using `cd DSN-Leaf`
4. Execute one of the deploy scripts 
   - `./deploy_live.sh`: Handles the docker build and container deployment. Visualizes the progress bar output. 
     - Note, this script requires the remote server to be kept open
   - `./deploy.sh`: Handles the docker build and container deployment is a detached manner with no output.
     - Note, the remote server can be closed and the script will continue running.


### Remote Leaf
1. Ensure that the Distributed Scraping Network central element is serving the API successfully. 
    - DSN link: https://spatiotemporal-wildlife-classification.github.io/Distributed-Scraping-Network/
2. Create a [Linode](https://cloud.linode.com)
    - Create an account with [Linode}(https://cloud.linode.com). They provide a fantastic cloud computing service at reasonable rates. 
    - Access your `Linodes` tab on your account
    - Select `Create Linode` in the top-right corner
    - The Linode should have the following properties:
      - The latest Ubuntu LTS (in this case Ubuntu 22.04 LTS)
      - Select a region close to yourself to speed up communications
      - Linode Plan -> Shared CPU -> Nanode 1GB (5$ per month max)
      - Provide a custom linode label
      - Provide a secure password (keep this around as you will need it shortly)
      - Click `Create Linode`
3. SSH access into the Linode
    - Open a terminal and copy the Linode's SSH key, enter this as a command
    - Enter the password corresponding to the linode
    - You are now in the terminal of the cloud computer service.
    - run `apt-get update` followed by `apt upgrade` to update the system.
4. Clone a fork of this repository into the terminal using the `git clone` command
5. Navigate into the root directory using `cd DSN-Leaf`
6. Execute one of the deploy scripts 
   - `./deploy_live.sh`: Handles the docker build and container deployment. Visualizes the progress bar output. 
     - Note, this script requires the remote server to be kept open
   - `./deploy.sh`: Handles the docker build and container deployment is a detached manner with no output.
     - Note, the remote server can be closed and the script will continue running.
