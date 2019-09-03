Pod::Spec.new do |s|
    s.name             = 'EFIconFont'
    s.version          = '0.6.0'
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
    
    s.ios.deployment_target = '8.0'
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |core|
        core.source_files = 'EFIconFont/Classes/Core/**/*'
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

    s.subspec 'ElusiveIcons' do |elusiveicons|
        elusiveicons.source_files = 'EFIconFont/Classes/ElusiveIcons/**/*'
        elusiveicons.resources = 'EFIconFont/Assets/ElusiveIcons/**/*'
        elusiveicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'FontAwesome' do |fontawesome|
        fontawesome.source_files = 'EFIconFont/Classes/FontAwesome/**/*'
        fontawesome.resources = 'EFIconFont/Assets/FontAwesome/**/*'
        fontawesome.dependency 'EFIconFont/Core'
    end

    s.subspec 'Hawcons' do |hawcons|
        hawcons.source_files = 'EFIconFont/Classes/Hawcons/**/*'
        hawcons.resources = 'EFIconFont/Assets/Hawcons/**/*'
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

    s.subspec 'MaterialIcons' do |materialicons|
        materialicons.source_files = 'EFIconFont/Classes/MaterialIcons/**/*'
        materialicons.resources = 'EFIconFont/Assets/MaterialIcons/**/*'
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

    s.subspec 'ThemifyIcons' do |themifyicons|
        themifyicons.source_files = 'EFIconFont/Classes/ThemifyIcons/**/*'
        themifyicons.resources = 'EFIconFont/Assets/ThemifyIcons/**/*'
        themifyicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'Typicons' do |typicons|
        typicons.source_files = 'EFIconFont/Classes/Typicons/**/*'
        typicons.resources = 'EFIconFont/Assets/Typicons/**/*'
        typicons.dependency 'EFIconFont/Core'
    end

    s.subspec 'Complete' do |complete|
        complete.dependency 'EFIconFont/Core'
        complete.dependency 'EFIconFont/AntDesign'
        complete.dependency 'EFIconFont/Dashicons'
        complete.dependency 'EFIconFont/ElusiveIcons'
        complete.dependency 'EFIconFont/FontAwesome'
        complete.dependency 'EFIconFont/Hawcons'
        complete.dependency 'EFIconFont/IcoMoon'
        complete.dependency 'EFIconFont/Ionicons'
        complete.dependency 'EFIconFont/MaterialIcons'
        complete.dependency 'EFIconFont/Meteocons'
        complete.dependency 'EFIconFont/MetrizeIcons'
        complete.dependency 'EFIconFont/OpenIconic'
        complete.dependency 'EFIconFont/ThemifyIcons'
        complete.dependency 'EFIconFont/Typicons'
    end
end
