Pod::Spec.new do |s|
    s.name             = 'EFIconFont'
    s.version          = '1.2.1'
    s.summary          = 'Yet another stupid wrapper of icon font.'
    
    s.description      = <<-DESC
    An ordinary iconfont cocoapods package helps you to use iconfont more easily in your project, in Swift.
    DESC
    
    s.homepage         = 'https://github.com/EFPrefix/EFIconFont'
    s.screenshots      = 'https://github.com/EFPrefix/EFIconFont/blob/master/Assets/EFIconFont.png?raw=true'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'EyreFree' => 'eyrefree@eyrefree.org' }
    s.source           = { :git => 'https://github.com/EFPrefix/EFIconFont.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/EyreFree777'
    
    s.ios.deployment_target = '11.0'
    s.osx.deployment_target = '10.13'
    s.tvos.deployment_target = '11.0'
    s.watchos.deployment_target = '6.0'
    
    s.swift_version = '5.0'
    s.requires_arc = true

    s.ios.framework = 'UIKit'
    s.osx.framework = 'AppKit'
    s.tvos.framework = 'UIKit'
    s.watchos.framework = ['UIKit', 'WatchKit']
    
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |core|
        core.source_files = 'EFIconFont/Classes/Core/**/*'
    end

    s.subspec 'AliCloudConsole' do |alicloudconsole|
        alicloudconsole.source_files = 'EFIconFont/Classes/AliCloudConsole/**/*'
        alicloudconsole.resources = 'EFIconFont/Assets/AliCloudConsole/**/*'
        alicloudconsole.dependency 'EFIconFont/Core'
    end

    s.subspec 'AntChain' do |antchain|
        antchain.source_files = 'EFIconFont/Classes/AntChain/**/*'
        antchain.resources = 'EFIconFont/Assets/AntChain/**/*'
        antchain.dependency 'EFIconFont/Core'
    end

    s.subspec 'AntDesign' do |antdesign|
        antdesign.source_files = 'EFIconFont/Classes/AntDesign/**/*'
        antdesign.resources = 'EFIconFont/Assets/AntDesign/**/*'
        antdesign.dependency 'EFIconFont/Core'
    end

    s.subspec 'Dashicons' do |dashicons|
        dashicons.source_files = 'EFIconFont/Classes/Dashicons/**/*'
        dashicons.resources = 'EFIconFont/Assets/Dashicons/**/*'
        dashicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'Devicons' do |devicons|
        devicons.source_files = 'EFIconFont/Classes/Devicons/**/*'
        devicons.resources = 'EFIconFont/Assets/Devicons/**/*'
        devicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'ElusiveIcons' do |elusiveicons|
        elusiveicons.source_files = 'EFIconFont/Classes/ElusiveIcons/**/*'
        elusiveicons.resources = 'EFIconFont/Assets/ElusiveIcons/**/*'
        elusiveicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'EVAIcon' do |evaIcon|
        evaIcon.source_files = 'EFIconFont/Classes/EVAIcon/**/*'
        evaIcon.resources = 'EFIconFont/Assets/EVAIcon/**/*'
        evaIcon.dependency 'EFIconFont/Core'
    end

    s.subspec 'EvilIcons' do |evilicons|
        evilicons.source_files = 'EFIconFont/Classes/EvilIcons/**/*'
        evilicons.resources = 'EFIconFont/Assets/EvilIcons/**/*'
        evilicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'FontAwesomeBrands' do |fontawesomebrands|
        fontawesomebrands.source_files = 'EFIconFont/Classes/FontAwesomeBrands/**/*'
        fontawesomebrands.resources = 'EFIconFont/Assets/FontAwesomeBrands/**/*'
        fontawesomebrands.dependency 'EFIconFont/Core'
    end

    s.subspec 'FontAwesomeRegular' do |fontawesomeregular|
        fontawesomeregular.source_files = 'EFIconFont/Classes/FontAwesomeRegular/**/*'
        fontawesomeregular.resources = 'EFIconFont/Assets/FontAwesomeRegular/**/*'
        fontawesomeregular.dependency 'EFIconFont/Core'
    end

    s.subspec 'FontAwesomeSolid' do |fontawesomesolid|
        fontawesomesolid.source_files = 'EFIconFont/Classes/FontAwesomeSolid/**/*'
        fontawesomesolid.resources = 'EFIconFont/Assets/FontAwesomeSolid/**/*'
        fontawesomesolid.dependency 'EFIconFont/Core'
    end

    s.subspec 'FoundationIcons' do |foundationicons|
        foundationicons.source_files = 'EFIconFont/Classes/FoundationIcons/**/*'
        foundationicons.resources = 'EFIconFont/Assets/FoundationIcons/**/*'
        foundationicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'GenericonsNeue' do |genericonsneue|
        genericonsneue.source_files = 'EFIconFont/Classes/GenericonsNeue/**/*'
        genericonsneue.resources = 'EFIconFont/Assets/GenericonsNeue/**/*'
        genericonsneue.dependency 'EFIconFont/Core'
    end

    s.subspec 'HawconsFilled' do |hawcons|
        hawcons.source_files = 'EFIconFont/Classes/HawconsFilled/**/*'
        hawcons.resources = 'EFIconFont/Assets/HawconsFilled/**/*'
        hawcons.dependency 'EFIconFont/Core'
    end

    s.subspec 'HawconsStroke' do |hawcons|
        hawcons.source_files = 'EFIconFont/Classes/HawconsStroke/**/*'
        hawcons.resources = 'EFIconFont/Assets/HawconsStroke/**/*'
        hawcons.dependency 'EFIconFont/Core'
    end

    s.subspec 'IcoMoon' do |icomoon|
        icomoon.source_files = 'EFIconFont/Classes/IcoMoon/**/*'
        icomoon.resources = 'EFIconFont/Assets/IcoMoon/**/*'
        icomoon.dependency 'EFIconFont/Core'
    end

    s.subspec 'Ionicons' do |ionicons|
        ionicons.source_files = 'EFIconFont/Classes/Ionicons/**/*'
        ionicons.resources = 'EFIconFont/Assets/Ionicons/**/*'
        ionicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'LigatureSymbols' do |ligaturesymbols|
        ligaturesymbols.source_files = 'EFIconFont/Classes/LigatureSymbols/**/*'
        ligaturesymbols.resources = 'EFIconFont/Assets/LigatureSymbols/**/*'
        ligaturesymbols.dependency 'EFIconFont/Core'
    end

    s.subspec 'MapIcons' do |mapicons|
        mapicons.source_files = 'EFIconFont/Classes/MapIcons/**/*'
        mapicons.resources = 'EFIconFont/Assets/MapIcons/**/*'
        mapicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'MaterialIconsFilled' do |materialicons|
        materialicons.source_files = 'EFIconFont/Classes/MaterialIconsFilled/**/*'
        materialicons.resources = 'EFIconFont/Assets/MaterialIconsFilled/**/*'
        materialicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'MaterialIconsOutlined' do |materialicons|
        materialicons.source_files = 'EFIconFont/Classes/MaterialIconsOutlined/**/*'
        materialicons.resources = 'EFIconFont/Assets/MaterialIconsOutlined/**/*'
        materialicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'MaterialIconsRounded' do |materialicons|
        materialicons.source_files = 'EFIconFont/Classes/MaterialIconsRounded/**/*'
        materialicons.resources = 'EFIconFont/Assets/MaterialIconsRounded/**/*'
        materialicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'MaterialIconsSharp' do |materialicons|
        materialicons.source_files = 'EFIconFont/Classes/MaterialIconsSharp/**/*'
        materialicons.resources = 'EFIconFont/Assets/MaterialIconsSharp/**/*'
        materialicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'Meteocons' do |meteocons|
        meteocons.source_files = 'EFIconFont/Classes/Meteocons/**/*'
        meteocons.resources = 'EFIconFont/Assets/Meteocons/**/*'
        meteocons.dependency 'EFIconFont/Core'
    end

    s.subspec 'MetrizeIcons' do |metrizeicons|
        metrizeicons.source_files = 'EFIconFont/Classes/MetrizeIcons/**/*'
        metrizeicons.resources = 'EFIconFont/Assets/MetrizeIcons/**/*'
        metrizeicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'OpenIconic' do |openiconic|
        openiconic.source_files = 'EFIconFont/Classes/OpenIconic/**/*'
        openiconic.resources = 'EFIconFont/Assets/OpenIconic/**/*'
        openiconic.dependency 'EFIconFont/Core'
    end

    s.subspec 'StrawberryIcon' do |strawberryicon|
        strawberryicon.source_files = 'EFIconFont/Classes/StrawberryIcon/**/*'
        strawberryicon.resources = 'EFIconFont/Assets/StrawberryIcon/**/*'
        strawberryicon.dependency 'EFIconFont/Core'
    end

    s.subspec 'Stroke7' do |stroke7|
        stroke7.source_files = 'EFIconFont/Classes/Stroke7/**/*'
        stroke7.resources = 'EFIconFont/Assets/Stroke7/**/*'
        stroke7.dependency 'EFIconFont/Core'
    end

    s.subspec 'TaoBao' do |taobao|
        taobao.source_files = 'EFIconFont/Classes/TaoBao/**/*'
        taobao.resources = 'EFIconFont/Assets/TaoBao/**/*'
        taobao.dependency 'EFIconFont/Core'
    end

    s.subspec 'ThemifyIcons' do |themifyicons|
        themifyicons.source_files = 'EFIconFont/Classes/ThemifyIcons/**/*'
        themifyicons.resources = 'EFIconFont/Assets/ThemifyIcons/**/*'
        themifyicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'Tmall' do |tmall|
        tmall.source_files = 'EFIconFont/Classes/Tmall/**/*'
        tmall.resources = 'EFIconFont/Assets/Tmall/**/*'
        tmall.dependency 'EFIconFont/Core'
    end

    s.subspec 'Typicons' do |typicons|
        typicons.source_files = 'EFIconFont/Classes/Typicons/**/*'
        typicons.resources = 'EFIconFont/Assets/Typicons/**/*'
        typicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'VSCodeIcons' do |vscodeicons|
        vscodeicons.source_files = 'EFIconFont/Classes/VSCodeIcons/**/*'
        vscodeicons.resources = 'EFIconFont/Assets/VSCodeIcons/**/*'
        vscodeicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'WeatherIcons' do |weathericons|
        weathericons.source_files = 'EFIconFont/Classes/WeatherIcons/**/*'
        weathericons.resources = 'EFIconFont/Assets/WeatherIcons/**/*'
        weathericons.dependency 'EFIconFont/Core'
    end

    s.subspec 'Zocial' do |zocial|
        zocial.source_files = 'EFIconFont/Classes/Zocial/**/*'
        zocial.resources = 'EFIconFont/Assets/Zocial/**/*'
        zocial.dependency 'EFIconFont/Core'
    end

    s.subspec 'Complete' do |complete|
        complete.dependency 'EFIconFont/Core'
        complete.dependency 'EFIconFont/AliCloudConsole'
        complete.dependency 'EFIconFont/AntChain'
        complete.dependency 'EFIconFont/AntDesign'
        complete.dependency 'EFIconFont/Dashicons'
        complete.dependency 'EFIconFont/Devicons'
        complete.dependency 'EFIconFont/ElusiveIcons'
        complete.dependency 'EFIconFont/EVAIcon'
        complete.dependency 'EFIconFont/EvilIcons'
        complete.dependency 'EFIconFont/FontAwesomeBrands'
        complete.dependency 'EFIconFont/FontAwesomeRegular'
        complete.dependency 'EFIconFont/FontAwesomeSolid'
        complete.dependency 'EFIconFont/FoundationIcons'
        complete.dependency 'EFIconFont/GenericonsNeue'
        complete.dependency 'EFIconFont/HawconsFilled'
        complete.dependency 'EFIconFont/HawconsStroke'
        complete.dependency 'EFIconFont/IcoMoon'
        complete.dependency 'EFIconFont/Ionicons'
        complete.dependency 'EFIconFont/LigatureSymbols'
        complete.dependency 'EFIconFont/MapIcons'
        complete.dependency 'EFIconFont/MaterialIconsFilled'
        complete.dependency 'EFIconFont/MaterialIconsOutlined'
        complete.dependency 'EFIconFont/MaterialIconsRounded'
        complete.dependency 'EFIconFont/MaterialIconsSharp'
        complete.dependency 'EFIconFont/Meteocons'
        complete.dependency 'EFIconFont/MetrizeIcons'
        complete.dependency 'EFIconFont/OpenIconic'
        complete.dependency 'EFIconFont/StrawberryIcon'
        complete.dependency 'EFIconFont/Stroke7'
        complete.dependency 'EFIconFont/TaoBao'
        complete.dependency 'EFIconFont/ThemifyIcons'
        complete.dependency 'EFIconFont/Tmall'
        complete.dependency 'EFIconFont/Typicons'
        complete.dependency 'EFIconFont/VSCodeIcons'
        complete.dependency 'EFIconFont/WeatherIcons'
        complete.dependency 'EFIconFont/Zocial'
    end
end
