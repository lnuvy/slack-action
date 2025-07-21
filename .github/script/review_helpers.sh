#!/bin/bash

# 팀 멤버 정보 가져오기
get_review_member_info() {
    local review_members="$1"
    local author_github_id="$2"
    local info_key="$3"
    echo "$review_members" | jq -r --arg author_github_id "$author_github_id" '.members[] | select(.github_id == $author_github_id) | .'"$info_key"''
}