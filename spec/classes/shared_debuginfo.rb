require 'spec_helper'

shared_examples :epel_debuginfo do
  it do
    is_expected.to contain_yumrepo('epel-debuginfo').with(
      proxy:          'absent',
      failovermethod: 'priority',
      enabled:        '0',
      gpgcheck:       '1',
      repo_gpgcheck:  '0'
    )
  end
end

shared_examples_for :epel_debuginfo_7 do
  include_context :epel_debuginfo

  it do
    is_expected.to contain_yumrepo('epel-debuginfo').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7',
      descr:      'Extra Packages for Enterprise Linux 7 - $basearch - Debug'
    )
  end
end

shared_examples_for :epel_debuginfo_6 do
  include_context :epel_debuginfo

  it do
    is_expected.to contain_yumrepo('epel-debuginfo').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/metalink?repo=epel-debug-6&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
      descr:      'Extra Packages for Enterprise Linux 6 - $basearch - Debug'
    )
  end
end

shared_examples_for :epel_debuginfo_5 do
  include_context :epel_debuginfo

  it do
    is_expected.to contain_yumrepo('epel-debuginfo').with(
      mirrorlist: 'https://mirrors.fedoraproject.org/mirrorlist?repo=epel-debug-5&arch=$basearch',
      gpgkey:     'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-5',
      descr:      'Extra Packages for Enterprise Linux 5 - $basearch - Debug'
    )
  end
end
