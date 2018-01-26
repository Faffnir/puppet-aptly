# aptly_get_init.rb
Facter.add(:aptly_get_init) do
  setcode do
    Facter::Util::Resolution.exec('readlink /proc/1/exe')
  end
end
