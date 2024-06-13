#!/usr/bin/env bash


curl --header 'Content-Type: application/json' \
--data '{
        "commnad": "infer",
        "text": "悟空，每个孩子都是学习的天才，天生就具备超强的学习认知能力，随时随地都在接受着各种各样的信息。"
}' \
http://localhost:8080/