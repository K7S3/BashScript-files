#!bin/bash
read month_sal
annual_sal=$(( $month_sal * 12 ))
if (( "$annual_sal" > 300000 ))
then
tax=$(echo 30*$annual_sal/100|bc -l)
printf "TAX PAYMENT REQUIRED: %.4f\n" $tax
else
echo "NO TAX PAYMENT REQUIRED"
fi

