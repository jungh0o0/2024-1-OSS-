PHONEBOOK="phonebook.txt"

if [ $# -ne 2 ]; then
    echo "전화번호와 이름 두 값을 입력하세요"
    exit 1
fi

name=$1
phone_number=$2

if [[ ! $phone_number =~ ^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$ ]]; then
    echo "전화번호는 숫자와 하이픈(-)으로 입력해야 합니다. 예: 02-1234-5678"
    exit 1
fi


case ${phone_number%%-*} in
    "02") region="서울" ;;
    "031") region="경기" ;;
    "032") region="인천" ;;
    "051") region="부산" ;;
    "053") region="대구" ;;
    "010") region="개인" ;;
    *) echo "유효한 지역번호가 아닙니다. 지원되는 지역번호는 서울, 경기, 인천, 부산, 대구입니다."; exit 1 ;;
esac

if [ ! -f $PHONEBOOK ]; then
    touch $PHONEBOOK
fi

if grep -q "^$name " $PHONEBOOK; then
    existing_phone=$(grep "^$name " $PHONEBOOK | cut -d' ' -f2)
    if [ "$existing_phone" == "$phone_number" ]; then
        echo "이미 존재하는 전화번호입니다."
        exit 0
    fi
fi

# 새로운 이름과 전화번호 추가
echo "$name $phone_number $region" >> $PHONEBOOK
echo "새로운 이름과 전화번호가 추가되었습니다."
sort -o $PHONEBOOK $PHONEBOOK
exit 0
