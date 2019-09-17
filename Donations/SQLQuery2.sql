CREATE DATABASE donationDB;
GO


CREATE TABLE dbo.Donations
(DonationID int PRIMARY KEY NOT NULL, DonationAmout float NOT NULL, DonationPaid int NOT NULL)
GO

CREATE TABLE dbo.Donor
(DonorID int  NOT NULL, DonorName varchar(100) NOT NULL, DonorSurname varchar(100),DonorEmail varchar(100) NOT NULL,
DonorAddress int  NOT NULL, DonorCity varchar(100) NOT NULL,  DonorProvince varchar(100) NOT NULL , PRIMARY KEY (DonorID )
);

GO

CREATE TABLE dbo.City
(CityID int PRIMARY KEY NOT NULL,CityDescription Varchar(100) NOT NULL )
GO

CREATE TABLE dbo.Province
(ProvinceID int PRIMARY KEY NOT NULL,StatusDescription Varchar(100) NOT NULL )
GO

CREATE TABLE dbo.Login
(LoginID int PRIMARY KEY NOT NULL, LoginUsername varchar NOT NULL, LoginPassword int NOT NULL)
GO

CREATE TABLE dbo.Status
(StatusID int PRIMARY KEY NOT NULL, StatusDescription Varchar(100) NOT NULL)
GO

CREATE TABLE dbo.Organisation
(OrganisationID int PRIMARY KEY NOT NULL, OrganisationName varchar(100) NOT NULL,
OrgarnisationAddress varchar(100) NOT NULL, OrganisationCity varchar(100) NOT NULL, 
OrganisationProvince varchar(100) NOT NULL  )
GO
CREATE TABLE dbo.Payment
(PaymentID int PRIMARY KEY NOT NULL, PaymentAmout float NOT NULL, PaymentDate int NOT NULL,
PaymentMethod int NOT NULL,
PaymentRecipient varchar(100) NOT NULL)
GO
CREATE TABLE dbo.Campaign
(CampaignID int PRIMARY KEY NOT NULL, CampaignDescription  varchar(100) NOT NULL, CampaignStatus varchar(100) NOT NULL)
GO

CREATE TABLE dbo.CampaignDonation
(DonationID int PRIMARY KEY NOT NULL, CampaignID  int NOT NULL)
GO

CREATE TABLE dbo.DonorDonation
(DonationID int PRIMARY KEY NOT NULL, DonorID int  NOT NULL)
GO
CREATE TABLE dbo.PaymentDonations
(DonationID int PRIMARY KEY NOT NULL, PaymentID int  NOT NULL)
GO

CREATE TABLE dbo.CampaignOrganisation
(OrganisationID int PRIMARY KEY NOT NULL, CampaignID int  NOT NULL)
GO
CREATE TABLE dbo.PaymentMethod
(PayementID int PRIMARY KEY NOT NULL,Description  varchar(100)  NOT NULL)
GO
CREATE TABLE dbo.OrganisationCity
(OrganisationID int PRIMARY KEY NOT NULL, CityID int NOT NULL)
GO






