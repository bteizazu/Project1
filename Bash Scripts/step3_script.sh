cd ~/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Dealer_Correlation/Dealer_Analysis
cat 0310_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '05:00:00 AM' >> Dealers_working_during_loss$
cat 0310_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '08:00:00 AM' >> Dealers_working_during_loss$
cat 0310_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '02:00:00 PM' >> Dealers_working_during_loss$
cat 0310_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '08:00:00 PM' >> Dealers_working_during_loss$
cat 0310_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '11:00:00 PM' >> Dealers_working_during_loss$
cat 0312_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '05:00:00 AM' >> Dealers_working_during_loss$
cat 0312_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '08:00:00 AM' >> Dealers_working_during_loss$
cat 0312_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '02:00:00 PM' >> Dealers_working_during_loss$
cat 0312_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '08:00:00 PM' >> Dealers_working_during_loss$
cat 0312_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '11:00:00 PM' >> Dealers_working_during_loss$
cat 0315_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '05:00:00 AM' >> Dealers_working_during_loss$
cat 0315_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '08:00:00 AM' >> Dealers_working_during_loss$
cat 0315_Dealer_schedule |awk -F ' ' '{print $1, $2, $5, $6}' 0310_Dealer_schedule | grep '02:00:00 PM' >> Dealers_working_during_loss$
