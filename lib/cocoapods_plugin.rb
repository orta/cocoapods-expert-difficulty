require 'cocoapods'

module CocoaPodsExpert

  Pod::HooksManager.register('cocoapods-expert-difficulty', :pre_install) do |context, _|
    Pod::UI.titled_section 'Supporting all platforms in CocoaPods' do
    end
  end

end

module Pod
  class Specification
    alias_method :tvos_supported_platform_names, :supported_platform_names

    def supported_platform_names
      # if there's no Podfile config do default
      return tvos_supported_platform_names if validates_for_expert

      # Otherwise return all platforms for all pods
      names = PLATFORMS
      names.map { |name| Platform.new(name, deployment_target(name)) }
    end

    def validates_for_keys
      podfile = Pod::Config.instance.podfile
      podfile && podfile.plugins && !podfile.plugins['cocoapods-expert-difficulty'].nil?
    end

  end
end
