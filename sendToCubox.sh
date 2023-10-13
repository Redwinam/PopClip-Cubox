#!/bin/bash
# sendToCubox.sh

# 输入的文本作为参数 $POPCLIP_TEXT
# 我们发送这个文本到提供的API

# API 端点
API_ENDPOINT="https://cubox.pro/c/api/save/YOUR_CUBOX_API"

# 发送POST请求到API
curl --request POST \
     --url "$API_ENDPOINT" \
     --header "Content-Type: application/json" \
     --data-raw "{
        \"type\": \"memo\",
        \"content\": \"$POPCLIP_TEXT\"
     }"

# 你可能想要加入错误处理和用户反馈，比如使用通知来告诉用户是否保存成功。
