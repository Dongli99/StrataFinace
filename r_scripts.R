account_df = read_xlsx("raw_data_100087848963_2023-08_14.xlsx", sheet = "clean_963")
account_df = rename(account_df, party = `payer/payee`)
ggplot(data=account_df, aes(x=date, y=balance, color=payer/payee)) + geom_point()