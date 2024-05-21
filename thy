
# 获取字典的前k个最大的子集合，按value中的第1个值
def get_top_k_from_dict_value_1(origin_dict, k):
    origin_dict_len = len(origin_dict)
    n = k

    if(n > origin_dict_len):
        n = origin_dict_len

    new_data = sorted(origin_dict.items(), key=lambda item: item[1][0], reverse=True)
    new_data = new_data[:n]

    new_dict = {}
    for l in new_data:
        new_dict[l[0]] = l[1]

    return new_dict


# 对时间字典进行升序排序
def sort_time_dict(origin_dict):
    new_data = sorted(origin_dict.items(), key=lambda item: time.mktime(time.strptime(item[0], "%Y-%m-%d")), reverse=False)
    new_dict = {}
    for l in new_data:
        new_dict[l[0]] = l[1]

    return new_dict


# 转化为数字
def convert_to_number(value):
    try:
        x = int(value)
    except TypeError:
        return 0
    except ValueError:
        return 0
    except Exception as e:
        return 0
    else:
        return x

