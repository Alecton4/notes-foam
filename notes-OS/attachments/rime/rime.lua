-- select_character_processor: 以词定字
-- 详见 `lua/select_character.lua`

-- 需要以词定字插件打开第5行注释
-- select_character_processor = require("select_character")

function datetime_translator(input, seg)
    if (input == "date") then
        --- Candidate(type, start, end, text, comment)
        -- yield(Candidate("date", seg.start, seg._end, os.date("%m%d"), " ")) --0204
        yield(Candidate("date", seg.start, seg._end, os.date("%m-%d"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%m/%d"), " "))  --02/04
        -- yield(Candidate("date", seg.start, seg._end, os.date("%Y%m%d"), " ")) --20200204
        yield(Candidate("date", seg.start, seg._end, os.date("%d-%m-%Y"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y/%m/%d"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), ""))
    end
    if (input == "time") then
        --- Candidate(type, start, end, text, comment)
        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M"), ""))
        yield(Candidate("time", seg.start, seg._end, os.date("%H:%M:%S"), ""))
        yield(Candidate("time", seg.start, seg._end, os.date("%Y/%m/%d %H:%M:%S"), " "))
        yield(Candidate("time", seg.start, seg._end, os.date("%Y年%m月%d日%H时%M分%S秒"), ""))
    end

    -- @JiandanDream
    -- https://github.com/KyleBing/rime-wubi86-jidian/issues/54

    if (input == "week") then
        local weakTab = {'日', '一', '二', '三', '四', '五', '六'}
        yield(Candidate("week", seg.start, seg._end, "周"..weakTab[tonumber(os.date("%w")+1)], ""))
        yield(Candidate("week", seg.start, seg._end, "星期"..weakTab[tonumber(os.date("%w")+1)], ""))
    end
end

--- 过滤器：单字在先
function single_char_first_filter(input)
    local l = {}
    for cand in input:iter() do
        if (utf8.len(cand.text) == 1) then
            yield(cand)
        else
            table.insert(l, cand)
        end
    end
    for cand in ipairs(l) do
        yield(cand)
    end
end
