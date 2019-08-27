import { Selector, t } from 'testcafe';
import DashboardPage from './dashboard_page';

const dashboardPage = new DashboardPage();


export default class SLALSLAL {
    constructor() {
        this.selectCompanyDropDown = Selector('.SelectCurrentSelection .SelectCurrentSelection-controller').child('span').withText('Select a company');
        this.portfolioInput = Selector('.InputText').withAttribute('placeholder', 'Portfolio');
        this.portfolioOptionSelected = Selector('.SelectPopup .SelectOptions .SelectOption .SelectOption-link');
        this.LLAAL = Selector('.TabButton').child('span');
        this.seriesDropDown = Selector('.SelectCurrentSelection-controller').child('span').withText('Select series for this holding...');
        this.inputAcquisitionDate = Selector('.InputText').withAttribute('name', 'date');
        this.numberSharesInput = Selector('.InputText').withAttribute('name', 'quantity');
        this.addHoldingButton = Selector('.btn.Button.Button--default.Button--primary').child('span').withText('Add Holding');
    };

    async createNewHolding(holdingData) {
        await dashboardPage.goToCreateHoldingForm();
        await this.selectCompany(holdingData.companyName);
        await this.selectPortfolio(holdingData.portfolioName);
        await t.click(Selector(this.typeInvestmentButton).withText(holdingData.typeInvestment));
        await this.selectSeries(holdingData.series);
        await t
            .typeText(this.inputAcquisitionDate, holdingData.acquisitionDate, { replace: false })
            .typeText(this.investmentAmountInput, holdingData.amountInput)
            .typeText(this.numberSharesInput, holdingData.sharesInput)
            .click(this.addHoldingButton);
    };

    async selectCompany(companyName) {
        await t
            .click(this.selectCompanyDropDown)
            .typeText(this.companyInput, companyName)
            .click(Selector(this.amplitudeOptionSelected).withExactText(companyName))
    };

    async selectPortfolio(portfolioName) {
        await t
            .click(this.selectPortfolioDropDown)
            .typeText(this.portfolioInput, portfolioName)
            .click(Selector(this.portfolioOptionSelected).withExactText(portfolioName));
    }

    async selectSeries(series) {
        await t
            .click(this.seriesDropDown)
            .click(Selector(this.seriesOptionSelected).withText(series));
    };

};