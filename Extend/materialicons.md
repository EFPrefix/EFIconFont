# material-design-icons

## 1. 获取数据

找到 `iconfont` 目录下的 `codepoints.txt` 和 `MaterialIcons-Regular.ttf`。

## 2. 生成代码

```javascript
function camelCase(text, separator) {
    var arr = text.split(separator);
    for(var i = 1; i < arr.length; i++) {
        var s = arr[i].slice(0, 1).toUpperCase(); 
        var h = arr[i].slice(1);
        arr[i] = s + h;
    }
    return arr.join('');
};

var string = document.getElementsByTagName('pre')[0].innerText;
var lines = string.split('\n');
var result = "";
for (var line in lines) {
    var values = lines[line].split(' ');
    var name = values[0];
    name = camelCase(name, ' ');
    name = camelCase(name, '-');
    name = camelCase(name, '_');
    var code = values[1];
    result = result + "case " + name + " = " + "\"\\u{" + code + "}\"" + "\n";
}
console.log(result);
```

## 3. 最后

本教程思路仅供学习交流，大家在使用的同时务必注意版权问题，未标明免费商业使用的还请联系对应创作者，否则由此引发的后果将由您自己承担。

## 4. 后续

我发现官方 GitHub 的项目里提供的资源不如官网上的全，所以我从官网重新爬了一遍。

首先打开官网，在 Chrome 的 console 中执行以下代码爬取所有 icon 的名称：

```javascript
var items = document.getElementsByClassName('material-icons icon-image-preview')
var result = ""
for(let i = 0, len = items.length; i < len; i++) {
    var name = items[i].innerHTML
    result = result + '\'' + name + '\'' + ",\n"
}
console.log(result)
```

得到如下结果，我爬的时候（2019 年 09 月 23 日）一共有 1057 个：

```
'3d_rotation',
'accessibility',
'accessibility_new',
'accessible',
...
'star',
'star_border',
'star_half',
'toggle_off',
'toggle_on',
```

然后大概看了下，对应资源的下载地址大概是这个样子的（其实有 5 种样式，这里以 filled 的举例）：

```
https://fonts.gstatic.com/s/i/materialicons/3d_rotation/v1/24px.svg?download=true&filename=3d_rotation.svg
```

然后拼了下载链接打算用迅雷批量下载：

```
https://fonts.gstatic.com/s/i/materialicons/3d_rotation/v1/24px.svg?download=true&filename=3d_rotation.svg
https://fonts.gstatic.com/s/i/materialicons/accessibility/v1/24px.svg?download=true&filename=accessibility.svg
https://fonts.gstatic.com/s/i/materialicons/accessibility_new/v1/24px.svg?download=true&filename=accessibility_new.svg
https://fonts.gstatic.com/s/i/materialicons/accessible/v1/24px.svg?download=true&filename=accessible.svg
...
https://fonts.gstatic.com/s/i/materialicons/star/v1/24px.svg?download=true&filename=star.svg
https://fonts.gstatic.com/s/i/materialicons/star_border/v1/24px.svg?download=true&filename=star_border.svg
https://fonts.gstatic.com/s/i/materialicons/star_half/v1/24px.svg?download=true&filename=star_half.svg
https://fonts.gstatic.com/s/i/materialicons/toggle_off/v1/24px.svg?download=true&filename=toggle_off.svg
https://fonts.gstatic.com/s/i/materialicons/toggle_on/v1/24px.svg?download=true&filename=toggle_on.svg
```

下了一批之后发现他们的文件名，都是 `24px.svg`，emmmmmmmn，此时我的下载目录已经出现了一堆 `24px (666).svg` 这样的文件...场面一度十分尴尬，尝试解决迅雷批量重命名的问题兜兜转转了 1 个小时没搞定，最后还是换了思路，不用迅雷了。

HTML `a` 标签的 `download` 属性可以在被点击下载的时候指定文件名，但是这个属性不支持跨域。所以我们打开一个 `https://fonts.gstatic.com/` 这样的 404 页面，然后执行以下代码即可，那个 items 大数组用上一步爬取的正好：

```javascript
function downloadAndRename(url, filename) {
    var downloadLink = document.createElement("a");
    downloadLink.href = url;
    downloadLink.download = filename;
    document.body.appendChild(downloadLink);
    downloadLink.click();
    document.body.removeChild(downloadLink);
}

var items = ['3d_rotation',
    'accessibility',
    'accessibility_new',
    'accessible',
    'accessible_forward',
    //...
    'star',
    'star_border',
    'star_half',
    'toggle_off',
    'toggle_on'
]

function nextItem(index) {
    if(index >= items.length){
        console.log('Done')
    } else {
        var name = items[index];
        var url = "https://fonts.gstatic.com/s/i/";
        url += "materialicons";//这里对应 5 种样式，注意需要哪一种自行解除对应注释
        //url += "materialiconsoutlined";
        //url += "materialiconsround";
        //url += "materialiconstwotone";
        //url += "materialiconssharp";
        url = url + "/" + name + "/v1/24px.svg?download=true";
        downloadAndRename(url, name);
        console.log(index);

        setTimeout(function(){
        	nextItem(index + 1);
     	}, 300);
    }
}

nextItem(0);
```

下载过程有概率失败，可以尝试通过重试和增大 `setTimeout` 的时延来改善，反正我没下到 1057 个就全删了重试一下...

下完了丢到 iconfont.cn 导出 iconfont.ttf，官网一共 5 种样式，但因为导出 .ttf 不支持多色，所以 `materialiconstwotone` 没有上传，本次得到 4*1057 个图标，完结撒花。
