package com.app.web.formbeans;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

public class WithdrawBean {
	@NotNull(message="account id can not be null")
	private Integer accountId;
	
	@NotNull(message="ammount can not be null")
	@Min(value=100, message="min price should be more than 100")
	@Max(value=1000, message="max price should be less than 100000")
	private Double amount;
	
	public Integer getAccountId() {
		return accountId;
	}
	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}
	
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	
}