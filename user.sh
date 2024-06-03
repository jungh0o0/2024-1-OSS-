if [ "$#" -ne 1 ]; then
    echo "Usage: $0 username"
    exit 1
fi

CHECK=$1

while true; do

    if who | grep -q "^$CHECK "; then
        echo "$CHECK 로그인함!"
        exit 0
    else
        echo "$CHECK 로그인하지 않음"
    fi
    
    
    # 60초 동안 대기
    sleep 60
done